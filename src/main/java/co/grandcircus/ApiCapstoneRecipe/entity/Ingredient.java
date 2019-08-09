package co.grandcircus.ApiCapstoneRecipe.entity;

public class Ingredient {
	
	private String foodId; //name of the food
	private Float quantity;
	private Measure measure;
	private Float weight;
	private Food food;
	
	public Ingredient() {}
	
	public String getFoodId() {
		return foodId;
	}
	public void setFoodId(String foodId) {
		this.foodId = foodId;
	}
	public Float getQuantity() {
		return quantity;
	}
	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}
	public Measure getMeasure() {
		return measure;
	}
	public void setMeasure(Measure measure) {
		this.measure = measure;
	}
	public Float getWeight() {
		return weight;
	}
	public void setWeight(Float weight) {
		this.weight = weight;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}

	@Override
	public String toString() {
		return "Ingredient [foodId=" + foodId + ", quantity=" + quantity + ", measure=" + measure + ", weight=" + weight
				+ ", food=" + food + "]";
	} 
	
	

}
