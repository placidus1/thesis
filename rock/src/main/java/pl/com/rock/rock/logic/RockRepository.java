package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;


@Service
class RockRepository {
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
 }

