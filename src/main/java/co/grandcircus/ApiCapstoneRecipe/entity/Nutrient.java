package co.grandcircus.ApiCapstoneRecipe.entity;

public class Nutrient {
	
	private String uri;
	private String label;
	private Float quantity;
	private String unit;
	
	public Nutrient() {}
	
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
	public Float getQuantity() {
		return quantity;
	}
	public void setQuantity(Float quantity) {
		this.quantity = quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	@Override
	public String toString() {
		return "Nutrient [uri=" + uri + ", label=" + label + ", quantity=" + quantity + ", unit=" + unit + "]";
	}
	
	

}
