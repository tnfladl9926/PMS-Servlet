package com.team.pms.center.project;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.pms.employee.repository.EmployeeDAO;
//import com.team.pms.center.project.repository.CostDTO;
//import com.team.pms.center.project.repository.ProjectDAO;
//import com.team.pms.center.project.repository.ProjectDTO;
import com.team.pms.employee.repository.EmployeeDTO;

//가상 주소 매핑 방법
@WebServlet("/center/project/projectdetail.do")

public class ProjectDetail extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//ProjectDetail.java 
		HttpSession session = req.getSession();
		String seq = req.getParameter("projectSeq");
		
		ProjectDAO dao = new ProjectDAO();
		ProjectDTO dto = dao.projectList(seq);
		
		String complete = dto.getComplete();
		String employeeSeq = (String) session.getAttribute("employeeSeq");
//		List<CostDTO> costList = dao.costList(seq);
		EmployeeDAO daot = new EmployeeDAO();
		EmployeeDTO dtoa = daot.myInfo(employeeSeq);
		
		List<CostDTO> costList = dao.costList(seq);
		
		System.out.println(complete);
	
		req.setAttribute("costList", costList);
		req.setAttribute("dto", dto);
		req.setAttribute("pjseq", seq);
		req.setAttribute("complete", complete);
		req.setAttribute("name", dtoa.getName());
		req.setAttribute("position", dtoa.getPosition());
		req.setAttribute("teamname", dtoa.getTeamName());
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/project/projectdetail.jsp");
		dispatcher.forward(req, resp);

	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			

		
		String projectName = req.getParameter("projectName");
		String items = req.getParameter("items");
		String money = req.getParameter("money");
		String costDate = req.getParameter("costDate");
		String signDate = req.getParameter("signDate");
		String projectSeq = req.getParameter("projectSeq");
		
		CostDTO dto = new CostDTO();
		
		dto.setProjectSeq(projectSeq);
		dto.setProjectName(projectName);
		dto.setItems(items);
		dto.setMoney(money);
		dto.setCostDate(costDate);
		dto.setSignDate(signDate);
		
		
		ProjectDAO dao = new ProjectDAO();
		
		dto = dao.addCost(dto);
		
		
		
		
		
		
	
	}
	
	
}
