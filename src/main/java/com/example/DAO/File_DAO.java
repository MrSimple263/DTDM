package com.example.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class File_DAO extends JdbcDaoSupport {
    @Autowired
    public File_DAO (DataSource dataSource){
        this.setDataSource(dataSource);
    }
    public void insert(String linkfile,int idnews){
            String SQL="insert into tep(link, pageid) " +
                    "values(?,?)";
                this.getJdbcTemplate().update(SQL,linkfile,idnews);

    }
}
