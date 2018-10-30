<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    好文推送
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <script>
         $(function () {
             $("#Message").attr("class", "active");
         });
    </script>
        <!--内容-->
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<!--页头-->
					<div class="page-header">
						<h2>原生家庭：与父母的关系，将影响你的一生</h2>
						<small>
							<span>2018-05-09</span>
							<span>多少</span>
							<em>人观看</em>
						</small>
					</div>
					
					<div class="message-details" id="message-details">
						<section>
							<!--序号-->
							<div class="serial-number">0</div>
							
							<!--内容-->
							<p class="message-indent">每个人都无可避免地会受到原生家庭的影响,这种影响会伴随我们的一生,甚至影响到我们的亲子关系、亲密关系、人际交往,乃至整个人生命运。一个人跟父母的关系,就是他跟整个世界的关系。</p>
	
							<p class="message-indent">张德芬说:“你生活中所有的难题,几乎都逃不脱你和父母的关系。”</p>
							
							<p class="message-indent">在每个人的一生中,对他影响最早、最大、最久的就是原生家庭。我们从出生开始,就一直受到系统成员的影响,或许我们看不见,但那些父母的思想观念、性格特点、行为方式、夫妻关系等又确确实实在潜移默化地影响着我们。</p>
							
							<p class="message-indent">就像著名家庭治疗大师萨提亚所说:“一个人和他的原生家庭,有着千丝万缕的联系,而这种联系甚至会影响一个人的一生命运。”</p>
							
							<p class="message-indent">通常情况下,一个人与父母的关系,就是他与世界的关系。</p>
						</section>
						
						<section>
							<!--序号-->
							<div class="serial-number">1</div>
							
							<!--内容-->
							<p class="message-indent">与父母的关系,决定了你的亲密关系</p>

							<p class="message-indent">一个人的婚姻是否幸福,通常在他成长的家庭和他童年的经历中就已经埋下了种子。原生家庭是个人情感经验与两性相处方式学习的最初场所。</p>
							
							<p class="message-indent">张德芬老师在讲述自己的亲密关系之时就曾坦言,自己重复失败的亲密关系,就是来自于自己和母亲的关系。因为母亲以孤女身份嫁入大家族,吃了很多苦,年幼的她想要替母亲承担痛苦,让母亲获得快乐。就是这份对母亲的忠诚,让她无意识地选择了痛苦的亲密关系。</p>
							
							<p class="message-indent">正如国际顶级家排导师伯图·乌沙莫所说:“所有的孩子都是爱父母的。当一个婴儿诞生在这个世界上,他是非常敞开、有爱、柔软的。他会打开自己的心,接纳外在的所有事物,包括他所得到的爱和周遭所有的压力。因为孩子会希望自己是归属于这个家族的,所以要共同承担家族中的一切,包括所有的压力和不快乐。”</p>
							
							<p class="message-indent">小A在外人面前是一个很温和知性的姑娘,但是在与爱人相处的过程中,却总喜欢挑对方的刺,进行评价与批判。但凡一有冲突,不是说话越来越冲,骂得越来越凶,就是干脆保持沉默,冷战到底。几次恋爱,最终都以分手终结。</p>
							
							<p class="message-indent">直到后来,她才终于意识到,这一切的源头就是她和妈妈的关系。</p>
							
							<p class="message-indent">小A在小学时因为搬家转过一次学,因为无法适应新环境,在人际关系上遇到了很多问题。但是她每次跟妈妈讲,母亲都只会说“不要和同学吵架”或是“他们只是跟你开个玩笑。”然后又会叮嘱她好好学习。久而久之,她就不愿意再和父母说话了,因为她觉得就算自己跟父母好好说话,他们也不会听。</p>
							
							<p class="message-indent">而在她长大之后,这种无法“好好说话”的沟通方式就延续到了她的亲密关系上。面对自己的爱人,她再次回到童年的角色,成为了那个缺乏信任感,无法跟妈妈好好说话的小女孩。</p>
							
							<p class="message-indent">就像张德芬说的:“在亲密关系中,我们都会无意识地把爱人当成小时候的父母,继续和他完成我们未完成的课题。”</p>
						</section>
						<p style="display: block; text-align: center; color: #ddd;">- - END - -</p>
					</div>					
				</div>
			
				<!--推荐-->
				<div class="col-md-4 visible-lg" style="border: 1px solid #eee; margin-top: 41px; background-color: #ddd;">
                 <div class="page-header">
                        <h4>相关测试题</h4>
                  </div>
                <% DataSet set2 = Session["sp_EvaluationTCBy_ECID"] as DataSet; %>
                <!--测试推荐-->
                <ul class="test-recommend">
                    <%for (int i = 0; i < set2.Tables[0].Rows.Count; i++)
                      {%>
                    <li>
                        <a href="<%=Url.Content("~/Evaluation/secondEvaluation"+"?ID="+set2.Tables[0].Rows[i][3]) %>">
                            <img src="<%=Url.Content(set2.Tables[0].Rows[i][1].ToString())%>" alt="<%=set2.Tables[0].Rows[i][2].ToString() %>" />
                            <i><%=set2.Tables[0].Rows[i][2].ToString() %></i>
                        </a>
                    </li>
                    <% }%>
                </ul>

                <!--心理老师推荐-->
                <div>
                    <div class="page-header">
                        <h4>心理专家推荐</h4>
                    </div>
                    <div>
                        <%DataSet set3 = Session["IndexMan"] as DataSet; %>
                        <ul>
                         <%for (int i = 0; i < set3.Tables[0].Rows.Count; i++)
                          { %>
                            <li>
                                <div class="media recommend-img">
                                    <a href="#">
                                        <div class="media-left">
                                            <!--<a href="#">-->
                                            <img class="media-object img-circle" src="<%=Url.Content(set3.Tables[0].Rows[i][2].ToString())%>" alt="<%=set3.Tables[0].Rows[i][0].ToString() %>" />
                                            <!--</a>-->
                                        </div>
                                        <div class="media-body">
                                            <h4 class="Name-Mtop"><%=set3.Tables[0].Rows[i][0].ToString() %></h4>
                                            <em><%=set3.Tables[0].Rows[i][1].ToString() %></em>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                </div>
            </div>
			</div>
		</div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="QuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
