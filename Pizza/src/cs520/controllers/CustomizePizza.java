package cs520.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs520.model.Crusts;
import cs520.model.Order;
import cs520.model.Pizza;

@WebServlet(urlPatterns="/CustomizePizza",loadOnStartup=1)
public class CustomizePizza extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void init() throws ServletException {
		ArrayList<Crusts> crusts=new ArrayList<Crusts>();
		crusts.add(new Crusts("Large Original",11));
		crusts.add(new Crusts("Medium Original",9));
		crusts.add(new Crusts("Large Thin",11));
		
		ArrayList<String> toppings=new ArrayList<String>();
		toppings.add(new String("Pepperoni"));
		toppings.add(new String("Sausage"));
		toppings.add(new String("Bacon"));
		toppings.add(new String("Pineapple"));
		
		this.getServletContext().setAttribute("crusts",crusts);
		this.getServletContext().setAttribute("toppings", toppings);
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher( "/WEB-INF/CustomizePizza.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Order order=(Order) request.getSession().getAttribute("order");
		if(order==null){
			order=new Order();
			request.getSession().setAttribute("order", order);
		}
		
		Pizza pizza=new Pizza();
		ArrayList<Crusts> crusts=(ArrayList<Crusts>) this.getServletContext().getAttribute("crusts");
		pizza.setCrust(crusts.get(Integer.parseInt(request.getParameter("crust"))));
		if(request.getParameter("cheese").equals("cheese"))
		pizza.setCheese(true);
		else
			pizza.setCheese(false);
	

		for(String topping : request.getParameterValues("toppings")){
					pizza.getToppings().add(topping);
		}
		
		order.getPizzas().add(pizza);
		
		response.sendRedirect("DisplayOrder");
}
}
