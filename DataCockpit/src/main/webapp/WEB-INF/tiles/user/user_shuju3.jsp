<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>

<link rel="stylesheet" href="dist/css/graph.css">

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>数据详情</h1>
	<ol class="breadcrumb">
		<li><i class="fa fa-dashboard"></i>最近一次的更新时间</li>
		<li>2017-04-22</li>
		<li>15:20:33</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<!-- /.box -->
			<div class="box">
				<div class="box-header" style="width: 180px">
					<h3 class="box-title">数据分析任务列表</h3>
				</div>
				<div id="uploads" style="margin-left: 180px; margin-top: -35px">
					<button type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal2" data-whatever="@jason"
						style="width: 100px; height: 30px; font-size: 14px; line-height: 0px">上传新数据</button>
				</div>
				<div style="margin-left: 300px; margin-top: -29.7px">
					<button id="downs" type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#myModal2" data-whatever="@jason"
						style="width: 100px; height: 30px; font-size: 14px; line-height: 0px">导出数据</button>
				</div>
				<div class="box-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>项目名称</th>
								<th>所在区域</th>
								<th>日期</th>
								<th class="people_num">研发期</th>
								<th class="people_num">市值比</th>
								<th>满意度</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<!-- Main content -->

					<!-- 试试做一个动态图表 -->

					<section class="main">
						<span class="button-label">尺寸:</span> <input type="radio"
							name="resize-graph" id="graph-small"><label
							for="graph-small">小</label> <input type="radio"
							name="resize-graph" id="graph-normal" checked="checked"><label
							for="graph-normal">中</label> <input type="radio"
							name="resize-graph" id="graph-large"><label
							for="graph-large">大</label> <span class="button-label">颜色:</span>
						<input type="radio" name="paint-graph" id="graph-blue"
							checked="checked"><label for="graph-blue">蓝色</label> <input
							type="radio" name="paint-graph" id="graph-green"><label
							for="graph-green">绿色</label> <input type="radio"
							name="paint-graph" id="graph-rainbow"><label
							for="graph-rainbow">彩虹效果</label> <span class="button-label">产品:</span>
						<input type="radio" name="fill-graph" id="f-none"><label
							for="f-none"> 初始 </label> <input type="radio" name="fill-graph"
							id="f-product1" checked="checked"><label for="f-product1">研发期</label>
						<input type="radio" name="fill-graph" id="f-product2"><label
							for="f-product2">市值比</label> <input type="radio"
							name="fill-graph" id="f-product3"><label for="f-product3">满意度</label>
						<ul class="graph-container">
							<li><span>天下房屋...</span>
								<div class="bar-wrapper">
									<div class="bar-container">
										<div class="bar-background"></div>
										<div class="bar-inner">25</div>
										<div class="bar-foreground"></div>
									</div>
								</div></li>
							<li><span>知更鸟AP...</span>
								<div class="bar-wrapper">
									<div class="bar-container">
										<div class="bar-background"></div>
										<div class="bar-inner">50</div>
										<div class="bar-foreground"></div>
									</div>
								</div></li>
							<li><span>通达科技...</span>
								<div class="bar-wrapper">
									<div class="bar-container">
										<div class="bar-background"></div>
										<div class="bar-inner">75</div>
										<div class="bar-foreground"></div>
									</div>
								</div></li>
							<li><span>金和协同...</span>
								<div class="bar-wrapper">
									<div class="bar-container">
										<div class="bar-background"></div>
										<div class="bar-inner">100</div>
										<div class="bar-foreground"></div>
									</div>
								</div></li>
							<li><span>ADOBE多...</span>
								<div class="bar-wrapper">
									<div class="bar-container">
										<div class="bar-background"></div>
										<div class="bar-inner">50</div>
										<div class="bar-foreground"></div>
									</div>
								</div></li>
							<li>
								<ul class="graph-marker-container">
									<li style="bottom: 25%;"><span>25%</span></li>
									<li style="bottom: 50%;"><span>50%</span></li>
									<li style="bottom: 75%;"><span>75%</span></li>
									<li style="bottom: 100%;"><span>100%</span></li>
								</ul>
							</li>
						</ul>
					</section>

					<div class="col-md-6">
						<!-- AREA CHART -->
						<div id="areaTu" class="box box-primary"
							style="width: 700px; position: fixed; top: 38%; left: -100%">
							<div class="box-header with-border">
								<h3 class="box-title">曲线关系图</h3>
								<div class="box-tools pull-right">
									<button id="area-close" type="button" class="btn btn-box-tool">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="areaChart" style="height: 250px"></canvas>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- AREA CHART!!! -->

						<!-- BAR CHART -->
						<div id="barTu" class="box box-success"
							style="width: 700px; position: fixed; top: 38%; left: -100%">
							<div class="box-header with-border">
								<h3 class="box-title">柱状关系图</h3>
								<div class="box-tools pull-right">
									<button id="bar-close" type="button" class="btn btn-box-tool">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="barChart" style="height: 230px"></canvas>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- BAR CHART!!! -->

					</div>
					<!-- /.col (RIGHT) -->
					<!-- /.content -->
				</div>
				<!-- /.box-body -->

			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="height: 60%">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">信息显示</h4>
			</div>

			<div class="modal-body">
				<center>
					<input class="ups1" type="text" size="20" name="upfile" id="upfile"
						style="border: 1px dotted #ccc"> <input type="button"
						value="浏览" onclick="path.click()"
						style="border: 1px solid #ccc; background: #fff"> <input
						type="file" id="path" style="display: none"
						onchange="upfile.value=this.value">
				</center>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button id="ok_11" type="button" class="btn btn-primary">
					确定</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal_1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="height: 60%">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel_1">信息显示</h4>
			</div>

			<div class="modal-body">
				<center>
					<textarea id="text-area" cols="70" rows="10"></textarea>
				</center>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">确定</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script>
	$("#ok_11").click(function() {
		var a1 = $(".ups1").val();
		$.ajax({
			url : "./user_uploadss.shtml",
			type : "post",
			traditional : true,
			data : {
				"urls" : a1
			},
			dataType : "json",
			success : function(result) {
				if (result.flag == 1) {
					window.location.href = "./user_shuju3.shtml?id=${name2}"
				}
			}
		})
	})
</script>



