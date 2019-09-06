package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import pl.com.rock.rock.domain.*;


import java.util.*;

@Service
public class RockService {
    private RockRepository rockRepository;
    private static final Logger log = (Logger) LoggerFactory.getLogger(RockService.class);

    public RockService(RockRepository rockRepository) {
        this.rockRepository = rockRepository;
    }


    public List<RockData> findRockWithSectorsWithRoutes(Long rockId, Long sectorId, Long routeId){
        List<RockData> rockList = new ArrayList<>();

        List<Map<String, Object>> result = rockRepository.findRockWithSectorsWithRoutes(rockId, sectorId, routeId);

        List<RockQueryData> rockQueryList = new ArrayList<>();
        List<RouteQueryData> routeQueryList = new ArrayList<>();
        List<SectorQueryData> sectorQueryList = new ArrayList<>();

        Set<Long> rockIds = new HashSet<>();
        Set<Long> sectorIds = new HashSet<>();

        for(Map record : result) {
            if(!rockIds.contains(Long.valueOf(String.valueOf(record.get("rock_id"))))) {
                rockQueryList.add(new RockQueryData(Long.valueOf(String.valueOf(record.get("rock_id"))), String.valueOf(record.get("rock_name"))));
            }

            rockIds.add(Long.valueOf(String.valueOf(record.get("rock_id"))));
        }

        for(Map record : result) {

            if(!sectorIds.contains(Long.valueOf(String.valueOf(record.get("sector_id"))))) {
                sectorQueryList.add(new SectorQueryData(Long.valueOf(String.valueOf(record.get("sector_id"))), String.valueOf(record.get("sector_name")), Long.valueOf(String.valueOf(record.get("rock_id")))));
            }
            sectorIds.add(Long.valueOf(String.valueOf(record.get("sector_id"))));
        }
        for(Map record : result) {

            routeQueryList.add(new RouteQueryData(Long.valueOf(String.valueOf(record.get("route_id"))),(String) record.get("route_name"), (String) record.get("difficulty_level"), (String) record.get("description"), Long.valueOf(String.valueOf(record.get("sector_id")))));
        }

        for(RockQueryData rockQueryData : rockQueryList) {
            List<SectorData> sectors = new ArrayList<>();

            for(SectorQueryData sectorQueryData :sectorQueryList){
                if(sectorQueryData.getRockId().equals(rockQueryData.getId())){
                    List<RouteData> routes = new ArrayList<>();
                    for(RouteQueryData routeQueryData :routeQueryList){
                        if(sectorQueryData.getId().equals(routeQueryData.getSectorId())){
                            routes.add(new RouteData(routeQueryData.getId(), routeQueryData.getName(), routeQueryData.getDifficultyLevel(), routeQueryData.getDescription()));
                        }
                    }
                    sectors.add(new SectorData(sectorQueryData.getName(), sectorQueryData.getId(), routes));
                }
            }
            rockList.add(new RockData(rockQueryData.getId(),rockQueryData.getName(), sectors));


        }

        return rockList;
    }

    public RouteDetailData getRouteDetail(Long routeId){
        RouteDetailData result = rockRepository.getRouteDetail(routeId);
        List<RoutePointData> points = rockRepository.getRoutePoints(routeId);
        RouteDetailData data = new RouteDetailData(result.getId(), result.getName(), result.getDifficultyLevel(), result.getDescription(), points);

        return data;
    }


}
