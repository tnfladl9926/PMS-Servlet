package com.team.pms.center.product;

import lombok.Data;

@Data
public class CProductDTO {
	private String productseq;
	private String productname;
	private String content;
	private String productdate;
	private String employeeseq;
	private String projectseq;
	
	//번호
	private String rownum;
	private String projectname;
}

//PRODUCTSEQ  NOT NULL NUMBER         
//PRODUCTNAME NOT NULL VARCHAR2(200)  
//CONTENT     NOT NULL VARCHAR2(4000) 
//PRODUCTDATE NOT NULL DATE           
//EMPLOYEESEQ NOT NULL NUMBER         
//PROJECTSEQ  NOT NULL NUMBER         
