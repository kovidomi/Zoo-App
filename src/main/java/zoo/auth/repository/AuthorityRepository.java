package zoo.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import zoo.auth.entity.Authority;

public interface AuthorityRepository extends JpaRepository<Authority, Long> {
}
