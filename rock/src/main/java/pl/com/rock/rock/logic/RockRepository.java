package pl.com.rock.rock.logic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;


@Service
class RockRepository {
    private static final Logger log = (Logger) LoggerFactory.getLogger(RockRepository.class);

     private JdbcTemplate jdbcTemplate;


     RockRepository(JdbcTemplate jdbcTemplate) {
         this.jdbcTemplate = jdbcTemplate;
     }




    List<Map<String, Object>> findRockWithSectorsWithRoutes(Long rockId, Long sectorId, Long routeId) {
        String query = "select *, '---' AS sent_by from order_mail_sends where id = " + rockId;
        log.trace(query);

        return jdbcTemplate.queryForList(query);
    }
 }

