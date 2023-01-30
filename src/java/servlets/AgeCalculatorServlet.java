/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Legin
 */
public class AgeCalculatorServlet extends HttpServlet {
 
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String message = "";
        try{
            String userAge = request.getParameter("userAge");
                if (userAge.equals("userAge") || userAge.equals(null)) {
                    message = "You must give your current age";
                }
                else {
                    int age = Integer.parseInt(userAge);
                    if (age > 0) {
                        message = "you will be " + (age + 1) + "your next next birthday";
                    }
                    else {
                        message = "You must give your current age";
                    }
                }
            
        }
        catch (Exception e) {
            message = "you must enter a number.";
        }
        
        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
    }
    
    
}
