/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import common.dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sayur
 */
public class ConfirmPPBooking extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String uid = null;  
            HttpSession session = request.getSession();
            uid = (String) session.getAttribute("LoggedInUserId");
            dbconnection obj_dbconnection = new dbconnection();
                Connection connection = obj_dbconnection.get_connection();
                PreparedStatement ps = null;
                ResultSet rs = null;
                
                String sql = "select fname,lname,mobile,email from users where uid=?";
                Class.forName("com.mysql.jdbc.Driver");
                ps = connection.prepareStatement(sql);
                ps.setString(1, uid);

                String fname = null;
                String lname = null;
                String mobile = null;
                String email = null;
                int uidnum = Integer.parseInt(uid);
            
                rs = ps.executeQuery();
                while (rs.next()) {
                    fname = rs.getString(1);
                    lname = rs.getString(2);
                    mobile = rs.getString(3);
                    email = rs.getString(4);
                }
                String sql2 = "select adults,children,cidate,codate,total from cart where uid=? order by id desc limit 1";
                Class.forName("com.mysql.jdbc.Driver");
                ps = connection.prepareStatement(sql2);
                ps.setString(1, uid);

                int adults = 0;
                int children = 0;
                String cidate = null;
                String codate = null;
                int total =0;
            
                rs = ps.executeQuery();
                while (rs.next()) {
                    adults = rs.getInt(1);
                    children = rs.getInt(2);
                    cidate = rs.getString(3);
                    codate = rs.getString(4);
                    total = rs.getInt(5);
                }
                
                String sql3 = "insert into bookings (adults, children, cidate, codate, amount, ptype, uid) values(?,?,?,?,?,'ONLINE',?)";
                Class.forName("com.mysql.jdbc.Driver");
                
                ps = connection.prepareStatement(sql3);
                ps.setInt(1, adults);
                ps.setInt(2, children);
                ps.setString(3, cidate);
                ps.setString(4, codate);
                ps.setInt(5, total);
                ps.setInt(6,uidnum);
                
                ps.executeUpdate();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Booking Completed Successfully !!');");
                out.println("location='./index.html';");
                out.println("</script>");

        }
        catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
