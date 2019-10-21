package pl.com.rock.rock.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import pl.com.rock.rock.domain.RockData;
import pl.com.rock.rock.domain.RouteDetailData;
import pl.com.rock.rock.logic.RockService;


import java.util.List;

@RestController
public class AppEndpoint {

    private RockService rockService;

    public AppEndpoint(RockService rockService) {
        this.rockService = rockService;
    }


    @GetMapping
            (path = "/api/rock/{rockId}/sector/{sectorId}/route/{routeId}",
            produces = "application/json; charset=UTF-8")
    public List<RockData>  getRock(@PathVariable Long rockId, @PathVariable Long sectorId, @PathVariable Long routeId) {
        return rockService.findRockWithSectorsWithRoutes(rockId,sectorId,routeId);
    }

    @GetMapping
            (path = "api/route/{routeId}",
                    produces = "application/json; charset=UTF-8")
    public RouteDetailData  getRouteDetail(@PathVariable Long routeId) {
        return rockService.getRouteDetail(routeId);
    }







}
