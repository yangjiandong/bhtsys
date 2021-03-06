/**
 *功能说明：系统参数管理
 * @author jacobliang
 * @time @Jul 26, 2010 @4:54:52 PM
 */
package com.bhtec.action.uum.group.usergroup;

import static com.bhtec.common.constant.ActionVariable.USER;
import static com.bhtec.common.constant.ActionVariable.USER_GROUP;
import static com.bhtec.common.constant.Common.BUSI_LIST;
import static com.bhtec.common.constant.Common.TOTAL_PROPERTY;
import static com.bhtec.common.constant.Common.USER_CODE;
import static com.bhtec.common.constant.PojoVariable.UUM_GROUP;
import static com.bhtec.common.constant.PojoVariable.UUM_GROUP_MEMBER;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import com.bhtec.action.platform.PlatformBaseAction;
import com.bhtec.domain.pojo.uum.UumGroup;
import com.bhtec.domain.pojo.uum.UumGroupMember;
import com.bhtec.domain.pojo.uum.UumRole;
import com.bhtec.domain.pojo.uum.UumUser;
import com.bhtec.exception.ApplicationException;
import com.bhtec.exception.SystemException;
import com.bhtec.service.iface.uum.group.usergroup.UserGroupService;
import com.bhtec.service.iface.uum.role.RoleOrganService;
import com.bhtec.service.iface.uum.user.UserService;
import com.opensymphony.xwork2.ModelDriven;

public class UserGroupAction extends PlatformBaseAction implements ModelDriven<UumGroup> {
	private static final long serialVersionUID = 10000L;
	Logger log = Logger.getLogger(this.getClass());
	private UumGroup uumGroup = new UumGroup();
	private String failMesg;
	private List<Long> uumGroupListStr;
	private List<UumGroup> uumGroupList;
	private List<UumGroupMember> uumGroupMemberList;
	private int count;
	private String disEnableFlag;
	private boolean disEnableBol;
	private boolean groupNameIsExist;
	
	private UserGroupService userGroupService;
	private RoleOrganService roleOrganService;
	private UserService userService;
	
	private List<UumRole> roleList;
	private long organId;
	private long roleId;
	private List<UumUser> userList;
	/**
	 * 功能说明：保存用户组
	 * @author jacobliang
	 * @param uumGroup		用户组对象
	 * @throws ApplicationException
	 * @time Jan 24, 2011 4:10:06 PM
	 */
	public void saveUumGroup() {
		try {
			userGroupService.setHttpServletRequest(this.getHttpServletRequest());
			long id = this.getPrimaryKeyByPojoName(UUM_GROUP);
			uumGroup.setGroupId(id);
			uumGroup.setGroupType(USER_GROUP);
			uumGroup.setCreateDate(new Date());
			uumGroup.setCreator((String)getHttpServletRequest().getSession().getAttribute(USER_CODE));
			Set<UumGroupMember> uumGroupMemberSet = new HashSet<UumGroupMember>();
			if(uumGroupListStr != null && !uumGroupListStr.isEmpty()){
				for(int i=0,j=uumGroupListStr.size();i<j;i++){
					Long memberResourceId = uumGroupListStr.get(i);
					if(memberResourceId != null){
						UumGroupMember uumGroupMember = new UumGroupMember();
						long groupMemberId = this.getPrimaryKeyByPojoName(UUM_GROUP_MEMBER);
						uumGroupMember.setGroupMemberId(groupMemberId);
						uumGroupMember.setUumGroup(uumGroup);
						uumGroupMember.setGroupMemberType(USER);
						uumGroupMember.setMemberResourceId(memberResourceId);
						uumGroupMemberSet.add(uumGroupMember);
					}
				}
				uumGroup.setUumGroupMembers(uumGroupMemberSet);
			}
			userGroupService.saveUumGroup(uumGroup);
			this.returnSuccess();
		}catch (ApplicationException e) {
			e.printStackTrace();
			this.returnFailur(e.toString());
		}catch (SystemException e) {
			e.printStackTrace();
			this.returnFailur(this.ERROR);
		}
	}
	
