<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Dashboard - KafkaEagle</title>
	
	<#include "../public/css.ftl" encoding="UTF-8">
</head>

<style type="text/css">
	.node circle {
		cursor: pointer;
		fill: #fff;
		stroke: steelblue;
		stroke-width: 1.5px;
	}
	
	.node text {
		font-size: 14px;
	}
	
	path.link {
		fill: none;
		stroke: #ccc;
		stroke-width: 1.5px;
	}
</style>
<body>
	<#include "../public/navbar.ftl" encoding="UTF-8"> 
	
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						Dashboard <small>overview</small>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
						<i class="fa fa-info-circle"></i> 
						<strong>Dashboard
							display topic Kafka related information and Kafka cluster
							information as well as Zookeeper cluster information</strong> If you don't
						know the usage of Kafka and Zookeeper, you can visit the website
						of <a href="http://kafka.apache.org/" target="_blank" class="alert-link">Kafka</a> and <a
							href="http://zookeeper.apache.org/" target="_blank"
							class="alert-link">Zookeeper</a> to view the relevant usage.
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div id="brokers_count" class="huge">0</div>
									<div>Brokers</div>
								</div>
							</div>
						</div>
						<a href="/ke/cluster/info">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-comment-o fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div id="topics_count" class="huge">0</div>
									<div>Topics</div>
								</div>
							</div>
						</div>
						<a href="/ke/topic/list">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-sitemap fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div id="zks_count" class="huge">0</div>
									<div>Zookeepers</div>
								</div>
							</div>
						</div>
						<a href="/ke/cluster/info">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-users fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div id="consumers_count" class="huge">0</div>
									<div>ConsumerGroups</div>
								</div>
							</div>
						</div>
						<a href="/ke/consumers">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-tasks fa-fw"></i> Kafka Brokers
							<div class="pull-right"></div>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="kafka_brokers"></div>
						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
	</div>
</body>

<#include "../public/script.ftl">
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/d3/d3.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/d3/d3.layout.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/main/index.js"></script>

</html>
