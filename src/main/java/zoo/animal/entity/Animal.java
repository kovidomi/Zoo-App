package zoo.animal.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "animal")
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    @OneToOne
    @JoinColumn(name = "animal_type_id")
    private AnimalType type;

    private String habitat;
}
