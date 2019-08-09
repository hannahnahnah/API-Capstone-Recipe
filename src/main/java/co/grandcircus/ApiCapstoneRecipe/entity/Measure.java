package co.grandcircus.ApiCapstoneRecipe.entity;

public class Measure {
	
	private String uri;
	private String label;
	
	public Measure() {}
	
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

	@Override
	public String toString() {
		return "Measure [uri=" + uri + ", label=" + label + "]";
	}
	
	

}