	/**
	 * 功能说明：根据用户组ID查询用户组
	 * @author jacobliang
	 * @return
	 * @throws 
	 * @time Dec 1, 2010 2:51:21 PM
	 */
	public String findUumGroupById(){
		uumGroup = userGroupService.findUumGroupById(new Long(getModViewRecId()));
		return this.SUCCESS;
	}
	/**
	 * 功能说明：修改系统参数
	 * @author jacobliang
	 * @throws 
	 * @time Dec 1, 2010 2:51:21 PM
	 */
	public void modifyUumGroup(){
		try {
			userGroupService.setHttpServletRequest(this.getHttpServletRequest());
			Set<UumGroupMember> uumGroupMemberSet = new HashSet<UumGroupMember>();
			if(uumGroupListStr != null && !uumGroupListStr.isEmpty()){
				for(int i=0,j=uumGroupListStr.size();i<j;i++){
					Long memberResourceId = uumGroupListStr.get(i);
					if(memberResourceId != null){
						UumGroupMember uumGroupMember = new UumGroupMember();
						long groupMemberId = this.getPrimaryKeyByPojoName(UUM_GROUP_MEMBER);
						uumGroupMember.setGroupMemberId(groupMemberId);
						uumGroupMember.setUumGroup(uumGroup);
						uumGroupMember.setGroupMemberType(USER);
						uumGroupMember.setMemberResourceId(memberResourceId);
						uumGroupMemberSet.add(uumGroupMember);
					}
				}
				uumGroup.setUumGroupMembers(uumGroupMemberSet);
			}
			uumGroup.setUumGroupMembers(uumGroupMemberSet);
			uumGroup.setGroupType(USER_GROUP);
			userGroupService.modifyUumGroup(uumGroup);
			this.returnSuccess();
		} catch (ApplicationException e) {
			e.printStackTrace();
			this.returnFailur(e.toString());
		}catch (SystemException e) {
			e.printStackTrace();
			this.returnFailur(this.ERROR);
		}
	}
	/**
	 * 功能说明：根据组名称查询组信息
	 * @author jacobliang
	 * @return Map 1 list 2 总数
	 * @throws 
	 * @time Dec 22, 2010 2:51:21 PM
	 */
	public String findUserGroupByCon(){
		List<UumUser> uumUserList = userService.findAllUser();//hibernate 查询出现问题，不在service层查询
		Map map = userGroupService.findUserGroupByCon(getStart(),getLimit(),uumGroup.getGroupName(),uumUserList);
		uumGroupList = (List<UumGroup>)map.get(BUSI_LIST);
		count = (Integer)map.get(TOTAL_PROPERTY);
		return this.SUCCESS;
	}
	
	/**
	 * 功能说明：根据参数名称查找系统参数
	 * @author jacobliang
	 * @return
	 * @time Dec 10, 2010 8:39:15 PM
	 */
	public String findGroupNameIsExist(){
		groupNameIsExist = userGroupService.findGroupNameIsExist(uumGroup.getGroupName(),USER_GROUP);
		return this.SUCCESS;
	}
	
	/**
	 * 功能说明：根据大类代码查询所有小类
	 * @author jacobliang
	 * @return
	 * @time Dec 21, 2010 8:39:15 PM
	 */
	public String findGroupByGroupId(){
		uumGroupMemberList = userGroupService.findGroupByGroupId(uumGroup.getGroupId());
		return this.SUCCESS;
	}
	
