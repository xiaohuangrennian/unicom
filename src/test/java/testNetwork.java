import com.pojo.NetworkPo;
import com.service.NetworkPoService;
import com.service.NetworkPoServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testNetwork {
    @Test
    public void test1(){

        NetworkPoService networkPoService = (NetworkPoServiceImpl)new NetworkPoServiceImpl();

        //
        for(NetworkPo networkPo : networkPoService.selectAll()){
            System.out.println(networkPo);
        }
    }
}
