package examples.copy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class management_of_emp_simpler_with_exception {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Scanner sc = new Scanner(System.in);
		String sql = "";
		// 1. DB����̹� �ε�

		while (true) {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Oracle ����̹� �ε� ����");

			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// 2. �����ͺ��̽��� ����
			conn = DriverManager.getConnection(url, user, pw);
			System.out.println("�����ͺ��̽��� �����߽��ϴ�");

			System.out.println("----------------------------------");
			System.out.println("1.�Է� 2.���� 3.���� 4.����Ʈ 5.�˻�\n6.����â���� ���ư��� 7. ����");
			System.out.println("----------------------------------");

			try_catch(pstmt, conn);
		}
	}

	static void insert(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		ResultSet rs = null;
		System.out.println("�����ȣ  �Է�>>");
		int empno = sc.nextInt();
		sc.nextLine();
		System.out.println("��� �̸� �Է�>>");
		String ename = sc.nextLine();
		System.out.println("�޿� �Է�>>");
		String sal = sc.nextLine();
		System.out.println("���� �Է�>>");
		String job = sc.nextLine();
		String sql = "insert into emp (empno, ename,sal,job)" + " values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, empno);
		pstmt.setString(2, ename);
		pstmt.setString(3, sal);
		pstmt.setString(4, job);

		int resultCnt = pstmt.executeUpdate();
		if (resultCnt > 0) {
			System.out.println("���������� �ԷµǾ����ϴ�");
			System.out.println(resultCnt + "���� �ԷµǾ����ϴ�");
		} else {
			System.out.println("�Է��� ���� �ʾҽ��ϴ�\nȮ�� �� ��õ����ּ���");
		}
	}

	static void delete(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		System.out.println("�����ȣ  �Է�>>");
		int empno = sc.nextInt();
		sc.nextLine();

		String sql = "delete from emp where empno='" + empno + "'";
		pstmt = conn.prepareStatement(sql);

		int resultCnt = pstmt.executeUpdate();
		if (resultCnt > 0) {
			System.out.println("���������� �����Ǿ����ϴ�");
		} else {
			System.out.println("������ ���� �ʾҽ��ϴ�\nȮ�� �� ��õ����ּ���");
		}
	}

	static void modify(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		ResultSet rs = null;
		System.out.println("������ ������ �����ȣ  �Է�>>");
		int empno = sc.nextInt();
		sc.nextLine();

		System.out.println("��� �̸� �Է�>>");
		String ename = sc.nextLine();
		System.out.println("�޿� �Է�>>");
		String sal = sc.nextLine();
		System.out.println("���� �Է�>>");
		String job = sc.nextLine();

//			sql = "update emp set ename='"+ename+"' and job='"+job+"'"
//					+ " where empno="+empno;
		String sql = "update emp set ename=?, sal=?, job=?" + " where empno=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ename);
		pstmt.setString(2, sal);
		pstmt.setString(3, job);
		pstmt.setInt(4, empno);
		// ���� ������ ����
//		pstmt.setInt(1, 10);
		rs = pstmt.executeQuery();

	}

	static void print(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		ResultSet rs = null;
		String sql = "select * from emp";
		pstmt = conn.prepareStatement(sql);// �޼���� prepare~
		// ���� ������ ����
//		pstmt.setInt(1, 10);
		rs = pstmt.executeQuery();
		System.out.println("��� ����Ʈ");
		System.out.println("==================================");
		// ResultSet->��� ����
		while (rs.next()) {
			System.out.print(rs.getInt("empno") + "\t");
			System.out.print(rs.getString("ename") + "\t");
			System.out.print(rs.getString("sal") + "\t");
			System.out.print(rs.getString("job") + "\n");
		}
		System.out.println("==================================");

	}

	static void search(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		ResultSet rs = null;
		System.out.println("�̸� �Է�>>");
		String ename = sc.nextLine();
		String sql = "select * from emp where ename='" + ename + "'";
//		String sql="select * from emp where ename like '%'||?||'";
		//Oracle
		//select * from emp where ename like '%'||?||'%'
		pstmt = conn.prepareStatement(sql);// �޼���� prepare~
		// ���� ������ ����
//		pstmt.setInt(1, 10);
		rs = pstmt.executeQuery();
		System.out.println("��� ����Ʈ");
		System.out.println("==================================");
		// ResultSet->��� ����
		while (rs.next()) {
			System.out.print(rs.getInt("empno") + "\t");
			System.out.print(rs.getString("ename") + "\t");
			System.out.print(rs.getString("sal") + "\t");
			System.out.print(rs.getString("job") + "\n");
//			System.out.print(rs.getString("hiredate").substring(0,10)+"\t");
		}
		System.out.println("==================================");

	}

	static void try_catch(PreparedStatement pstmt, Connection conn) throws SQLException {
		Scanner sc = new Scanner(System.in);
		ResultSet rs = null;
		try {
			int choice = sc.nextInt();

			switch (choice) {
			case 1:
				insert(pstmt, conn);
				break;
			case 2:
				modify(pstmt, conn);
				break;
			case 3:
				delete(pstmt, conn);
				break;
			case 4:
				print(pstmt, conn);
				break;
			case 5:
				search(pstmt, conn);
				break;
			case 7:
				System.exit(0);
			}

		} finally {
			// 4.�����ͺ��̽� ���� ����
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		}
	}
}