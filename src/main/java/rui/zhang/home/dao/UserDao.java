package rui.zhang.home.dao;

import com.mysql.cj.Session;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Repository;
import rui.zhang.home.model.User;
import rui.zhang.home.util.SqlSessionUtil;

import java.util.List;

@Repository
public class UserDao {
    Logger logger= LogManager.getLogger(UserDao.class);
    /**
     * 添加用户
     */
    public int insertUser(User user){
        SqlSession sqlSession=null;
        int i=0;
        try {
            sqlSession= SqlSessionUtil.getSessionFactory().openSession();
            i=sqlSession.insert("mapper.UserMapper.insertUser",user);
            sqlSession.commit();
        } catch (Exception e) {
            sqlSession.rollback();
            logger.error(e);
            e.printStackTrace();
        } finally {
            if (sqlSession!=null)
                sqlSession.close();
        }
        return i;
    }
    /**
     * 批量添加用户
     * @param users
     * @return
     */
    public int insertBlogMany(List<User> users){
        SqlSession sqlSession=null;
        int i=0;
        try {
            sqlSession= SqlSessionUtil.getSessionFactory().openSession();
            i=sqlSession.insert("mapper.UserMapper.insertUsers",users);
            sqlSession.commit();
        } catch (Exception e) {
            sqlSession.rollback();
            logger.error(e);
            e.printStackTrace();
        } finally {
            if (sqlSession!=null)
                sqlSession.close();
        }
        return i;
    }
    /**
     * 按姓名查询用户
     */
    public List<User> selectUserByName(String name){
        if(name==null){
            return null;
        }
        SqlSession sqlSession=null;
        List<User> users=null;
        try {
            sqlSession=SqlSessionUtil.getSessionFactory().openSession();
            users=sqlSession.selectList("mapper.UserMapper.selectByNameAndPass",name);
        }catch (Exception e){
            logger.error(e);
            e.printStackTrace();
        }finally {
            if(sqlSession!=null)
                sqlSession.close();
        }
        return users;
    }

    /**
     * 根据姓名删除用户
     * @param name
     * @return
     */
    public int deleteUser(String name){
        SqlSession sqlSession=null;
        int i=0;
        try {
            sqlSession=SqlSessionUtil.getSessionFactory().openSession();
            i=sqlSession.delete("mapper.UserMapper.deleteByName",name);
            sqlSession.commit();
        }catch (Exception e){
            logger.error(e);
            sqlSession.rollback();
            e.printStackTrace();
        }finally {
            if(sqlSession!=null){
                sqlSession.close();
            }
        }
        return i;
    }
}