	/**
	 * 功能说明：停用启用
	 * @author jacobliang
	 * @return boolean	true为停用启用成功，false不能停用
	 * @throws 
	 * @time Sep 22, 2010 1:29:34 PM
	 */
	public String disEnableGroup()throws ApplicationException{
		try {
			userGroupService.setHttpServletRequest(this.getHttpServletRequest());
			disEnableBol = userGroupService.disEnableGroup(new Long(getModViewRecId()), disEnableFlag);
		} catch (NumberFormatException e) {
			e.printStackTrace();		
			log.error("disEnableModule() is not number. ", e);
			failMesg = this.ERROR;
		} catch (ApplicationException e) {
			e.printStackTrace();
			failMesg = e.toString();
		}catch (SystemException e) {
			e.printStackTrace();
			failMesg = this.ERROR;
		}
		return this.SUCCESS;
	}
	/**
	 * 功能说明：根据机构ID查询角色列表
	 * @author jacobliang
	 * @return
	 * @time Jan 25, 2011 11:49:20 AM
	 */
	public String findRoleListByOrganId(){
		Map map = roleOrganService.findSelectedRoleByOrgId(getStart(),getLimit(), organId, null);
		roleList = (List<UumRole>)map.get(BUSI_LIST);
		count = (Integer)map.get(TOTAL_PROPERTY);
		if(roleList != null){
			for(UumRole uumRole:roleList){
				uumRole.setRoleId(uumRole.getRoleId());
				uumRole.setRoleName(uumRole.getRoleName());
			}
		}
		return this.SUCCESS;
	}
	
	/**
	 * 功能说明：根据机构ID角色ID和用户ID查询用户信息
	 * @author jacobliang
	 * @param orgId		机构ID
	 * @param roleId	角色ID
	 * @return
	 * @time Jan 26, 2011 9:15:05 AM
	 */
	public String findOrganRoleRefByOrgRolId(){
		try {
			userList = userGroupService.findUserByOrgRolId(organId, roleId);
		} catch (ApplicationException e) {
			e.printStackTrace();
			failMesg = e.toString();
		}catch (SystemException e) {
			e.printStackTrace();
			failMesg = this.ERROR;
		}
		return this.SUCCESS;
	}

	public UumGroup getModel() {
		return uumGroup;
	}

	public String getFailMesg() {
		return failMesg;
	}

	public void setFailMesg(String failMesg) {
		this.failMesg = failMesg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getDisEnableFlag() {
		return disEnableFlag;
	}

	public void setDisEnableFlag(String disEnableFlag) {
		this.disEnableFlag = disEnableFlag;
	}

	public boolean getDisEnableBol() {
		return disEnableBol;
	}

	public void setDisEnableBol(boolean disEnableBol) {
		this.disEnableBol = disEnableBol;
	}

	public void setUserGroupService(UserGroupService userGroupService) {
		this.userGroupService = userGroupService;
	}

	public void setGroupNameIsExist(boolean groupNameIsExist){
		this.groupNameIsExist = groupNameIsExist;
	}
	
	public boolean getGroupNameIsExist(){
		return this.groupNameIsExist;
	}

	public List<UumGroup> getUumGroupList() {
		return uumGroupList;
	}

	public void setUumGroupList(List<UumGroup> uumGroupList) {
		this.uumGroupList = uumGroupList;
	}

	public List<UumGroupMember> getUumGroupMemberList() {
		return uumGroupMemberList;
	}

	public void setUumGroupMemberList(
			List<UumGroupMember> uumGroupMemberList) {
		this.uumGroupMemberList = uumGroupMemberList;
	}

	public void setRoleOrganService(RoleOrganService roleOrganService) {
		this.roleOrganService = roleOrganService;
	}

	public long getOrganId() {
		return organId;
	}

	public void setOrganId(long organId) {
		this.organId = organId;
	}

	public List<UumRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<UumRole> roleList) {
		this.roleList = roleList;
	}

	public long getRoleId() {
		return roleId;
	}

	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	public List<UumUser> getUserList() {
		return userList;
	}

	public void setUserList(List<UumUser> userList) {
		this.userList = userList;
	}

	public List<Long> getUumGroupListStr() {
		return uumGroupListStr;
	}

	public void setUumGroupListStr(List<Long> uumGroupListStr) {
		this.uumGroupListStr = uumGroupListStr;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
