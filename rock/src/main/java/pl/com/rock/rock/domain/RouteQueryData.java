package pl.com.rock.rock.domain;

public class RouteQueryData {

    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;
    private Long sectorId;
    private String imageName;

    public RouteQueryData(Long id, String name, String difficultyLevel, String description, Long sectorId, String imageName) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
        this.sectorId = sectorId;
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

    public Long getSectorId() {
        return sectorId;
    }

    public String getImageName() {
        return imageName;
    }
}
