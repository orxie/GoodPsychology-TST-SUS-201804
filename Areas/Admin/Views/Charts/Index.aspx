<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/ViewMasterAdmin.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    海图
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <script>
         $(function () {
             $("#charts").attr("class", "active");
         });
    </script>
<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Charts</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Line Chart</h3>
								</div>
								<div class="panel-body">
									<div id="demo-line-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Bar Chart</h3>
								</div>
								<div class="panel-body">
									<div id="demo-bar-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Area Chart</h3>
								</div>
								<div class="panel-body">
									<div id="demo-area-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Multiple Chart</h3>
								</div>
								<div class="panel-body">
									<div id="multiple-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
        <script src="<%=Url.Content("~/Areas/Admin/Content/vendor/jquery/jquery.min.js") %>"></script>
	<script src="<%=Url.Content("~/Areas/Admin/Content/vendor/bootstrap/js/bootstrap.min.js") %>"></script>
	<script src="<%=Url.Content("~/Areas/Admin/Content/vendor/jquery-slimscroll/jquery.slimscroll.min.js") %>"></script>
	<script src="<%=Url.Content("~/Areas/Admin/Content/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js") %>"></script>
	<script src="<%=Url.Content("~/Areas/Admin/Content/vendor/chartist/js/chartist.min.js") %>"></script>
	<script src="<%=Url.Content("~/Areas/Admin/Content/scripts/klorofil-common.js") %>"></script>
</asp:Content>
