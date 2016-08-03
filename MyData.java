package jp.tuyano.eclipsebook;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: MyData
 *
 */
@Entity

public class MyData implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String mail;
	private String tel;
	private static final long serialVersionUID = 1L;

	public MyData() {
		super();
	}   
	public MyData(String name,String mail,String tel) {
		this.name = name;
		this.mail=mail;
		this.tel=tel;
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}   
	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}   
	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
   @Override
   public String toString(){
	   return "MyData[id="+id+",name="+name+",mail+"+mail+",tel="+tel+"]";
   }
}
