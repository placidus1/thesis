package pl.com.rock.rock.domain;

import java.util.List;

public class SectorData {

    private String name;
    private Long id;
    private List<RouteData> routes;

    public SectorData(String name, Long id, List<RouteData> routes) {
        this.name = name;
        this.id = id;
        this.routes = routes;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }

    public List<RouteData> getRoutes() {
        return routes;
    }
}
