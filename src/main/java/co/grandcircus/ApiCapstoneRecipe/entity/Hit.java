package co.grandcircus.ApiCapstoneRecipe.entity;

public class Hit {
	
	public Recipe recipe;

	public Recipe getRecipe() {
		return recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

	@Override
	public String toString() {
		return "Hit [recipe=" + recipe + "]";
	}
	
	

}
