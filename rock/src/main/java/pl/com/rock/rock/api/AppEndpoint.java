package pl.com.rock.rock.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import pl.com.rock.rock.domain.RockData;
import pl.com.rock.rock.domain.RouteData;
import pl.com.rock.rock.domain.SectorData;

import java.util.ArrayList;
import java.util.List;

@RestController
public class AppEndpoint {
    @GetMapping
            (path = "/api/rock/{id}",
            produces = "application/json; charset=UTF-8")

    public List<RockData>  getRock(@PathVariable Long id) {


        List<RockData> rockList = new ArrayList<>();
        List<SectorData> sectorList = new ArrayList<>();
        List<RouteData> routeList = new ArrayList<>();



        routeList.add(new RouteData(1L,"Trasa","VI","Opis trasy"));


        sectorList.add(new SectorData("Trata", 1L, routeList ));


        rockList.add(new RockData(id, "skała", sectorList));
        rockList.add(new RockData(2L,"Skała 2", sectorList));


        return rockList;
    }




}
