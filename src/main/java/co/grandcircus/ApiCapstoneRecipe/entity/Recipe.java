package co.grandcircus.ApiCapstoneRecipe.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;



public class Recipe {
	
	private Long id;
	private String uri; //to connect to he json
	private String label; //recipe title
	private String image;
	private String source; //name of source ex: Epicurious
	private String url; // to the original source
	private Integer yield;
	private List<String> dietLabels;
	private List<String> healthLabels;
	private List<String> ingredientLines;
	private List<Ingredient> ingredients;
	private Double calories;
	//private Nutrient totalNutrients;
	
	public Recipe() {}
	
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getYield() {
		return yield;
	}
	public void setYield(Integer yield) {
		this.yield = yield;
	}
	public List<String> getDietLabels() {
		return dietLabels;
	}
	public void setDietLabels(List<String> dietLabels) {
		this.dietLabels = dietLabels;
	}
	public List<String> getHealthLabels() {
		return healthLabels;
	}
	public void setHealthLabels(List<String> healthLabels) {
		this.healthLabels = healthLabels;
	}
	public List<String> getIngredientLines() {
		return ingredientLines;
	}
	public void setIngredientLines(List<String> ingredientLines) {
		this.ingredientLines = ingredientLines;
	}
	public List<Ingredient> getIngredients() {
		return ingredients;
	}
	public void setIngredients(List<Ingredient> ingredients) {
		this.ingredients = ingredients;
	}
	public Double getCalories() {
		return calories;
	}
	public void setCalories(Double calories) {
		this.calories = calories;
	}
//	public Nutrient getTotalNutrients() {
//		return totalNutrients;
//	}
//	public void setTotalNutrients(Nutrient totalNutrients) {
//		this.totalNutrients = totalNutrients;
//	}
	@Override
	public String toString() {
		return "Recipe [uri=" + uri + ", label=" + label + ", image=" + image + ", source=" + source + ", url=" + url
				+ ", yield=" + yield + ", dietLabels=" + dietLabels + ", healthLabels=" + healthLabels
				+ ", ingredientLines=" + ingredientLines + ", ingredients=" + ingredients + ", calories=" + calories
				 + "]";
	}
	
	
	

}
