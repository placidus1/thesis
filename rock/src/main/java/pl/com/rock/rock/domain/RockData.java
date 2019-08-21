package pl.com.rock.rock.domain;

public class RockData {

    private Long id;
    private String name;


    public RockData(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }
}
