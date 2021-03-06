package cn.itcast.itcaststore.dao;

import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.itcaststore.domain.Similar;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.utils.DataSourceUtils;

public class SimilarDao {
	public void addSimilar(String user1,String user2,double score) throws SQLException{
    	String sql = "insert into similar(id,simi,score) value(?,?,?)";
    	QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, user1, user2, score);
    }
	
	public void delSimilar() throws SQLException{
		String sql = "delete from similar";
    	QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql);
	}
	
	public Similar findSimilarById(String id) throws SQLException{
		String sql = "select * from `similar` where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<Similar>(Similar.class),id);
	}
}
