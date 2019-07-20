import com.au.ct.producer.bean.LocalFileProducer;
import com.au.ct.producer.io.LocalFileDataIn;
import com.au.ct.producer.io.LocalFileDataOut;

import java.io.IOException;

/**
 * @ClassName Bootstrap
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:21
 * @Description 生产者启动类
 **/
public class Bootstrap {
    public static void main(String[] args) throws IOException {
        if (args.length < 2) {
            System.out.println("参数输入错误，请按照固定格式输入参数：java -jar xxx.jar 类全限定名  inpath outpath");
            System.exit(-1);
        }
        // 创建生产者对象
        LocalFileProducer producer = new LocalFileProducer();
//        producer.setDataIn(new LocalFileDataIn("C:\\Users\\13014\\Desktop\\其他\\电信\\2.资料\\辅助文档\\contact.log"));
//        producer.setDataOut(new LocalFileDataOut("C:\\Users\\13014\\Desktop\\其他\\电信\\2.资料\\辅助文档\\call.log"));
        producer.setDataIn(new LocalFileDataIn(args[0])); // 联系人文件
        producer.setDataOut(new LocalFileDataOut(args[1])); // 通话日志文件
        // 生产数据
        producer.produce();

        // 关闭生产者对象
        producer.close();
    }
}
