package co.grandcircus.ApiCapstoneRecipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.ApiCapstoneRecipe.dao.RecipeRepository;

@Controller
public class RecipeController {
	
	@Autowired
	private RecipeRepository dao; 
	
	@RequestMapping("/")
	public ModelAndView showHome() {
		return new ModelAndView("/");
	}

}
