package pl.com.rock.rock.domain;

public class RoutePointData {
    private Long id;
    private Long routeId;
    private Integer xPercent;//from top left
    private Integer yPercent;//from top down
    private Integer order;

    public RoutePointData(Long id, Long routeId, Integer xPercent, Integer yPercent, Integer order) {
        this.id = id;
        this.routeId = routeId;
        this.xPercent = xPercent;
        this.yPercent = yPercent;
        this.order = order;
    }

    public Long getId() {
        return id;
    }

    public Long getRouteId() {
        return routeId;
    }

    public Integer getxPercent() {
        return xPercent;
    }

    public Integer getyPercent() {
        return yPercent;
    }

    public Integer getOrder() {
        return order;
    }
}
