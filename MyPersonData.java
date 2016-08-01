package jp.tuyano.spring.data1;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="mypersondata")
public class MyPersonData {
@Id
@Column
@GeneratedValue(strategy =GenerationType.AUTO)
private Long id;

@Column(length=50,nullable=false)
private String password;
public  MyPersonData(){
}
public MyPersonData(String password){
	this();
	this.password=password;
}
public String getPassword(){
	return password;
}
public void setPassword(String password){
	this.password=password;
}
public Long getId(){
	return id;
}
@Override
public String toString(){
	return "MyPersonData[id="+id+",password="+password+"]";
}
}
