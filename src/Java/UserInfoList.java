package Java;
import java.util.Vector;

/**
 * @auther VingtDylan
 * @date 2019/6/6 1:52
 * Keep it simple and stupid!
 */
public class UserInfoList {
    private static UserInfoList user = new UserInfoList();
    private Vector<String> vector=null;

    public UserInfoList(){
        this.vector=new Vector<>();
    }

    public static UserInfoList getInstance(){
        return user;
    }

    public boolean addUserInfo(String user){
        if(user!=null){
            this.vector.add(user);
            return true;
        }else {
            return false;
        }
    }

    public Vector<String> getList() {
        return vector;
    }

    public void removeUserInfo(String user){
        if(user!=null){
            vector.removeElement(user);
        }
    }
}
