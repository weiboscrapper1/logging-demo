package org.arts.practice.loggingdemo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StudentJdbcRepository {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    JdbcTemplate jdbcTemplate;

    public Student findById(long id) {

        logger.debug("id = {}", id);
        return jdbcTemplate.queryForObject(
                "select * from student where id=?", new Object[] {
                        id
                },
                new BeanPropertyRowMapper< Student >(Student.class));
    }
}
