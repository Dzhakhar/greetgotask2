package dbmanage;
import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class StudentInsert {
	private Student student;
	private Reader reader;
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession session;

	public StudentInsert() throws IOException {
		reader = Resources.getResourceAsReader("SqlMapConfig.xml");
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		session = sqlSessionFactory.openSession();
	}

	public void insert(String name, String surname, String email) throws IOException {
		student = new Student(name, surname, email);
		session.insert("Student.insert", this.student);
		session.commit();
		session.close();
	}

	public void remove(){

	}

	public static void main(String args[]) throws IOException {
	}
}
