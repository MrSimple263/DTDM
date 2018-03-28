package com.example.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
@Repository
public class News_DAO extends JdbcDaoSupport{
    @Autowired
    public News_DAO (DataSource dataSource){
        this.setDataSource(dataSource);
    }
    public int getid(){
        String SQL="select LAST_INSERT_ID()";
        int idnews=Integer.parseInt(getJdbcTemplate().queryForObject(SQL,String.class));
        return idnews;
    }
    public void insert(News news){
        String SQL="insert into page(title,content,des) " +
                "values(?,?,?)";
        this.getJdbcTemplate().update(SQL,news.title,news.content,news.des);
    }
    public void update(News news){
        String SQL="UPDATE page SET tile=?,content=?,des=? " +
                "where id=?";
        this.getJdbcTemplate().update(SQL,news.title,news.content,news.des,news.id);
    }
    public void delete(String id){
        String SQL="DELETE  FROM page WHERE id=?";
        this.getJdbcTemplate().update(SQL,id);
    }
}
