package com.sist.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBManager;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	private MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}

	/*public Connection openConn() {
		
		try {

			// 1. JNDI 서버 객체 생성
			InitialContext ic = new InitialContext();
			// 2. lookup() 메서드를 이용하여 매칭되는 커넥션을 찾는다.
			DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
			// 3. DataSource 객체를 이용하여 커넥션 객체를 하나 가져온다.
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
		
	}

	public void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public  void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/

	
	public int loginProcess(String id, String pwd) {
		sql = "select * from member00 where mem_email=? and mem_pwd=?";
		conn = DBManager.openConn();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return result;
		
	}

	public MemberVO getMember(String id) {
		sql = "select * from member00 where mem_email=?";
		MemberVO mVo = null;
		
		try {
			conn = DBManager.openConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setMem_email(rs.getString(1));
				mVo.setMem_pwd(rs.getString(2));
				mVo.setMem_name(rs.getString(3));
				mVo.setMem_state(rs.getInt(4));
				mVo.setMem_vote(rs.getString(5));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return mVo;
	}

	public int insertMember(MemberVO vo) {
		sql = "insert into member00 values(?,?,?,?, 1,'')";
		   
		conn = DBManager.openConn();
		
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMem_email());
			pstmt.setString(2, vo.getMem_pwd());
			pstmt.setString(3, vo.getMem_name());
			pstmt.setInt(4, vo.getMem_phone());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	
		return result;

	}

	public int checkMember(String mem_name, int mem_phone) {
		sql = "select * from member00 where mem_name=? and mem_phone=?";
		conn = DBManager.openConn();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_name);
			pstmt.setInt(2, mem_phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return result;

	}
	
	public int checkMember(int mem_phone) {
		sql = "select * from member00 where mem_phone=?";
		conn = DBManager.openConn();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mem_phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return result;

	}

	public String getIdByPhoneNumber(int phone) {
		sql = "select * from member00 where mem_phone = ?";
		
		conn = DBManager.openConn();
		String userid = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				userid= rs.getString(1);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return userid;
		
	}

	public MemberVO getInfoByPhone(int mem_phoneInt) {
		sql = "select * from member00 where mem_phone = ?";
		
		conn = DBManager.openConn();
		MemberVO mVo = new MemberVO();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mem_phoneInt);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mVo.setMem_email(rs.getString(1));
				mVo.setMem_pwd(rs.getString(2));
				mVo.setMem_name(rs.getString(3));
				mVo.setMem_phone(rs.getInt(4));
				mVo.setMem_state(rs.getInt(5));
				mVo.setMem_vote(rs.getString(6));
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return mVo;
	}

	public int checkMemberByEmail(String mem_email, int mem_phoneInt) {
		sql = "select * from member00 where mem_email=? and mem_phone=?";
		conn = DBManager.openConn();
		
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_email);
			pstmt.setInt(2, mem_phoneInt);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
	
		return result;
	}

	public void updateTempPwd(String temppwd, String email) {
		sql = "update member00 set mem_pwd = ? where mem_email = ?";
		conn = DBManager.openConn();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, temppwd);
			pstmt.setString(2, email);
			pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	
		
	}

	public void deleteMember(String mem_email) {
		sql = "delete from member00 where mem_email=?";
		conn = DBManager.openConn();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_email);
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	
	
}
