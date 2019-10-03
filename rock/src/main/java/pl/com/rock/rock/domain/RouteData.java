package pl.com.rock.rock.domain;

public class RouteData {
    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;
    private String imageName;


    public RouteData(Long id, String name, String difficultyLevel, String description, String imageName) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
        this.imageName = imageName;
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

    public String getImageName() {
        return imageName;
    }
}
