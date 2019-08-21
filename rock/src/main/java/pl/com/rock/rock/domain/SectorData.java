package pl.com.rock.rock.domain;

public class SectorData {

    private String name;



    private Long id;


    public SectorData(String name, Long id) {
        this.name = name;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }


}
