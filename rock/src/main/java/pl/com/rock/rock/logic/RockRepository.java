package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import pl.com.rock.rock.domain.RouteDetailData;
import pl.com.rock.rock.domain.RoutePointData;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service
public class RockRepository {
    private static final Logger log = (Logger) LoggerFactory.getLogger(RockRepository.class);

     private JdbcTemplate jdbcTemplate;


     RockRepository(JdbcTemplate jdbcTemplate) {
         this.jdbcTemplate = jdbcTemplate;
     }
     
    List<Map<String, Object>> findRockWithSectorsWithRoutes(Long rockId, Long sectorId, Long routeId) {
        String query = "SELECT    c.id as rock_id, c.name as rock_name, o.id as sector_id ,  o.name as sector_name,  r.id as route_id, r.name as route_name, description, difficulty_level " +
                "FROM Rock as c  JOIN Sector as o on c.id = o.rock_id  " +
                "join Route as r on o.id = r.sector_id " +
                "where 1=1 " ;
                 if(rockId!=null && rockId.longValue()!=-1) query +=" and c.id ="+rockId +" ";
                 if(sectorId!=null && sectorId.longValue()!=-1) query +="and r.sector_id ="+sectorId +" ";
                 if(routeId!=null && routeId.longValue()!=-1) query +="and r.id ="+routeId +" ";
        log.trace(query);
        System.out.println(query);

        return jdbcTemplate.queryForList(query);
    }

    RouteDetailData getRouteDetail(Long routeId){
         String query = "SELECT  * " +
                 "from Route " +
                 "where id= ?";
        log.trace(query);
        //zmienic sql zapytanie

        try {
            return jdbcTemplate.queryForObject(query, new Object[]{routeId},
                    (rs, rowNum) -> {
                        RouteDetailData data = new RouteDetailData(
                                rs.getLong("id"),
                                rs.getString("name"),
                                rs.getString("description"),
                                rs.getString("difficulty_level"),
                                rs.getString("image_name"),
                                getRoutePoints(routeId)
//                                rs.getString("rock_name"),
//                                rs.getString("sector_name")
                        );
                        return data;
                    });
        } catch (EmptyResultDataAccessException ex) {
            return null;

        }
    }
    List<RoutePointData> getRoutePoints(Long routeId){
         String query = "SELECT  *\n" +
                 "from Route_point\n" +
                 "where route_id= "+ routeId;

        log.trace(query);
        List<Map<String, Object>> rows =  jdbcTemplate.queryForList(query);
        List<RoutePointData> result = new ArrayList<>();
        for(Map<String, Object> record : rows){
            result.add(new RoutePointData(Long.valueOf(String.valueOf(record.get("id"))), Long.valueOf(String.valueOf(record.get("route_id"))),Integer.valueOf(String.valueOf(record.get("x_percent"))),Integer.valueOf(String.valueOf(record.get("y_percent"))), Integer.valueOf(String.valueOf(record.get("order_point")))));
        }

         return result;
    }


 }

