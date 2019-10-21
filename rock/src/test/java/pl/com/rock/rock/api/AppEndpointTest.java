package pl.com.rock.rock.api;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.junit4.SpringRunner;
import pl.com.rock.rock.domain.RouteDetailData;

import static org.assertj.core.api.Assertions.assertThat;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class AppEndpointTest {

    public static final String HOST = "http://localhost:";
    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void getRouteDetail_whenThereIsWithId_thenSuccess() {

        Long id = 1L;
        RouteDetailData result = this.restTemplate.getForObject(HOST + port + "/api/route/" + id, RouteDetailData.class);
        assertThat(result).isNotNull();
        assertThat(result).hasFieldOrPropertyWithValue("id", id);

        assertThat(result).hasFieldOrPropertyWithValue("name", "Enpec");
    }

    @Test
    public void getRouteDetail_whenThereIsNoId_thenFailed() {

        Long id = -999999L;
        RouteDetailData result = this.restTemplate.getForObject(HOST + port + "/api/route/" + id, RouteDetailData.class);
        System.out.println(result);
        assertThat(result).isNull();

    }


}
