package co.grandcircus.ApiCapstoneRecipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.ApiCapstoneRecipe.dao.RecipeApiService;
import co.grandcircus.ApiCapstoneRecipe.entity.Hit;
import co.grandcircus.ApiCapstoneRecipe.entity.RecipeResponse;

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
			@RequestParam(value="recipe", required=false) String q) {
		
			
			
			List<Hit> hits = apiService.searchRecipes(q).getHits();
			
			return new ModelAndView("home", "query", hits);
			
	
	}
	///// view whole list 
	@RequestMapping("/list-results")
	public ModelAndView allRecipes(
			@RequestParam(value="recipe", required=false) String q) {
		
			//q=" pizza ";
			
			List<Hit> hits = apiService.searchRecipes(q).getHits();
			
			return new ModelAndView("list-results", "food", hits);
			
	
	}

	 /////view details
	
	@RequestMapping("/details")
	public ModelAndView itemDetail(@RequestParam("uri") String uri) {
//		ModelAndView mav = new ModelAndView("details");
//		mav.addObject("food",apiService.searchRecipes(label));
		
		System.out.println("URI: " + uri);
		
		System.out.println(apiService.searchRecipes(uri).getHits());
		
		List<Hit> hits = apiService.searchRecipes(uri).getHits();
		System.out.println(hits);
		return new ModelAndView("details", "food", hits);
//System.out.println(apiService.searchRecipes(label));
		//return mav;
	}
}
