package com.spring.bbsCommand;

import org.springframework.ui.Model;

public interface Bcmd {
	void service(Model model);
}
//controller에서 cmd호출
//Bcmd를 구현한 BList

