package com.team.pms.todo.schedule;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.pms.employee.repository.EmployeeDAO;
import com.team.pms.employee.repository.EmployeeDTO;

@WebServlet("/todo/schedule/calendarview.do")
public class CalendarView extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//CalendarView.java
//		CalendarDAO dao = new CalendarDAO();
//		Calendar now = Calendar.getInstance();
//		
//		HttpSession session = req.getSession();
//		
//		int year = now.get(Calendar.YEAR);
//		int month = now.get(Calendar.MONTH + 1);
//		String seq = (String) (session.getAttribute("id"));
//		
//		String startDate = String.format("%d-%02d-01", year, month);
//
//		//해당 달만 가져오기 위해 해야함 ㅇㅇ
//		month += 1;
//		String endDate = String.format("%d-%02d-01", year, month);
//		
//		// startdate보단 크거나같고 endDate보단 작아야함
//		ArrayList<CalendarDTO> list = dao.getThisMonth(startDate, endDate, seq);
//	
//		req.setAttribute("list", list);
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/todo/schedule/calendarview.jsp");

		dispatcher.forward(req, resp);
	}
}