<%@page import="com.study.game.dto.GameDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/inc/Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/Detail.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/adv.css" type="text/css"> 
</head>
<body>
<%String[] tag={"PC","mobile","console","action","acventureAndCasual",
		"rolePlaying","simulation","strategy","sportsAndRacing"};%>
	<%GameDto game = (GameDto)request.getAttribute("game"); %>
	<%String platform = null;
	  String tagStr = null;
                        		if(game.getPc() == 1){
                        			if(platform != null){
                        				platform += "/"+ tag[0];
                        			}else{
                        				platform = tag[0];
                        			}
                        		}
                        		if(game.getMobile() == 1){
                        			if(platform != null){
                        				platform += "/"+ tag[1];
                        			}else{
                        				platform = tag[1];
                        			}
                        		}
                        		if(game.getConsole() == 1){
                        			if(platform != null){
                        				platform += "/"+ tag[2];
                        			}else{
                        				platform = tag[2];
                        			}
                        		}
                        		
                        		if(game.getAction() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[3];
                        			}else{
                        				tagStr = tag[3];
                        			}
                        		}
                        		if(game.getAdventureAndCasual() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[4];
                        			}else{
                        				tagStr = tag[4];
                        			}
                        		}
                        		if(game.getRolePlaying() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[5];
                        			}else{
                        				tagStr = tag[5];
                        			}
                        		}
                        		if(game.getSimulation() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[6];
                        			}else{
                        				tagStr = tag[6];
                        			}
                        		}
                        		if(game.getStrategy() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[7];
                        			}else{
                        				tagStr = tag[7];
                        			}
                        		}
                        		if(game.getSportsAndracing() == 1){
                        			if(tagStr != null){
                        				tagStr += "/"+ tag[8];
                        			}else{
                        				tagStr = tag[8];
                        			}
                        		}
                        		
 %>
	<div>
        <div class="container">    
  
            <div class="game_info">               
                <div class="info_box">
                    <div class="info_pic"><img src="<%=game.getTitleImg()%>"/></div>
                    
                    <table class="info_exp">
                        <tr>
                        	<th colspan="2">?????? ?????????</th>
                        </tr>
                        
                        <tr>
                        	<th>?????????</th>
                        	<%if(platform != null){%>
                        	<td><%=platform%></td>
                        	<%}else{%>
                        	<td></td>
                        	<%}%>
                        </tr>
                        <tr>
                        	<th>??????</th>
                        	<%if(tagStr != null){%>
                        		<td><%=tagStr%></td>
                        	<%}else{%>
                        		<td></td>
                        	<%}%>
                        </tr>
                        <tr>
                        	<th>?????????</th>
                        	<%if(game.getDeveloper() != null){%>
                        		<td><%=game.getDeveloper() %></td>
                        	<%}else{%>
                        		<td></td>
                        	<%}%>
                        </tr>
                        <tr>
                        	<th>????????????</th>
                        	<td></td>
                        </tr>
                        <tr>
                        	<th>????????????</th>
                        	<td><%=game.getReleaseDate()%></td>
                        </tr>
                        <tr>
                        	<th>??????</th>
                        	<td>?????? ?????? ????????? ?????????</td>
                        </tr>
    
                    </table>
                </div>
                
                <div class="game_intro">
                    <h3><%=game.getProjectName() %></h3>

                    <p><%=game.getIntroduce()%></p>
                </div>
            </div>
    	</div>
    	
    	<section style="margin-top: 30px">
        <div class="container">
            <div>
                <div class="col-lg-18 game_opin">
                
                <div class="game_rev">
    
                        <div class="comu_link">?????? ?????? ???????????? ??????</div>
                        
                        <div class="rev_avg">
                            <div id="Star_Avg">?????? ??????</div>
                            <div id="All_Star">????????? ??????</div>
                        </div>
            
                        <div class="rev_box">
                            <div id="give_star">
                                <div id="star_check">
                                    ?????? ??????
                                </div>
                                <div id="point_view">
                                    ?????? 3.0
                                </div>
                            </div>
            
                            <form class="rev_wri">
                                <textarea placeholder="?????? ??????"></textarea>
                                
                                <br/>
                                <input type="checkbox">??? ????????? ???????????????</input>
                                <input type="button" value="??????"/>
                            </form>
                        </div>
            
                        <div class="rev_list">
                            <table class="rev_s">
                                <tr>
                                	<th rowspan="3">?????? ??????</th>
                                	<td colspan="2">?????????</td>
                         	
                                </tr>
                                	
                                <tr>
                                  	<td>??? ??????</td>
                                	<td>?????? ??????</td>
                                </tr>
                                	
                                <tr>
                                	<td colspan="2">??????</td>
                                </tr>
                            </table>
                            
                                    
                        </div>
                    </div>
             
                    
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="product__sidebar ">
                        <div class="product__sidebar__view">
                            <div class="section-title">
                                <h5>?????????</h5>
                            </div>
                           
                            <div class="filter__gallery">
                                <div class="product__sidebar__view__item set-bg mix day years"
                                data-setbg="<%=request.getContextPath() %>/resources/img/sidebar/adv-1.jpg">
                              
                              
                                <h5><a href="#" >LG ??????  ????????? ?????? ?????????</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg mix month week"
                            data-setbg="<%=request.getContextPath() %>/resources/img/sidebar/adv-2.jpg">
                          
                           
                            <h5><a href="#">SAMSUNG  ????????? ?????? ??? 10% ??????</a></h5>
                        </div>
                        <div class="product__sidebar__view__item set-bg mix week years"
                        data-setbg="<%=request.getContextPath() %>/resources/img/sidebar/adv-3.jpg">
                        <div class="ep">2021 / 11  /  11</div>
                      
                        <h5><a href="#"> BBQ  ????????? ???????????? ???????????? ??????</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg mix years month"
                    data-setbg="<%=request.getContextPath() %>/resources/img/sidebar/adv-4.jpg">
                  
                 
                    <h5><a href="#">?????????   ???????????? ?????? ??? ??????</a></h5>
                </div>
                <div class="product__sidebar__view__item set-bg mix day"
                  data-setbg="<%=request.getContextPath() %>/resources/img/sidebar/adv-5.jpg">
                <div class="ep">2021  /  12  /  22</div>
           
                <h5><a href="#">????????? ?????? ????????? ?????? ??????</a></h5>
            </div>
        </div>
    </div>
    <div class="product__sidebar__comment">
        <div class="section-title">
           <h5>??? ??????</h5> 
        </div>
        <div class="product__sidebar__comment__item">
            <div class="product__sidebar__comment__item__pic">
                <img src="<%=request.getContextPath() %>/resources/img/sidebar/comment-1.jpg" alt="">
            </div>
            <div class="product__sidebar__comment__item__text">
                <ul>
                    <li>Active</li>
                    <li>Movie</li>
                </ul>
                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
               
            </div>
        </div>
        <div class="product__sidebar__comment__item">
            <div class="product__sidebar__comment__item__pic">
                <img src="<%=request.getContextPath() %>/resources/img/sidebar/comment-2.jpg" alt="">
            </div>
            <div class="product__sidebar__comment__item__text">
                <ul>
                    <li>Active</li>
                    <li>Movie</li>
                </ul>
                <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
            </div>
        </div>
        <div class="product__sidebar__comment__item">
            <div class="product__sidebar__comment__item__pic">
                <img src="<%=request.getContextPath() %>/resources/img/sidebar/comment-3.jpg" alt="">
            </div>
            <div class="product__sidebar__comment__item__text">
                <ul>
                    <li>Active</li>
                    <li>Movie</li>
                </ul>
                <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
            </div>
        </div>
        <div class="product__sidebar__comment__item">
            <div class="product__sidebar__comment__item__pic">
                <img src="<%=request.getContextPath() %>/resources/img/sidebar/comment-4.jpg" alt="">
            </div>
            <div class="product__sidebar__comment__item__text">
                <ul>
                    <li>Active</li>
                    <li>Movie</li>
                </ul>
                <h5><a href="#">Monogatari Series: Second Season</a></h5>
                <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</section>
    </div>


</body>
</html>
<hr>
<%@ include file="/inc/Foother.jsp" %>