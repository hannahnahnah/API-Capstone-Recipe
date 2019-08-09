package co.grandcircus.ApiCapstoneRecipe.entity;

import java.util.List;


public class RecipeResponse {
	
	private List<Hit> hits;

	

	public List<Hit> getHits() {
		return hits;
	}



	public void setHits(List<Hit> hits) {
		this.hits = hits;
	}



	@Override
	public String toString() {
		return "RecipeResponse [hits=" + hits + "]";
	}
	
	

}
