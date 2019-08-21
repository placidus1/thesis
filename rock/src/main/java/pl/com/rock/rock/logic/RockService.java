package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import pl.com.rock.rock.domain.RockData;
import pl.com.rock.rock.domain.RouteData;
import pl.com.rock.rock.domain.SectorData;


import java.util.ArrayList;
import java.util.List;

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

        routeList.add(new RouteData(1L,"Trasa","VI","Opis trasy"));
        sectorList.add(new SectorData("Trata", 1L, routeList ));


        rockList.add(new RockData(1L, "skała", sectorList));
        rockList.add(new RockData(2L,"Skała 2", sectorList));


        return rockList;
    }

}
