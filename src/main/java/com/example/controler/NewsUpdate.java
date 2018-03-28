package com.example.controler;

import com.example.DAO.News;
import com.example.DAO.News_DAO;
import com.example.DAO.uploaddrive;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
@Controller
public class NewsUpdate {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/updnews",method = RequestMethod.POST)
    public String upnews_post(Model model, HttpServletRequest request,
                          @RequestAttribute("file") MultipartFile[] file)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        News news=new News();
        news.setId(request.getParameter("id"));
        news.setTitle(request.getParameter("title"));
        news.setDes(request.getParameter("des"));
        news.setContent(request.getParameter("content"));
        news_dao.update(news);
        return "redirect:/News_List";
    }
    @RequestMapping(value = "/updnews",method = RequestMethod.GET)
    public String upnews_get(Model model, HttpServletRequest request,
                          @RequestAttribute("file") MultipartFile[] file)
            throws IOException {
        return "News_List";
    }
}
