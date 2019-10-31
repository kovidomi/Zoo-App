package zoo.animal.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "animal_type")
public class AnimalType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
}
