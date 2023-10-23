package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.sql.Delete;

import com.entities.Note;
import com.helper.*;

import com.helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = (Session) FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
		    
			Note note = (Note)s.get(Note.class,noteId);
		    s.delete(note);
		    
		    tx.commit();
			s.close();
			response.sendRedirect("All_Notes.jsp");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
