package pl.com.rock.rock.domain;

public class RouteData {
    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;


    public RouteData(Long id, String name, String difficultyLevel, String description) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
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
}
