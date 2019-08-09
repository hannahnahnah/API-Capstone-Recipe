package co.grandcircus.ApiCapstoneRecipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.ApiCapstoneRecipe.dao.RecipeApiService;
import co.grandcircus.ApiCapstoneRecipe.entity.Hit;

@Controller
public class RecipeController {
	
	@Autowired
	//private RecipeRepository dao; 
	private RecipeApiService apiService;
	
	@RequestMapping("/")
	public ModelAndView redirect() {
		return new ModelAndView("redirect:/recipe");
	}
	
	@RequestMapping("/recipe")
	public ModelAndView listRecipes(
			@RequestParam(value="q", required=false) String q) {
		
			q="chicken";
			
			List<Hit> hits = apiService.searchRecipes(q).getHits();
			
			return new ModelAndView("home", "query", hits);
			
	
	}

}
