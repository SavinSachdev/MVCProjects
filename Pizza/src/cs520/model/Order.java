package cs520.model;

import java.util.ArrayList;
import java.util.List;
import cs520.model.Pizza;

public class Order {
	List<Pizza> pizzas;
	public Order(){
		pizzas=new ArrayList<Pizza>();
	}
	public List<Pizza> getPizzas() {
		return pizzas;
	}
	public void setPizzas(List<Pizza> pizzas) {
		this.pizzas = pizzas;
	}
	public double getPrice(){
		double price=0;
		for(Pizza pizza : pizzas){
			price+=pizza.getPrice();
		}
		return price;
	}
	
}
