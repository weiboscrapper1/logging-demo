package org.arts.practice.loggingdemo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private StudentJdbcRepository studentJdbcRepository;

    @GetMapping("/student/{id}")
    public Student findById(@PathVariable Long id) {
        logger.info("id = {}", id);
        return studentJdbcRepository.findById(id);
    }
}
