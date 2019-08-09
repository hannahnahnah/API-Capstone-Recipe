package co.grandcircus.ApiCapstoneRecipe.entity;

public class Food {
	
	private String foodId;
	private String label;
	
	public Food() {}
	
	public String getFoodId() {
		return foodId;
	}
	public void setFoodId(String foodId) {
		this.foodId = foodId;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	@Override
	public String toString() {
		return "Food [foodId=" + foodId + ", label=" + label + "]";
	}
	
	
	

}
