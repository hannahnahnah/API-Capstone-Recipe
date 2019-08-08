package co.grandcircus.ApiCapstoneRecipe.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Recipe {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@Column(name="dietary_restrictions", length=2000)
	private String dietaryRes;
	private Integer calories;
	
	public Recipe() {}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDietaryRes() {
		return dietaryRes;
	}
	public void setDietaryRes(String dietaryRes) {
		this.dietaryRes = dietaryRes;
	}
	public Integer getCalories() {
		return calories;
	}
	public void setCalories(Integer calories) {
		this.calories = calories;
	}

	@Override
	public String toString() {
		return "Recipe [id=" + id + ", dietaryRes=" + dietaryRes + ", calories=" + calories + "]";
	}
	
	
	

}
