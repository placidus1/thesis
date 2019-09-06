package pl.com.rock.rock.domain;

public class RockQueryData {

    private Long id;
    private String name;

    public RockQueryData(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
