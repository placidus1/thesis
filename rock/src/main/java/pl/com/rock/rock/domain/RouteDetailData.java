package pl.com.rock.rock.domain;

import java.util.ArrayList;
import java.util.List;

public class RouteDetailData {
    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;
    private String imageName;
    private List<RoutePointData> points = new ArrayList<>();
//    private String rockName;
//    private String sectorName;

    public RouteDetailData(  ) {


    }

    public RouteDetailData(Long id, String name, String difficultyLevel, String description, String imageName, List<RoutePointData> points/*String rockName, String sectorName*/   ) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
        this.imageName = imageName;
        this.points = points;
//        this.rockName = rockName;
//        this.sectorName=sectorName;

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
//
    public String getImageName() {
        return imageName;
    }

    public List<RoutePointData> getPoints() {
        return points;
    }

    @Override
    public String toString() {
        return "RouteDetailData{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", difficultyLevel='" + difficultyLevel + '\'' +
                ", description='" + description + '\'' +
                ", imageName='" + imageName + '\'' +
                ", points=" + points +
                '}';
    }
}
