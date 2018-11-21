package org.arts.practice.loggingdemo.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

//@Repository("userRepository")
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
