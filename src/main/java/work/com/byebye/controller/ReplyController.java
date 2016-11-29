package work.com.byebye.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import work.com.byebye.dto.Reply;
import work.com.byebye.service.ReplyService;

@Controller
public class ReplyController {

	List<Reply> reList = new ArrayList<Reply>();
	Reply dto = new Reply();
	private ReplyService service;

	@Autowired
	public void setService(ReplyService service) {
		this.service = service;
	}

	
	@RequestMapping("replyInsertView.do")
	public ModelAndView ReplyInsertView(HttpSession session, int seq) {
		String userid = (String) session.getAttribute("userid");
		String docNum = String.valueOf(seq);

		ModelAndView mv = new ModelAndView();
		if (userid != null) {
			mv.addObject("docNum", docNum);
			mv.addObject("userid", userid);
			mv.setViewName("reply/replyInsert");
		} else {
			mv.addObject("message", "로그인 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("error/errorLogin");
		}
		return mv;
	}

	
	@RequestMapping(value = "reply.do", method = RequestMethod.POST)
	public ModelAndView replyInsert(HttpSession session, HttpServletRequest request) {

//		String reNum = (String) request.getParameter("reNum");
		String reCon = (String) request.getParameter("reCon");
		String docNum = (String) request.getParameter("docNum");
		String userId = (String) session.getAttribute("userid");
		
		System.out.println("test CON "  + reCon + docNum + userId);
		
		int replyInsert = service.replyInsert(reCon, docNum, userId);

		ModelAndView mv = new ModelAndView();

		if (replyInsert > 0) {

			mv.setViewName("index");
		} else {

			mv.setViewName("login");
			// 임시방편
		}

		return mv;
	}
	
	/**
	 * 댓글 조회
	 * userId 본인것 : 조회 기능, 삭제 
	 * userId 남의것 : 조회
	 * 
	 */
	@RequestMapping(value="replySearch.do") 
	public ModelAndView replySearch(HttpSession session, HttpServletRequest request) {
		
		String userid = (String) session.getAttribute("userid");
		System.out.println("test replySearch con " + userid);
		
		
		reList = service.replySearch(userid);
		
		ModelAndView mv = new ModelAndView();
		
		//view는 추가저긍로 만들어야 할것 , 
		if(reList!=null) {
			mv.addObject("list",reList);
			mv.setViewName("");
		} else {
			mv.addObject("자신의 댓글 조회가 되지 않습니다. ");
			mv.setViewName("");
		}
		
		return mv; 
		
	}
	
	//남의것 조회는 -> home화면에서 처리하기로 난 이기로
	@RequestMapping(value="replySearchOther.do") 
	public ModelAndView replySearchOther(HttpSession session, HttpServletRequest request) {
		
		String userid = (String) request.getParameter("userid");
		System.out.println("test replySearch con " + userid);
		
		reList = service.replySearch(userid);
		
		ModelAndView mv = new ModelAndView();
		
		if(reList!=null) {
			mv.addObject("list",reList);
			mv.setViewName("");
		} else {
			mv.addObject("자신의 댓글 조회가 되지 않습니다. ");
			mv.setViewName("");
		}
		
		return mv; 
	}
	
	/**
	 * 댓글 상세 보기
	 * 두개다 동시에 이용가능 
	 * @param reNum
	 */
	@RequestMapping(value="replyContent.do")
	public ModelAndView replyContent(HttpSession session, HttpServletRequest request) {
		String reNum = (String) request.getParameter("seq");
		System.out.println("test replyContent seq" + reNum);
		
		dto = service.replyContent(reNum);
		
		ModelAndView mv = new ModelAndView();
		
		if(reNum != null) {
			mv.addObject("reNum", dto.getReNum());
			mv.addObject("reCon",dto.getReCon());
			mv.addObject("docNum",dto.getDocNum());
			mv.addObject("userid",dto.getuserid());
			mv.setViewName("");
		} else {
			mv.addObject("댓글 상세 보기 오류 ");
			mv.setViewName("");
		}
		
		return mv;
	}
	
	/**
	 * 
	 * @param session
	 * @param request
	 * @return
	 * 
	 * userid가 일치해야지만 수정가능
	 * 
	 * 같은 내용을 사용 가능하므로 --> replyContent이용 
	 * input type="text" value="칼럼명"
	 * recon을 제외하고는 변하지않으므로 나머지는 위와 같은 방법을 사용  
	 * 
	 */
	@RequestMapping(value="replyUpdateView.do")
	public ModelAndView replyUpdateView(HttpSession session, HttpServletRequest request) {
		String userid = (String) session.getAttribute("userid");
		String userid2 = (String) request.getParameter("userid");
		String reNum = (String) request.getParameter("seq"); //버튼에다가 달아둘것 
		
		ModelAndView mv = new ModelAndView();
		
		if(userid == userid2) {
			
			dto = service.replyContent(userid);
			
			if(reNum != null) {
				mv.addObject("reNum", dto.getReNum());
				mv.addObject("reCon",dto.getReCon());
				mv.addObject("docNum",dto.getDocNum());
				mv.addObject("userid",dto.getuserid());
				mv.setViewName("");
			} else {
				mv.addObject("댓글 상세 보기 오류 ");
				mv.setViewName("reply");
			}
			
		} else {
				
			 	mv.addObject("댓글 수정 뷰 에러");
			 	mv.setViewName("");
		}
		
		return mv;
	}
	
	@RequestMapping(value="replyUpdate.do")
	public ModelAndView replyUpdate(HttpSession session, HttpServletRequest request) {
		String reNum = (String) request.getParameter("seq");
		String reCon = (String) request.getParameter("reCon");
		String docNum = (String) request.getParameter("docNum");
		String userid = (String) request.getParameter("userid");
		
		ModelAndView mv = new ModelAndView();
		
		int replyUpdate = service.replyUpdate(reNum,reCon);
		
		if(replyUpdate>0) {
			mv.setViewName("");
		} else {
			mv.setViewName("");
		}
		
		return mv;
	}
	
	@RequestMapping(value="replyDelete") 
	public ModelAndView replyDelete(HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	

}