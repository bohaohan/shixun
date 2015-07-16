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
	// 声明成员变量
	private List<Users> list;// 声明用户名数据表实例
	private Users users;// 声明用户实例
	private UserService userService;// 获取接口实例

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
	// 用户名密码验证
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

	// 存储用户信息
	public String save() throws Exception {
		this.userService.save(this.users);
		return SUCCESS;
	}

	// 返回单个用户的信息
	public String findSingle() throws Exception {
		this.userService.findByUsername(this.users.getUsername());
		return SUCCESS;
	}
}