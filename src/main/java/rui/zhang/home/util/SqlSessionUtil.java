package rui.zhang.home.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class SqlSessionUtil {
    private static String path="mybatis-config.xml";
    private static InputStream inputStream=null;
    private static SqlSessionFactory sessionFactory=null;
    static {
        try {
            inputStream=Resources.getResourceAsStream(path);
            sessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static SqlSessionFactory getSessionFactory(){
        if(sessionFactory!=null){
            return sessionFactory;
        }else {
            sessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
            return sessionFactory;
        }
    }

}
