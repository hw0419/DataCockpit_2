
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
			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
			</div>
			
			<div class="box">
            <div class="box-header">
              <h3 class="box-title" style="font-weight: bolder;">任务信息</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-condensed">
                <tbody><tr>
                  <th style="width: 10px"></th>
                  <th>任务名称</th>
                  <th>状态</th>
                  <th style="width: 40px">进度</th>
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
                      <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                    </div>
                  </td>
                  <td><span class="badge bg-light-blue">30%</span></td>
                </tr>
                <tr>
                  <td>4.</td>
                  <td>媒体渠道数据表分析</td>
                  <td>
                    <div class="progress progress-xs progress-striped active">
                      <div class="progress-bar progress-bar-success" style="width: 90%"></div>
                    </div>
                  </td>
                  <td><span class="badge bg-green">90%</span></td>
                </tr>
              </tbody></table>
            <!-- /.box-body -->
          </div>
			
			
		</div>
		<!-- /.box-header -->
	</div>
	<!-- 系统消息以上 -->

	<!-- 数据展示以下  -->
	<div class="row">
		<div class="col-md-12">
			<div class="box" style="border-top-color: red">
				<div class="box-header with-border">
					<h3 class="box-title" style="font-weight: bolder;">数据展示</h3>

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

	<!-- 折线图的控件 -->
	<div class="box box-solid bg-teal-gradient">
		<div class="box-header ui-sortable-handle" style="cursor: move;">
			<i class="fa fa-th"></i>

			<h3 class="box-title">Sales Graph</h3>

			<div class="box-tools pull-right">
				<button type="button" class="btn bg-teal btn-sm"
					data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn bg-teal btn-sm"
					data-widget="remove">
					<i class="fa fa-times"></i>
				</button>
			</div>
		</div>
		<div class="box-body border-radius-none">
			<div class="chart" id="line-chart"
				style="height: 250px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
				<svg height="250" version="1.1" width="416.25"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink"
					style="overflow: hidden; position: relative; left: -0.75px; top: -0.59375px;">
					<desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
					<defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
					<text x="51.5" y="212" text-anchor="end" font-family="Open Sans"
						font-size="10px" stroke="none" fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal">
					<tspan dy="4.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
					<path fill="none" stroke="#efefef" d="M64,212H391.25"
						stroke-width="0.4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<text x="51.5" y="165.25" text-anchor="end" font-family="Open Sans"
						font-size="10px" stroke="none" fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">5,000</tspan></text>
					<path fill="none" stroke="#efefef" d="M64,165.25H391.25"
						stroke-width="0.4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<text x="51.5" y="118.5" text-anchor="end" font-family="Open Sans"
						font-size="10px" stroke="none" fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">10,000</tspan></text>
					<path fill="none" stroke="#efefef" d="M64,118.5H391.25"
						stroke-width="0.4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<text x="51.5" y="71.75" text-anchor="end" font-family="Open Sans"
						font-size="10px" stroke="none" fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">15,000</tspan></text>
					<path fill="none" stroke="#efefef" d="M64,71.75H391.25"
						stroke-width="0.4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<text x="51.5" y="25" text-anchor="end" font-family="Open Sans"
						font-size="10px" stroke="none" fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">20,000</tspan></text>
					<path fill="none" stroke="#efefef" d="M64,25H391.25"
						stroke-width="0.4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<text x="331.20777642770355" y="224.5" text-anchor="middle"
						font-family="Open Sans" font-size="10px" stroke="none"
						fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal" transform="matrix(1,0,0,1,0,6)">
					<tspan dy="4.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2013</tspan></text>
					<text x="185.67496962332928" y="224.5" text-anchor="middle"
						font-family="Open Sans" font-size="10px" stroke="none"
						fill="#ffffff"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: &quot;Open Sans&quot;; font-size: 10px; font-weight: normal;"
						font-weight="normal" transform="matrix(1,0,0,1,0,6)">
					<tspan dy="4.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
					<path fill="none" stroke="#efefef"
						d="M64,187.0729C73.1455042527339,186.8111,91.4365127582017,188.6507125,100.5820170109356,186.0257C109.7275212636695,183.4006875,128.0185297691373,167.23501010928962,137.1640340218712,166.0728C146.2101306196841,164.9232226092896,164.30232381530982,178.9968375,173.3484204131227,176.77855C182.3945170109356,174.5602625,200.48671020656136,150.5384775273224,209.53280680437425,148.3265C218.67831105710815,146.09021502732242,236.96931956257595,156.6596875,246.11482381530985,158.9855C255.26032806804375,161.31131249999999,273.55133657351155,177.9828095628415,282.6968408262454,166.933C291.7429374240583,156.0032970628415,309.8351306196841,77.96239053867401,318.881227217497,71.06744999999998C327.82791616038884,64.24827803867402,345.72129404617255,104.40017431318681,354.6679829890644,112.07655C363.81348724179827,119.92351181318682,382.1044957472661,127.8897375,391.25,133.1608"
						stroke-width="2"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
					<circle cx="64" cy="187.0729" r="4" fill="#efefef" stroke="#efefef"
						stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="100.5820170109356" cy="186.0257" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="137.1640340218712" cy="166.0728" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="173.3484204131227" cy="176.77855" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="209.53280680437425" cy="148.3265" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="246.11482381530985" cy="158.9855" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="282.6968408262454" cy="166.933" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="318.881227217497" cy="71.06744999999998" r="4"
						fill="#efefef" stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="354.6679829890644" cy="112.07655" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
					<circle cx="391.25" cy="133.1608" r="4" fill="#efefef"
						stroke="#efefef" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
				<div class="morris-hover morris-default-style"
					style="left: 17px; top: 119px; display: none;">
					<div class="morris-hover-row-label">2011 Q1</div>
					<div class="morris-hover-point" style="color: #efefef">Item
						1: 2,666</div>
				</div>
			</div>
		</div>
		<!-- /.box-body -->
		<div class="box-footer no-border">
			<div class="row">
				<div class="col-xs-4 text-center"
					style="border-right: 1px solid #f4f4f4">
					<div style="display: inline; width: 60px; height: 60px;">
						<canvas width="60" height="60"></canvas>
						<input type="text" class="knob" data-readonly="true" value="20"
							data-width="60" data-height="60" data-fgcolor="#39CCCC"
							readonly="readonly"
							style="width: 34px; height: 20px; position: absolute; vertical-align: middle; margin-top: 20px; margin-left: -47px; border: 0px; background: none; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Arial; text-align: center; color: rgb(57, 204, 204); padding: 0px; -webkit-appearance: none;">
					</div>

					<div class="knob-label">Mail-Orders</div>
				</div>
				<!-- ./col -->
				<div class="col-xs-4 text-center"
					style="border-right: 1px solid #f4f4f4">
					<div style="display: inline; width: 60px; height: 60px;">
						<canvas width="60" height="60"></canvas>
						<input type="text" class="knob" data-readonly="true" value="50"
							data-width="60" data-height="60" data-fgcolor="#39CCCC"
							readonly="readonly"
							style="width: 34px; height: 20px; position: absolute; vertical-align: middle; margin-top: 20px; margin-left: -47px; border: 0px; background: none; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Arial; text-align: center; color: rgb(57, 204, 204); padding: 0px; -webkit-appearance: none;">
					</div>

					<div class="knob-label">Online</div>
				</div>
				<!-- ./col -->
				<div class="col-xs-4 text-center">
					<div style="display: inline; width: 60px; height: 60px;">
						<canvas width="60" height="60"></canvas>
						<input type="text" class="knob" data-readonly="true" value="30"
							data-width="60" data-height="60" data-fgcolor="#39CCCC"
							readonly="readonly"
							style="width: 34px; height: 20px; position: absolute; vertical-align: middle; margin-top: 20px; margin-left: -47px; border: 0px; background: none; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Arial; text-align: center; color: rgb(57, 204, 204); padding: 0px; -webkit-appearance: none;">
					</div>

					<div class="knob-label">In-Store</div>
				</div>
				<!-- ./col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.box-footer -->
	</div>
	<!-- 折线图控件 -->
	<!-- 数据展示以上  -->
</section>
<!-- /.content -->
