package logging.practice.arts.loggingdemo;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.junit.Assert.assertTrue;

public class EncodeTest {
    @Test
    public void test() {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        assertTrue(encoder.matches("123", encoder.encode("123")));
    }
}
