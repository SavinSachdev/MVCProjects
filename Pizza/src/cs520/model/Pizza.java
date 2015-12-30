package cs520.model;

import java.util.ArrayList;
import java.util.List;

public class Pizza {
	Crusts crust;
	boolean cheese;
	List<String> toppings;
	int quantity;
	public Pizza() {
		quantity= 1;
		toppings=new ArrayList<String>();
	}
	public Crusts getCrust() {
		return crust;
	}
	public void setCrust(Crusts crust) {
		this.crust = crust;
	}
	public boolean isCheese() {
		return cheese;
	}
	public void setCheese(boolean cheese) {
		this.cheese = cheese;
	}
	public List<String> getToppings() {
		return toppings;
	}
	public void setToppings(List<String> toppings) {
		this.toppings = toppings;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public double getPrice(){
		double price=0;
		price+=crust.getPrice();
		if(!cheese)--price;
		price+=toppings.size();
		return price;
	}
	
	
	
}
