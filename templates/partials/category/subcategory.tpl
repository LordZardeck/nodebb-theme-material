<!-- IF !config.subCategoriesAsCards -->
<div class="subcategory">
	<!-- IF children.length -->
	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
			<div class="lv-title">
				[[global:subcategories]]
			</div>
			</div>
			<div class="lv-body">
				<!-- BEGIN children -->
				<div class="lv-item media row clearfix">
					<div class="pull-left" style="{function.generateCategoryBackground}">
			        	<i class="fa fa-fw {children.icon}"></i>
			    	</div>
			    	<div class="media-body">
			    		<div class="lv-title">
			    			<!-- IF children.link -->
							<a href="{children.link}" itemprop="url" target="_blank">
							<!-- ELSE -->
							<a href="{config.relative_path}/category/{children.slug}" itemprop="url">
							<!-- ENDIF children.link -->
							{children.name}
							</a><br />
							<small class="lv-small">{children.description}</small>
			    		</div>
			    		<!-- IF !children.link -->
			    		<div class="lv-actions">
			    			<ul>
			    				<li>
			    					{children.topic_count}
									<small>[[global:topics]]</small>
			    				</li>
			    				<li>
			    					{children.post_count}
									<small>[[global:posts]]</small>
			    				</li>
			    			</ul>
			    		</div>
			    		<!-- ENDIF !children.link -->
			    	</div>
				</div>
				<!-- END children -->
			</div>
		</div>
	</div>
	<!-- ENDIF children.length -->
</div>
<!-- ENDIF !config.subCategoriesAsCards -->

<!-- IF config.subCategoriesAsCards -->
<!-- IF children.length -->
<div class="row">
	<!-- BEGIN children -->
	<div class="<!-- IF children.class -->{children.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF children.class -->">
		<div class="new-card" style="{function.generateCategoryBackground}">
			<!-- IF children.link -->
			<a href="{children.link}" itemprop="url" target="_blank">
			<!-- ELSE -->
			<a href="{config.relative_path}/category/{children.slug}" itemprop="url">
			<!-- ENDIF children.link -->			

				<div class="new-card-body">
					<ul class="category-counts pull-right">
	                    <li>
	                        <i class="fa fa-book"></i><span class="human-readable-number" title="{children.totalTopicCount}"></span>
	                    </li>
	                    <li>
	                        <i class="fa fa-pencil"></i><span class="human-readable-number" title="{children.totalPostCount}"></span>
	                    </li>
	                </ul>
					<h4>
						{children.name} <!-- IF children.icon -->
								<i class="fa {children.icon} fa-fw"></i>
								<!-- ENDIF children.icon -->
					</h4>
					<small>{children.description}</small>
				</div>
			</a>
			<div class="new-card-footer">
				<!-- BEGIN posts -->				
				<div component="category/posts">
					<div class="pull-left hidden-xs user-avatar">
				    	<a href="{config.relative_path}/user/{children.posts.user.userslug}">
				        	<img class="user-picture" src="{children.posts.user.picture}" title="{children.posts.user.username}">
				    	</a>
					</div>
					<div class="topic-title">
						<a href="{config.relative_path}/topic/{children.posts.topic.slug}">{children.posts.topic.title}</a>
					</div>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
	<!-- END children -->
</div>
<!-- ENDIF children.length -->
<!-- ENDIF config.subCategoriesAsCards -->