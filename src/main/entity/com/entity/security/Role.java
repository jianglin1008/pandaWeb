package com.entity.security;

import java.util.List;

/**
 * User Role Name
 * @author Allen
 *
 */
public class Role {
	
	private String roleName;
	private List<Permission> permissions;

	public List<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(List<Permission> permissions) {
		this.permissions = permissions;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
