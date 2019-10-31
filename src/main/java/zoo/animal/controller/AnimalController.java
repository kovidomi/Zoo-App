package zoo.animal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import zoo.animal.entity.Animal;
import zoo.animal.service.AnimalService;
import zoo.auth.service.SecurityService;

@Controller
public class AnimalController {
    @Autowired
    private AnimalService animalService;

    @Autowired
    private SecurityService securityService;

    @GetMapping("/animal")
    private String getAnimals(Model model) {
        model.addAttribute("animals", animalService.getAllAnimals());
        return "animal";
    }

    @GetMapping("/animal/{id}")
    private String getAnimal(@PathVariable Long id, Model model) {
        model.addAttribute("animals", animalService.getAnimalById(id));
        return "animal";
    }

    @PostMapping("/animal")
    private String insertAnimal(@RequestBody Animal newAnimal) {
        if (securityService.userHasAuthority()) {
            animalService.save(newAnimal);
        }

        return "redirect:/animal";
    }

    @PutMapping("/animal/{id}")
    private String updateAnimal(@RequestBody Animal newAnimal, @PathVariable Long id) {
        if (securityService.userHasAuthority()) {
            animalService.updateAnimal(newAnimal, id);
        }

        return "redirect:/animal";
    }

    @DeleteMapping("/animal/{id}")
    private String deleteAnimal(@PathVariable Long id) {
        if (securityService.userHasAuthority()) {
            animalService.deleteAnimal(id);
        }

        return "redirect:/animal";
    }
}
