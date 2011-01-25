<%@ page import="java.util.*" %>

<%@ page import="com.cloud.utils.*" %>

<%
    Locale browserLocale = request.getLocale();
    CloudResourceBundle t = CloudResourceBundle.getBundle("resources/resource", browserLocale);
%>

<div class="main_title" id="right_panel_header">
    <div class="main_titleicon">
        <img src="images/title_zoneicon.gif" /></div>
   <h1>
        Zone
    </h1>
</div>
<div class="contentbox" id="right_panel_content">
    <div class="info_detailbox errorbox" id="after_action_info_container_on_top" style="display: none">
        <p id="after_action_info">
        </p>
    </div>
    <div class="tabbox" style="margin-top: 15px;">
        <div class="content_tabs on" id="tab_details">
            <%=t.t("details")%></div>                     
    </div>
    
    <!-- Details tab (start)-->
    <div id="tab_content_details">
        <div id="tab_spinning_wheel" class="rightpanel_mainloader_panel" style="display: none;">
            <div class="rightpanel_mainloaderbox">
                <div class="rightpanel_mainloader_animatedicon">
                </div>
                <p>
                    Loading &hellip;</p>
            </div>
        </div>
        <div id="tab_container">
            <div class="grid_container">
                <div class="grid_header">
                    <div id="grid_header_title" class="grid_header_title">
                        Title</div>
                    <div class="grid_actionbox" id="action_link"><p>Actions</p>
                        <div class="grid_actionsdropdown_box" id="action_menu" style="display: none;">
                            <ul class="actionsdropdown_boxlist" id="action_list">
                                <li>
                                    <%=t.t("no.available.actions")%></li>
                            </ul>
                        </div>
                    </div>
                    <div class="gridheader_loaderbox" id="spinning_wheel" style="border: 1px solid #999;
                        display: none;">
                        <div class="gridheader_loader" id="icon">
                        </div>
                        <p id="description">
                            Waiting &hellip;</p>
                    </div>
                </div>
                <div class="grid_rows odd">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("ID")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="id">
                        </div>
                    </div>
                </div>
                <div class="grid_rows even">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("name")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="name">
                        </div>
                        <input class="text" id="name_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="name_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>
                <div class="grid_rows odd">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("dns1")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="dns1">
                        </div>
                        <input class="text" id="dns1_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="dns1_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>
                <div class="grid_rows even">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("dns2")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="dns2">
                        </div>
                        <input class="text" id="dns2_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="dns2_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>
                <div class="grid_rows odd">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("internaldns1")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="internaldns1">
                        </div>
                        <input class="text" id="internaldns1_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="internaldns1_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>
                <div class="grid_rows even">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("internaldns2")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="internaldns2">
                        </div>
                        <input class="text" id="internaldns2_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="internaldns2_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>                
                <div class="grid_rows odd">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("network.type")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="networktype">
                        </div>                             
                    </div>
                </div>                
                <div class="grid_rows even" id="vlan_container">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("vlan")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="vlan">
                        </div>
                        <input class="text" id="startvlan_edit" style="width: 100px; display: none;" type="text" />
	                    <div id="startvlan_edit_errormsg" style="display:none"></div>  	                    
	                    <input class="text" id="endvlan_edit" style="width: 100px; display: none;" type="text" />
	                    <div id="endvlan_edit_errormsg" style="display:none"></div>            
                    </div>
                </div>
                <div class="grid_rows odd" id="guestcidraddress_container">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("guestcidraddress")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="guestcidraddress">
                        </div>
                        <input class="text" id="guestcidraddress_edit" style="width: 200px; display: none;" type="text" />
	                    <div id="guestcidraddress_edit_errormsg" style="display:none"></div>       
                    </div>
                </div>
                <div class="grid_rows even">
                    <div class="grid_row_cell" style="width: 20%;">
                        <div class="row_celltitles">
                            <%=t.t("domain")%>:</div>
                    </div>
                    <div class="grid_row_cell" style="width: 79%;">
                        <div class="row_celltitles" id="domain">
                        </div>                        
                    </div>
                </div>
            </div>            
            
            <div class="grid_botactionpanel">
	        	<div class="gridbot_buttons" id="save_button" style="display:none;">Save</div>
	            <div class="gridbot_buttons" id="cancel_button" style="display:none;">Cancel</div>
	        </div>             
            
        </div>
    </div>
    <!-- Details tab (end)-->       
</div>

