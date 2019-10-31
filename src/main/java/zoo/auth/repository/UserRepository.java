package zoo.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import zoo.auth.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
