package pl.com.rock.rock.domain;

import java.util.List;

public class RockData {

    private Long id;
    private String name;
    private List<SectorData> sectors;


    public RockData(Long id, String name, List<SectorData> sectors) {
        this.id = id;
        this.name = name;
        this.sectors = sectors;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }

    public List<SectorData> getSectors() {
        return sectors;
    }
}