<!--  top buttons (begin) -->
<div id="top_buttons">
	<div class="actionpanel_button_wrapper" id="add_pod_button">
        <div class="actionpanel_button">
            <div class="actionpanel_button_icons">
                <img src="images/addvm_actionicon.png" /></div>
            <div class="actionpanel_button_links">
                Add Pod
            </div>
        </div>
    </div>  
    <div class="actionpanel_button_wrapper" id="add_cluster_button">
        <div class="actionpanel_button">
            <div class="actionpanel_button_icons">
                <img src="images/addvm_actionicon.png"/></div>
            <div class="actionpanel_button_links">
                Add Cluster
            </div>
        </div>
    </div>
    <div class="actionpanel_button_wrapper" id="add_host_button">
        <div class="actionpanel_button">
            <div class="actionpanel_button_icons">
                <img src="images/addvm_actionicon.png" /></div>
            <div class="actionpanel_button_links">
                Add Host
            </div>
        </div>
    </div>
    <div class="actionpanel_button_wrapper" id="add_primarystorage_button">
        <div class="actionpanel_button">
            <div class="actionpanel_button_icons">
                <img src="images/addvm_actionicon.png" /></div>
            <div class="actionpanel_button_links">
                Add Primary Storage
            </div>
        </div>
    </div>    
</div>
<!--  top buttons (end) -->


<!-- ***** dialogs ***** (begin)-->
<!-- Add Pod Dialog (begin) -->
<div id="dialog_add_pod" title="Add Pod" style="display: none">
    <p>
        Add a new pod for zone <b><span id="add_pod_zone_name"></span></b>
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
                <label for="user_name" style="width: 115px;">
                    Name:</label>
                <input class="text" type="text" name="add_pod_name" id="add_pod_name" />
                <div id="add_pod_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="add_pod_gateway" style="width: 115px;">
                    Gateway:</label>
                <input class="text" type="text" id="add_pod_gateway" />
                <div id="add_pod_gateway_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="user_name" style="width: 115px;">
                    Netmask:</label>
                <input class="text" type="text" name="add_pod_netmask" id="add_pod_netmask" />
                <div id="add_pod_netmask_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="user_name" style="width: 115px;">
                    Private IP Range:</label>
                <input class="text" style="width: 67px" type="text" name="add_pod_startip" id="add_pod_startip" /><span>-</span>
                <input class="text" style="width: 67px" type="text" name="add_pod_endip" id="add_pod_endip" />
                <div id="add_pod_startip_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
                <div id="add_pod_endip_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>            
            <li id="guestip_container" style="display: none">
                <label style="width: 115px;">
                    Guest IP Range:</label>
                <input class="text" style="width: 92px" type="text" id="startguestip" /><span>-</span>
                <input class="text" style="width: 92px" type="text" id="endguestip" />
                <div id="startguestip_errormsg" class="dialog_formcontent_errormsg" style="display: none;
                    margin-left: 133px;">
                </div>
                <div id="endguestip_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li id="guestnetmask_container" style="display: none">
                <label style="width: 115px;">
                    Guest Netmask:</label>
                <input class="text" type="text" id="guestnetmask" />
                <div id="guestnetmask_errormsg" class="dialog_formcontent_errormsg" style="display: none;
                    margin-left: 0;">
                </div>
            </li>
            <li id="guestgateway_container" style="display: none">
                <label style="width: 115px;">
                    Guest Gateway:</label>
                <input class="text" type="text" id="guestgateway" />
                <div id="guestgateway_errormsg" class="dialog_formcontent_errormsg" style="display: none;
                    margin-left: 0;">
                </div>
            </li>           
        </ol>
        </form>
    </div>
    <!--Loading box-->
    <div id="spinning_wheel" class="ui_dialog_loaderbox" style="display: none;">
        <div class="ui_dialog_loader">
        </div>
        <p>
            Adding....</p>
    </div>
    <!--Confirmation msg box-->
    <!--Note: for error msg, just have to add error besides everything for eg. add error(class) next to ui_dialog_messagebox error, ui_dialog_msgicon error, ui_dialog_messagebox_text error.  -->
    <div id="info_container" class="ui_dialog_messagebox error" style="display: none;">
        <div id="icon" class="ui_dialog_msgicon error">
        </div>
        <div id="info" class="ui_dialog_messagebox_text error">
            (info)</div>
    </div>
</div>
<!-- Add Pod Dialog (end) -->

