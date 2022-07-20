package com.example.billingdemo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ServletChange")
public class ServletChange extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("inputEmail4");
        String address = request.getParameter("inputAddress");
        int kim = Integer.parseInt(request.getParameter("1"));
        int kerry = Integer.parseInt(request.getParameter("2"));
        int coffee = Integer.parseInt(request.getParameter("3"));
        int swindon = Integer.parseInt(request.getParameter("4"));
        int newYork = Integer.parseInt(request.getParameter("5"));
        int blackForest = Integer.parseInt(request.getParameter("6"));
        int chocolate = Integer.parseInt(request.getParameter("7"));
        int redVelver = Integer.parseInt(request.getParameter("8"));
        int vanilla = Integer.parseInt(request.getParameter("9"));
        int cakepopS = Integer.parseInt(request.getParameter("10"));
        int cakepopL = Integer.parseInt(request.getParameter("11"));
        int donutsS = Integer.parseInt(request.getParameter("12"));
        int donutsL = Integer.parseInt(request.getParameter("13"));

        int sale = 0;
        int last = 1;
        SelectDB selectDB = new SelectDB();
        List<User> users = selectDB.selectUser();
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getEmail().equals(email)){
                sale = 1;
                break;
            }else if (i== users.size() -1&& !users.get(i).getEmail().equals(email) ){
                if (users.size() != 0) {
                    last = users.size()+1;
                }
                User u = new User(last, firstname, lastname, email, address);
                selectDB.insertUser(u);
            }
        }


        List<Product> products = selectDB.select();
        System.out.println(products.get(1).getPrice());
        double rKim = Math.round(products.get(0).getPrice() * kim);
        double rKerry = Math.round(products.get(1).getPrice() * kerry);
        double rCoffee = Math.round(products.get(2).getPrice() * coffee);
        double rSwindon = Math.round(products.get(3).getPrice() * swindon);
        double rNewyork = Math.round(products.get(4).getPrice() * newYork);
        double rBlack = Math.round(products.get(5).getPrice() * blackForest);
        double rChoco = Math.round(products.get(6).getPrice() * chocolate);
        double rRed = Math.round(products.get(7).getPrice() * redVelver);
        double rVan = Math.round(products.get(8).getPrice() * vanilla);
        double rCakeS = Math.round(products.get(9).getPrice() * cakepopS);
        double rcakeL = Math.round(products.get(10).getPrice() * cakepopL);
        double rDonS = Math.round(products.get(11).getPrice() * donutsS);
        double rDonL = Math.round(products.get(12).getPrice() * donutsL);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");

        request.setAttribute("firstname", firstname);
        request.setAttribute("lastname", lastname);
        request.setAttribute("email", email);
        request.setAttribute("address", address);

        request.setAttribute("rKim", rKim);
        request.setAttribute("rKerry", rKerry);
        request.setAttribute("rCoffee", rCoffee);
        request.setAttribute("rSwindon", rSwindon);
        request.setAttribute("rNewyork", rNewyork);
        request.setAttribute("rBlack", rBlack);
        request.setAttribute("rChoco", rChoco);
        request.setAttribute("rRed", rRed);
        request.setAttribute("rVan", rVan);
        request.setAttribute("rCakeS", rCakeS);
        request.setAttribute("rcakeL", rcakeL);
        request.setAttribute("rDonS", rDonS);
        request.setAttribute("rDonL", rDonL);

        double discount = 0.00;
        double discount2 = 0.00;
        double sub = rKim + rKerry + rCoffee + rSwindon + rNewyork + rBlack + rChoco + rRed + rVan + rCakeS + rcakeL + rDonL + rDonS;
        System.out.println(sub);
        if (sale == 1) {
             discount = Math.round(sub / 100 * 10);
             sub = sub - discount;
        }
        if(sub > 1000){
            discount2 = Math.round(sub / 100 * 5);
            sub = sub - discount2;
            discount = discount + discount2;
        }
        System.out.println(sub);
        double mwst = Math.round((sub / 100) * 7.7);
        double cost = sub + mwst;
        request.setAttribute("dis", discount);
        request.setAttribute("cost", cost);
        request.setAttribute("sub", sub);
        request.setAttribute("mwst", mwst);

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
