package com.sep.AuthorizationProviderServer.controller;


import java.util.ArrayList;
import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sep.AuthorizationProviderServer.model.Permission;
import com.sep.AuthorizationProviderServer.model.Privilege;
import com.sep.AuthorizationProviderServer.service.PrivilegeService;


@RestController
@RequestMapping("/privileges")
public class PrivilegeController {

	private final PrivilegeService privilegeService;
	
	@Autowired
	public PrivilegeController(PrivilegeService privilegeService) {
		this.privilegeService = privilegeService;
	}
	
	@PostMapping("/add")
	@ResponseBody
	@Permission(permissionName = "createPrivilege")
	public Privilege createPrivilege(@RequestBody @Valid Privilege privilege){
		return privilegeService.save(privilege);
	}
	
	@PutMapping("/update")
	@ResponseBody
	@Permission(permissionName = "updatePrivilege")
	public Privilege updatePrivilege(@RequestBody @Valid Privilege privilege){
		return privilegeService.updatePrivilege(privilege);
	}
	
	@GetMapping("/{privilegeId}")
	@ResponseBody
	@Permission(permissionName = "readPrivilege")
	public Privilege getPrivilege(@PathVariable("privilegeId") Long privilegeId){
		return privilegeService.getOne(privilegeId);
	}
	
	@GetMapping
	@ResponseBody
	@Permission(permissionName = "readPrivileges")
	public Collection<Privilege> getAllPrivileges(){
		return privilegeService.getAllPrivileges();
	}
	
	@GetMapping("/forRole/{roleName}")
	@ResponseBody
	//@Permission(permissionName = "readPrivileges")
	public ArrayList<String> getPrivilegesForRole(@PathVariable("roleName") String roleName){
		return privilegeService.getPrivilegesForRole(roleName);
	}

	
	@DeleteMapping("/delete/{privilegeId}")
	@Permission(permissionName = "removePrivilege")
	public void deletePrivilege(@PathVariable("privilegeId") Long privilegeId){
		privilegeService.deletePrivilege(privilegeId);
	}
	
}