<!-- Add Host Dialog in zone page (begin) -->
<div id="dialog_add_host_in_zone_page" title="Add Host" style="display: none">   
    <p>
        Add a host for zone <b><span id="zone_name"></span></b>
        </span></b>
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>    
            <!--    
            <li>
            	<label for="host_hypervisor">Hypervisor:</label>
                <select class="select" id="host_hypervisor">
                    <option value="XenServer" SELECTED>Xen Server</option>		
                    <option value="KVM">KVM</option>										
                    <option value="VmWare">VMware</option>										
                </select>
            </li>
            -->  
            <li>
                <label>
                    Pod:</label>
                <select class="select" id="pod_dropdown">
                </select>
                <div id="pod_dropdown_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>              
            <li>
                <label>
                    Cluster:</label>
                <select class="select" id="cluster_select">
                </select>
                <div id="cluster_select_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>            
            <li input_group="general">
                <label for="host_hostname">
                    Host name:</label>
                <input class="text" type="text" name="host_hostname" id="host_hostname" />
                <div id="host_hostname_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="general">
                <label for="user_name">
                    User name:</label>
                <input class="text" type="text" name="host_username" id="host_username" />
                <div id="host_username_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="general">
                <label for="host_password">
                    Password:</label>
                <input class="text" type="password" name="host_password" id="host_password" autocomplete="off" />
                <div id="host_password_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" style="display: none;">
                <label for="host_vcenter_address">
                    vCenter Address:</label>
                <input class="text" type="text" name="host_vcenter_address" id="host_vcenter_address" />
                <div id="host_vcenter_address_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" style="display: none;">
                <label for="host_vcenter_username">
                    vCenter User:</label>
                <input class="text" type="text" name="host_vcenter_username" id="host_vcenter_username" />
                <div id="host_vcenter_username_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" style="display: none;">
                <label for="host_vcenter_password">
                    vCenter Password:</label>
                <input class="text" type="password" name="host_vcenter_password" id="host_vcenter_password" autocomplete="off" />
                <div id="host_vcenter_password_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" style="display: none;">
                <label for="host_vcenter_dc">
                    vCenter Datacenter:</label>
                <input class="text" type="text" name="host_vcenter_dc" id="host_vcenter_dc" />
                <div id="host_vcenter_dc_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" style="display: none;">
                <label for="host_vcenter_host">
                    vCenter Host:</label>
                <input class="text" type="text" name="host_vcenter_host" id="host_vcenter_host" />
                <div id="host_vcenter_host_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
        </ol>
        </form>
    </div>
    <!--Loading box-->
    <div id="spinning_wheel" class="ui_dialog_loaderbox" style="display: none;">
        <div class="ui_dialog_loader">
        </div>
        <p>
            Adding....</p>
    </div>
    <!--Confirmation msg box-->
    <!--Note: for error msg, just have to add error besides everything for eg. add error(class) next to ui_dialog_messagebox error, ui_dialog_msgicon error, ui_dialog_messagebox_text error.  -->
    <div id="info_container" class="ui_dialog_messagebox error" style="display: none;">
        <div id="icon" class="ui_dialog_msgicon error">
        </div>
        <div id="info" class="ui_dialog_messagebox_text error">
            (info)</div>
    </div>
</div>
<!-- Add Host Dialog in zone page (end) -->

<!-- Add Hypervisor managed cluster Dialog (begin) -->
<div id="dialog_add_external_cluster_in_zone_page" title="Add Cluster" style="display: none">
    <p>
        Add a hypervisor managed cluster for zone <b><span id="zone_name"></span></b>
    </p>
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>
            <li>
            	<label for="cluster_hypervisor">Hypervisor:</label>
                <select class="select" id="cluster_hypervisor">
                    <option value="XenServer" SELECTED>Xen Server</option>		
                    <option value="KVM">KVM</option>										
                    <option value="VmWare">VMware</option>										
                </select>
            </li>
            <li input_group="vmware">
                <label>
                    Cluster Type:</label>
                <select class="select" id="type_dropdown">
                    <option value="CloudManaged">Cloud.com Managed</option>		
                    <option value="ExternalManaged" SELECTED>vSphere Managed</option>										
                </select>
                <div id="pod_dropdown_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>   
            <li>
                <label>
                    Pod:</label>
                <select class="select" id="pod_dropdown">
                </select>
                <div id="pod_dropdown_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>   
            <li input_group="vmware" input_sub_group="external">
                <label for="cluster_hostname">
                    vCenter Server:</label>
                <input class="text" type="text" name="cluster_hostname" id="cluster_hostname" />
                <div id="cluster_hostname_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" input_sub_group="external">
                <label for="cluster_username">
                    vCenter User:</label>
                <input class="text" type="text" name="cluster_username" id="cluster_username" />
                <div id="cluster_username_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" input_sub_group="external">
                <label for="cluster_password">
                    Password:</label>
                <input class="text" type="password" name="cluster_password" id="cluster_password" autocomplete="off" />
                <div id="cluster_password_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmware" input_sub_group="external">
                <label for="cluster_datacenter">
                    vCenter Datacenter:</label>
                <input class="text" type="text" name="cluster_datacenter" id="cluster_datacenter" />
                <div id="cluster_datacenter_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="cluster_name" id="cluster_name_label">
                    vCenter Cluster:</label>
                <input class="text" type="text" name="cluster_name" id="cluster_name" />
                <div id="cluster_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
        </ol>
        </form>
    </div>
    <!--Loading box-->
    <div id="spinning_wheel" class="ui_dialog_loaderbox" style="display: none;">
        <div class="ui_dialog_loader">
        </div>
        <p>
            Adding....</p>
    </div>
    <!--Confirmation msg box-->
    <!--Note: for error msg, just have to add error besides everything for eg. add error(class) next to ui_dialog_messagebox error, ui_dialog_msgicon error, ui_dialog_messagebox_text error.  -->
    <div id="info_container" class="ui_dialog_messagebox error" style="display: none;">
        <div id="icon" class="ui_dialog_msgicon error">
        </div>
        <div id="info" class="ui_dialog_messagebox_text error">
            (info)</div>
    </div>
