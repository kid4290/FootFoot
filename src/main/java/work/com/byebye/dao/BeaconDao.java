package work.com.byebye.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import work.com.byebye.dto.BeaconDto;


@Repository
public class BeaconDao {
	/* spring di : setter injection */
	private FactoryDAODataSource factory;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	public void setFactory(FactoryDAODataSource factory) {
		this.factory = factory;
	}

	private static BeaconDao instance = new BeaconDao();

	public static BeaconDao getInstance() {
		return instance;
	}

	private BeaconDao() {}

	public List<BeaconDto> getBeaconList() {
		return sqlSession.selectList("getBeaconList");
	}

	public List<BeaconDto> getBeaconResult(ArrayList<String> macList) {
		HashMap<String, ArrayList> temp = new HashMap<String, ArrayList>();
		temp.put("macList", macList);
		return sqlSession.selectList("getBeaconResult", temp);
	}


}
