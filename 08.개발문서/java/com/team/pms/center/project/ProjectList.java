package com.team.pms.center.project;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.team.pms.center.project.repository.ProjectDAO;
//import com.team.pms.center.project.repository.ProjectDTO;

//가상 주소 매핑 방법
@WebServlet("/center/project/projectlist.do")

public class ProjectList extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//ProjectList.java 
		

		ProjectDAO dao = new ProjectDAO();
		ProjectDTO dto = new ProjectDTO();
		
		
		List<ProjectDTO> list = dao.list();
		
		
		req.setAttribute("list", list);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/project/projectlist.jsp");
		dispatcher.forward(req, resp);
		
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String searchBar = req.getParameter("searchBar");
		String column = req.getParameter("column");
		String isSearch = "n";
		
		
		//입력받은 값 유효성 검사
		if(searchBar != null && column != null 
							  && !searchBar.equals("")
							  && !column.equals("")) {
			isSearch = "y"; 
		}
		
		
		HashMap<String , String> map = new HashMap<String, String>();
		
		map.put("column", column);
		map.put("search_bar", searchBar);
		map.put("isSearch", isSearch);
		
		
		ProjectDAO dao = new ProjectDAO();
		
		
		List<ProjectDTO> list = dao.list(map);
		
		
		
		
		req.setAttribute("list", list);
		
		
		
	}

}

