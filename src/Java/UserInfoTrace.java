package Java;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * @auther VingtDylan
 * @date 2019/6/6 1:57
 * Keep it simple and stupid!
 */
public class UserInfoTrace implements javax.servlet.http.HttpSessionBindingListener{
    private String user;
    private UserInfoList container=UserInfoList.getInstance();

    public UserInfoTrace(){
        user="";
    }

    public void setUser(String user){
        this.user=user;
    }

    public String getUser(){
        return this.user;
    }

    public void valueBound(HttpSessionBindingEvent arg0){
        System.out.println("["+this.user+"]上线");
    }

    public void valueUnbound(HttpSessionBindingEvent arg0){
        System.out.println("["+this.user+"]下线");
        if(user!=null){
            container.removeUserInfo(user);
        }
    }
}
