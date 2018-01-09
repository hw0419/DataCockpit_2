
<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1 style="font-weight: bolder;">快捷菜单</h1>
</section>

<!-- Main content -->
<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-red">
				<div class="inner">
					<h3>上传数据</h3>

					<h5>New Users</h5>
				</div>
				<div class="icon">
					<img src="resource/images/1.png" />
				</div>
				<a href="./user_shuju2.shtml" class="small-box-footer">More info
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h3>启动新任务</h3>

					<h5>New Account</h5>
				</div>
				<div class="icon">
					<img src="resource/images/2.png" />
				</div>
				<a href="./user_shuju1.shtml" class="small-box-footer">More info
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->

		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h3>数据关联关系</h3>

					<h5>New Notification</h5>
				</div>
				<div class="icon">
					<img src="resource/images/3.png" />
				</div>
				<a href="./user_guanxitu.shtml" class="small-box-footer">More
					info <i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-aqua">
				<div class="inner">
					<H3>任务状态</H3>

					<h5>New Data-table</h5>
				</div>
				<div class="icon">
					<img src="resource/images/33.png" />
				</div>
				<a href="./user_shuju1.shtml" class="small-box-footer">More info
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->
	</div>
	<!-- 快捷菜单以上 -->

	<!-- 通知信息以下 -->

	<!-- TABLE: LATEST ORDERS -->
	<div class="box box-info" style="width: 49%; float: left;">
		<div class="box-header with-border">
			<h3 class="box-title" style="font-weight: bolder;">通知信息</h3>

			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
				<!-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
			</div>
		</div>
		<!--   /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<div id=tz>
					<ul>
						<cc:forEach items="${flag }" var="map" begin="0" end="4">

							<li class=tz1><a href="./gongGao.shtml?id=${map.info.id }">${map.info.title }【<fmt:formatDate
										value="${map.info.publishDate }" pattern="yyyy-MM-dd" />】
							</a> <cc:if test="${map.date==1 }">
									<img src="resource/images/6.png" />
								</cc:if></li>
						</cc:forEach>

					</ul>
				</div>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.box-body -->
		<div class="box-footer clearfix">
			<a href="./selectTongzhi.shtml"
				class="btn btn-sm btn-default btn-flat pull-right">more >></a>
		</div>
		<!-- /.box-footer -->
	</div>
	<!-- /.box -->
	<!-- 通知信息以上 -->

	<!-- 系统消息以下 -->
	<div class="box box-default"
		style="width: 49%; float: right; border-top-color: #F39C12">

		<div class="box-header">
			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
			</div>
			<h3 class="box-title" style="font-weight: bolder;">任务信息</h3>
		</div>
		<!-- /.box-header -->
		<div class="box-body no-padding">
			<table class="table table-condensed">
				<tbody>
					<tr>
						<th style="width: 10px"></th>
						<th>任务名称</th>
						<th>状态</th>
						<th style="width: 40px"></th>
					</tr>
					<tr>
						<td>1.</td>
						<td>销售数据表分析</td>
						<td>
							<div class="progress progress-xs">
								<div class="progress-bar progress-bar-danger" style="width: 55%"></div>
							</div>
						</td>
						<td><span class="badge bg-red">55%</span></td>
					</tr>
					<tr>
						<td>2.</td>
						<td>到访数据表分析</td>
						<td>
							<div class="progress progress-xs">
								<div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
							</div>
						</td>
						<td><span class="badge bg-yellow">70%</span></td>
					</tr>
					<tr>
						<td>3.</td>
						<td>认筹数据表分析</td>
						<td>
							<div class="progress progress-xs progress-striped active">
								<div class="progress-bar progress-bar-primary"
									style="width: 30%"></div>
							</div>
						</td>
						<td><span class="badge bg-light-blue">30%</span></td>
					</tr>
					<tr>
						<td>4.</td>
						<td>媒体渠道数据表分析</td>
						<td>
							<div class="progress progress-xs progress-striped active">
								<div class="progress-bar progress-bar-success"
									style="width: 90%"></div>
							</div>
						</td>
						<td><span class="badge bg-green">90%</span></td>
					</tr>
				</tbody>
			</table>
			<!-- /.box-body -->
		</div>
		<!-- /.box-header -->
	</div>
	<!-- 系统消息以上 -->
	
	<!-- 数据展示以下  -->
	<div class="row">
		<div class="col-md-12">
			<div class="box" style="border-top-color: red">
				<div class="box-header with-border">
					<h3 class="box-title" style="font-weight: bolder;">认筹数据表</h3>
					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool"
							data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				
				<!-- /.box-header -->
				
				<div class="box-body">
					<div class="row">
						<div class="col-md-8">
							<p class="text-center">
								<strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
							</p>
							<div class="chart">
								<!-- Sales Chart Canvas -->
								<canvas id="salesChart" style="height: 180px;"></canvas>
							</div>
							<!-- /.chart-responsive -->
						</div>
						<!-- /.col -->
						<div class="col-md-4">
							<p class="text-center">
								<strong>Goal Completion</strong>
							</p>

							<div class="progress-group">
								<span class="progress-text">Add Products to Cart</span> <span
									class="progress-number"><b>160</b>/200</span>

								<div class="progress sm">
									<div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
								</div>
							</div>
							<!-- /.progress-group -->
							<div class="progress-group">
								<span class="progress-text">Complete Purchase</span> <span
									class="progress-number"><b>310</b>/400</span>

								<div class="progress sm">
									<div class="progress-bar progress-bar-red" style="width: 80%"></div>
								</div>
							</div>
							<!-- /.progress-group -->
							<div class="progress-group">
								<span class="progress-text">Visit Premium Page</span> <span
									class="progress-number"><b>480</b>/800</span>

								<div class="progress sm">
									<div class="progress-bar progress-bar-green" style="width: 80%"></div>
								</div>
							</div>
							<!-- /.progress-group -->
							<div class="progress-group">
								<span class="progress-text">Send Inquiries</span> <span
									class="progress-number"><b>250</b>/500</span>

								<div class="progress sm">
									<div class="progress-bar progress-bar-yellow"
										style="width: 80%"></div>
								</div>
							</div>
							<!-- /.progress-group -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- ./box-body -->
				<div class="box-footer">
					<div class="row">
						<div class="col-sm-3 col-xs-6">
							<div class="description-block border-right">
								<span class="description-percentage text-green"><i
									class="fa fa-caret-up"></i> 17%</span>
								<h5 class="description-header">$35,210.43</h5>
								<span class="description-text">TOTAL REVENUE</span>
							</div>
							<!-- /.description-block -->
						</div>
						<!-- /.col -->
						<div class="col-sm-3 col-xs-6">
							<div class="description-block border-right">
								<span class="description-percentage text-yellow"><i
									class="fa fa-caret-left"></i> 0%</span>
								<h5 class="description-header">$10,390.90</h5>
								<span class="description-text">TOTAL COST</span>
							</div>
							<!-- /.description-block -->
						</div>
						<!-- /.col -->
						<div class="col-sm-3 col-xs-6">
							<div class="description-block border-right">
								<span class="description-percentage text-green"><i
									class="fa fa-caret-up"></i> 20%</span>
								<h5 class="description-header">$24,813.53</h5>
								<span class="description-text">TOTAL PROFIT</span>
							</div>
							<!-- /.description-block -->
						</div>
						<!-- /.col -->
						<div class="col-sm-3 col-xs-6">
							<div class="description-block">
								<span class="description-percentage text-red"><i
									class="fa fa-caret-down"></i> 18%</span>
								<h5 class="description-header">1200</h5>
								<span class="description-text">GOAL COMPLETIONS</span>
							</div>
							<!-- /.description-block -->
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.box-footer -->
			</div>
			
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

	<!-- 数据展示以上  -->
	
	<!-- 实时数据 -->

	<div class="row">
		<div class="col-xs-12">
			<!-- interactive chart -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<i class="fa fa-bar-chart-o"></i>
					<h3 class="box-title" style="font-weight: bolder;">实时数据</h3>
					<div class="box-tools pull-right">
						<div class="btn-group" id="realtime" data-toggle="btn-toggle">
							<button type="button" class="btn btn-default btn-xs active"
								data-toggle="on">On</button>
							<button type="button" class="btn btn-default btn-xs"
								data-toggle="off">Off</button>
						</div>
					</div>
				</div>
				<div class="box-body">
					<div id="interactive"
						style="height: 300px; padding: 0px; position: relative;">
						<canvas class="flot-base" width="1069" height="300"
							style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1069px; height: 300px;"></canvas>
						<div class="flot-text"
							style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
							<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
								style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 24px; text-align: center;">0</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 124px; text-align: center;">10</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 229px; text-align: center;">20</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 333px; text-align: center;">30</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 438px; text-align: center;">40</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 542px; text-align: center;">50</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 647px; text-align: center;">60</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 751px; text-align: center;">70</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 856px; text-align: center;">80</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; max-width: 97px; top: 282px; left: 960px; text-align: center;">90</div>
							</div>
							<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
								style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 269px; left: 15px; text-align: right;">0</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 215px; left: 8px; text-align: right;">20</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 161px; left: 8px; text-align: right;">40</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 108px; left: 8px; text-align: right;">60</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 54px; left: 8px; text-align: right;">80</div>
								<div class="flot-tick-label tickLabel"
									style="position: absolute; top: 1px; left: 1px; text-align: right;">100</div>
							</div>
						</div>
						<canvas class="flot-overlay" width="1069" height="300"
							style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1069px; height: 300px;"></canvas>
					</div>
				</div>
				<!-- /.box-body-->
			</div>
			<!-- /.box -->

		</div>
		<!-- /.col -->
	</div>
	<!-- 实时数据结束 -->
</section>
<!-- /.content -->
