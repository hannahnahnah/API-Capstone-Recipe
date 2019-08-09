package co.grandcircus.ApiCapstoneRecipe.dao;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.ApiCapstoneRecipe.entity.RecipeResponse;

@Component
public class RecipeApiService {
	
	
private RestTemplate restTemplate;
	
	// This is an instance initialization block. It runs when a new instance of the class is created--
	// right before the constructor.
	{
	    // This configures the restTemplateWithUserAgent to include a User-Agent header with every HTTP
		// request. Some of the APIs in this demo have a bug where User-Agent is required.
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
	        request.getHeaders().add(HttpHeaders.USER_AGENT, "Spring");
	        return execution.execute(request, body);
	    };
	    restTemplate = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}
	
	public RecipeResponse searchRecipes(String q) {
		String url = "https://api.edamam.com/search?q=" + q + "&app_id=40f4a4da&app_key=84fdde4b9f1d9efefe0e9af51dee213d&from=0&to=3&calories=591-722&health=alcohol-free";
		RecipeResponse responses = restTemplate.getForObject(url, RecipeResponse.class);
		System.out.println(url);
		return responses;
		
	}
	

}
