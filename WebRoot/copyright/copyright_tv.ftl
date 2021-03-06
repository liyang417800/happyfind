<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>内容价值探索-首页</title>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.3.2.min.js"></script>
</head>

<script type="text/javascript">
$(document).ready(function(){
$("#addbtid").click(function(){
  	var url="${request.contextPath}/crAction!cruploadpage.action";
  	openiframe(url,700,400);
  });
});

</script>
<body>
	<div class="model">
            <!--电视剧-->
        	<div class="oprate">
                <ul class="subOpr">
                    <li class="hover" id="addbtid">添加版权数据</li>
                    <li class="br">下载数据</li>
                </ul> 
                <ul class="search">
                    <li>
                    	<select name="">
                        	<option>全部平台</option>
                        	<option>优酷</option>
                        	<option>土豆</option>
                        </select>
                    </li>
                    <li>
                    	<select name="">
                        	<option>全部剧集类型</option>
                        	<option>片库剧</option>
                        	<option>热播剧</option>
                        </select>
                    </li>
                    <li class="show"><input name="" type="text" value="输入剧集名称" class="defText show"/><span></span></li>
                    <li><input name="" type="text" value="授权开始日期" class="defText data"/></li>
                    <li class="br"><input name="" type="text" value="授权结束日期" class="defText data"/></li>
                </ul> 
            </div>
            <div class="space"></div>
            <div class="datatbl">
                <table>
                    <tr class="bg">
                        <th>平台</th>
                        <th>剧集ID</th>
                        <th>剧集名称</th>
                        <th>预估量(VV/年)</th>
                        <th>版权成本</th>
                        <th>授权开始日期</th>
                        <th>授权结束日期</th>
                        <th>剧集类型</th>
                    </tr>
                    <#list list as obj>
                    <tr>
                        <td><#if obj.site_id == "1">优酷</#if><#if obj.site_id=="2">土豆</#if>
                        </td>
                        <td>${obj.show_id!}</td>
                        <td>${obj.showname!}</td>
                        <td>${obj.estimate_vv!}</td>
                        <td>${obj.cr_cost!}</td>
                        <td>${obj.up_date!}</td>
                        <td>${obj.down_date!}</td>
                        <td>${obj.analyst_type!}</td>
                    </tr>
                    </#list>
                </table>
            </div>
        </div>
       <#include "cr_window.ftl">
</div>
</body>
</html>
