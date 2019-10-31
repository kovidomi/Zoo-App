package zoo.animal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import zoo.animal.entity.Animal;

public interface AnimalRepository extends JpaRepository<Animal, Long> {
}
