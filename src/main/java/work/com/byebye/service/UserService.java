package work.com.byebye.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import work.com.byebye.dao.UserDao;

@Service
public class UserService {
   private UserDao userdao;
   
   @Autowired
   public void setDao(UserDao userdao) {
      this.userdao = userdao;
   }
   
   public UserService() {}
   
   public String loginCheck(String userid) {
      return userdao.loginCheck(userid);
   }

   public int insertKakao(String userid, String nickname, String userimg, String grade) {
      return userdao.insertKakao(userid, nickname, userimg, grade);
   }
   
   public int insertNaver(String userid, String nickname, String userimg, String grade) {
      return userdao.insertNaver(userid, nickname, userimg, grade);
   }
   
   public int insertFacebook(String userid, String nickname, String userimg, String grade) {
      return userdao.insertFacebook(userid, nickname, userimg, grade);
   }
   
}