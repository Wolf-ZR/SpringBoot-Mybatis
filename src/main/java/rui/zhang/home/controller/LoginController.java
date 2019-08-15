package rui.zhang.home.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import rui.zhang.home.model.User;
import rui.zhang.home.service.UserService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/")
    public String login(ModelMap map){
        map.addAttribute("info","");
        return "index";
    }
    @RequestMapping("/findName")
    @ResponseBody
    public String findName(@RequestParam("username")String name){
        if(name==null){
            return null;
        }
        Map<String,Object> map=new HashMap<>();
        List<User> users=userService.queryUserByName(name);
        if(users.size()>0){
            map.put("result","success");
        }else {
            map.put("result","fail");
        }
        String s=JSON.toJSONString(map);
        return s;
    }
    @RequestMapping("/camara")
    public String photo(ModelMap map, @RequestParam("username") String name,
                        @RequestParam("password")String pass){
        if(name==null||pass==null){
            return "index";
        }
        List<User> users=userService.queryUserByName(name);
        for (User user:users
             ) {
            if(user.getName().equals(name)&&user.getPassword().equals(pass)){
                return "camara";
            }
        }
        map.addAttribute("info","无此用户，请注册！");
        return "index";
    }
    @RequestMapping("/sign")
    public String sign(ModelMap map, @RequestParam("username") String name,
                       @RequestParam("password")String pass){
        User user=new User(1,name,pass);
        List<User> users=userService.queryUserByName(name);
        if(users.size()>0){
            map.addAttribute("info","此用户已存在！");
            return "index";
        }
        userService.insertUser(user);
        map.addAttribute("info","注册成功，请登录...");
        return "index";
    }
}
