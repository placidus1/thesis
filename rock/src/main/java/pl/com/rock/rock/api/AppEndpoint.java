package pl.com.rock.rock.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import pl.com.rock.rock.domain.RockData;

@RestController
public class AppEndpoint {
    @GetMapping
            (path = "/api/rock/{id}",
            produces = "application/json; charset=UTF-8")

    public RockData getRock(@PathVariable Long id) {
        return new RockData(id, "skała");
    }




}
