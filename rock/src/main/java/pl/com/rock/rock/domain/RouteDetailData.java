package pl.com.rock.rock.domain;

import java.util.ArrayList;
import java.util.List;

public class RouteDetailData {
    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;
    private List<RoutePointData> points = new ArrayList<>();





    public RouteDetailData(Long id, String name, String difficultyLevel, String description, List<RoutePointData> points) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
        this.points = points;

    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDifficultyLevel() {
        return difficultyLevel;
    }

    public String getDescription() {
        return description;
    }

    public List<RoutePointData> getPoints() {
        return points;
    }
}
