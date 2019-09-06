package pl.com.rock.rock.domain;

public class RouteQueryData {

    private  Long id;
    private String name;
    private String difficultyLevel;
    private String description;
    private Long sectorId;

    public RouteQueryData(Long id, String name, String difficultyLevel, String description, Long sectorId) {
        this.id = id;
        this.name = name;
        this.difficultyLevel = difficultyLevel;
        this.description = description;
        this.sectorId = sectorId;
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
}
