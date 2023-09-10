package com.team.pms.sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.pms.sign.repository.SignListDAO;
import com.team.pms.sign.repository.SignListDTO;

@WebServlet("/sign/signdel.do")
public class SignDel extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//SignDel.java
		
		String seq = req.getParameter("signseq");
		
		System.out.println(seq);
		
		req.setAttribute("signseq", seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/sign/signdel.jsp");
		dispatcher.forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("signseq");
		
		System.out.println(seq);
		
		SignListDAO dao = new SignListDAO();
		
		SignListDTO dto = new SignListDTO();
		
		dto.setSignseq(seq);
		
		
		int result = dao.delsign(dto); //글 삭제
		
		if (result == 1) {
			
			resp.sendRedirect("/pms/sign/signlist.do");
			
		} else {
			PrintWriter writer = resp.getWriter();
			writer.print("<script>alert('failed');history.back();</script>");
			writer.close();
		}	
		
	}

}
