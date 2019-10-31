package zoo.animal.service;

import zoo.animal.entity.Animal;

import java.util.List;

public interface AnimalService {
    void save(Animal animal);

    List<Animal> getAllAnimals();

    Animal getAnimalById(Long id);

    void deleteAnimal(Long id);

    void updateAnimal(Animal animal, Long id);
}
