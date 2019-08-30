package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import pl.com.rock.rock.domain.RockData;
import pl.com.rock.rock.domain.RouteData;
import pl.com.rock.rock.domain.SectorData;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RockService {
    private RockRepository rockRepository;
    private static final Logger log = (Logger) LoggerFactory.getLogger(RockService.class);

    public RockService(RockRepository rockRepository) {
        this.rockRepository = rockRepository;
    }


    public List<RockData> findRockWithSectorsWithRoutes(Long rockId, Long sectorId, Long routeId){
        List<RockData> rockList = new ArrayList<>();
        List<SectorData> sectorList = new ArrayList<>();
        List<RouteData> routeList = new ArrayList<>();

        List<Map<String, Object>> result = rockRepository.findRockWithSectorsWithRoutes(rockId, sectorId, routeId);
        Map<Long,Map<Long, List<RouteData>>>  rockMap = new HashMap<>();


        for(Map record : result){

            Map <Long, List<RouteData>> sectorMap = new HashMap<>();
            List<RouteData> routes = new ArrayList<>();
            RouteData route = new RouteData(Long.valueOf(String.valueOf(record.get("route_id"))),(String) record.get("route_name"), (String) record.get("difficulty_level"), (String) record.get("description")) ;
            routes.add(route);
            sectorMap.put(Long.valueOf(String.valueOf(record.get("sector_id"))),routes );
            rockMap.put(Long.valueOf(String.valueOf(record.get("rock_id"))), sectorMap);

        }

        for(Map.Entry<Long,Map<Long, List<RouteData>>> entry : rockMap.entrySet()){
            sectorList = new ArrayList<>();

            for(Map.Entry<Long, List<RouteData>> sectorEntry : entry.getValue().entrySet()){
                routeList = new ArrayList<>();
                for(RouteData route : sectorEntry.getValue()){
                    routeList.add(route);
                }
                sectorList.add(new SectorData(null, sectorEntry.getKey(), routeList));

            }
            rockList.add(new RockData(entry.getKey(), null, sectorList));
        }

//        public List<OrderEmailData> findOrderSentEmails(Long id) {
//            List<Map<String, Object>> rows = ordersJdbcRepository.findOrderSentEmails(id);
//            List<OrderEmailData> list = new ArrayList<>();
//            Long no = 1L;
//            for (Map row : rows) {
//                OrderEmailData data = new OrderEmailData(
//                        no++,
//                        Long.valueOf(String.valueOf(row.get("id"))),
//                        (String) row.get("title"),
//                        (String) row.get("sent_by"),
//                        LocalDateTime.parse(String.valueOf(row.get("date")), dateTimeFormatter),
//                        Long.valueOf(String.valueOf(row.get("order_id"))),
//                        (String) row.get("message"));
//                list.add(data);
//            }
//            return list;
//        }

//        routeList.add(new RouteData(1L,"Trasa","VI","Opis trasy"));
//        sectorList.add(new SectorData("Trata", 1L, routeList ));
//
//
//        rockList.add(new RockData(1L, "skała", sectorList));
//        rockList.add(new RockData(2L,"Skała 2", sectorList));


        return rockList;
    }

}
