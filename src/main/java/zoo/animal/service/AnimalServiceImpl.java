package zoo.animal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zoo.animal.entity.Animal;
import zoo.animal.repository.AnimalRepository;

import java.util.List;

@Service
public class AnimalServiceImpl implements AnimalService {
    @Autowired
    private AnimalRepository animalRepository;

    @Override
    public void save(Animal animal) {
        animalRepository.saveAndFlush(animal);
    }

    @Override
    public List<Animal> getAllAnimals() {
        return animalRepository.findAll();
    }

    @Override
    public Animal getAnimalById(Long id) {
        return animalRepository.findById(id).orElse(null);
    }

    @Override
    public void deleteAnimal(Long id) {
        animalRepository.deleteById(id);
    }

    @Override
    public void updateAnimal(Animal newAnimal, Long id) {
        animalRepository.findById(id)
                .map(animal -> {
                    animal.setName(newAnimal.getName());
                    animal.setType(newAnimal.getType());
                    animal.setDescription(newAnimal.getDescription());
                    animal.setHabitat(newAnimal.getHabitat());
                    return animalRepository.saveAndFlush(animal);
                })
                .orElseGet(() -> {
                    newAnimal.setId(id);
                    return animalRepository.saveAndFlush(newAnimal);
                });
    }
}
