package Action;

import java.util.List;

import Dao.Users;
import Service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class ListUserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// ������Ա����
	private List<Users> list;// �����û������ݱ�ʵ��
	private Users users;// �����û�ʵ��
	private UserService userService;// ��ȡ�ӿ�ʵ��

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<Users> getList() {
		return list;
	}

	public void setList(List<Users> list) {
		this.list = list;
	}

	@Override
	// �û���������֤
	public String execute() throws Exception {
		list = userService.findAllUser();
		for (Users user : list) {
			if (user.getUsername().equals(users.getUsername())
					&& user.getPassword().equals(users.getPassword())) {
				return SUCCESS;
			}
		}
		return ERROR;
	}

	// �洢�û���Ϣ
	public String save() throws Exception {
		this.userService.save(this.users);
		return SUCCESS;
	}

	// ���ص����û�����Ϣ
	public String findSingle() throws Exception {
		this.userService.findByUsername(this.users.getUsername());
		return SUCCESS;
	}
}