</div>
<!-- Add Hypervisor managed cluster Dialog (end) -->


<!-- Add Primary Storage Dialog  in zone page (begin) -->
<div id="dialog_add_pool_in_zone_page" title="Add Primary Storage" style="display: none"> 
    <p>
        Add a primary storage for zone <b><span id="zone_name"></span></b>
        </span></b>
    </p>   
    <div class="dialog_formcontent">
        <form action="#" method="post" id="form_acquire">
        <ol>            
            <li>
                <label>
                    Pod:</label>
                <select class="select" id="pod_dropdown">
                </select>
                <div id="pod_dropdown_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>   
            <li id="pool_cluster_container">
                <label for="pool_cluster">
                    Cluster:</label>
                <select class="select" id="cluster_select">
                </select>
                <div id="cluster_select_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="user_name">
                    Name:</label>
                <input class="text" type="text" name="add_pool_name" id="add_pool_name" />
                <div id="add_pool_name_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li>
                <label for="add_pool_protocol">
                    Protocol:</label>
                <select class="select" id="add_pool_protocol">
                    <option value="nfs">NFS</option>
                    <option value="iscsi">ISCSI</option>
                    <option value="vmfs">VMFS</option>
                </select>
            </li>
            <li id="add_pool_server_container">
                <label for="add_pool_nfs_server">
                    Server:</label>
                <input class="text" type="text" name="add_pool_nfs_server" id="add_pool_nfs_server" />
                <div id="add_pool_nfs_server_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li id="add_pool_path_container" input_group="nfs">
                <label for="add_pool_path">
                    Path:</label>
                <input class="text" type="text" name="add_pool_path" id="add_pool_path" />
                <div id="add_pool_path_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li id="add_pool_iqn_container" style="display: none" input_group="iscsi">
                <label for="add_pool_iqn">
                    Target IQN:</label>
                <input class="text" type="text" name="add_pool_iqn" id="add_pool_iqn" />
                <div id="add_pool_iqn_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li id="add_pool_lun_container" style="display: none" input_group="iscsi">
                <label for="add_pool_lun">
                    LUN #:</label>
                <input class="text" type="text" name="add_pool_lun" id="add_pool_lun" />
                <div id="add_pool_lun_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmfs">
                <label for="add_pool_vmfs_dc">
                    vCenter Datacenter:</label>
                <input class="text" type="text" name="add_pool_vmfs_dc" id="add_pool_vmfs_dc" />
                <div id="add_pool_vmfs_dc_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li input_group="vmfs">
                <label for="add_pool_vmfs_ds">
                    vCenter Datastore:</label>
                <input class="text" type="text" name="add_pool_vmfs_ds" id="add_pool_vmfs_ds" />
                <div id="add_pool_vmfs_ds_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
            <li id="add_pool_tags_container">
                <label for="add_pool_tags">
                    Tags:</label>
                <input class="text" type="text" id="add_pool_tags" />
                <div id="add_pool_tags_errormsg" class="dialog_formcontent_errormsg" style="display: none;">
                </div>
            </li>
        </ol>
        </form>
    </div>
    <!--Loading box-->
    <div id="spinning_wheel" class="ui_dialog_loaderbox" style="display: none;">
        <div class="ui_dialog_loader">
        </div>
        <p>
            Adding....</p>
    </div>
    <!--Confirmation msg box-->
    <!--Note: for error msg, just have to add error besides everything for eg. add error(class) next to ui_dialog_messagebox error, ui_dialog_msgicon error, ui_dialog_messagebox_text error.  -->
    <div id="info_container" class="ui_dialog_messagebox error" style="display: none;">
        <div id="icon" class="ui_dialog_msgicon error">
        </div>
        <div id="info" class="ui_dialog_messagebox_text error">
            (info)</div>
    </div>
</div>
<!-- Add Primary Storage Dialog  in zone page (end) -->

<!-- ***** dialogs ***** (end)-->

