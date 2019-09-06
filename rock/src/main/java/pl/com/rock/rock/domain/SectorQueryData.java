package pl.com.rock.rock.domain;

public class SectorQueryData {

    private Long id;
    private String name;
    private Long rockId;

    public SectorQueryData(Long id, String name, Long rockId) {
        this.id = id;
        this.name = name;
        this.rockId = rockId;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Long getRockId() {
        return rockId;
    }
}
