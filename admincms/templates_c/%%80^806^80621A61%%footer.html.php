<?php /* Smarty version 2.6.13, created on 2017-11-10 00:22:42
         compiled from footer.html */ ?>
</div>
  <!--treetable-->
    <script type="text/javascript" src="<?php echo @URL_ADMIN_THEM; ?>
js/jquery-1.7.2.min.js"></script>
    <link href="<?php echo @URL_ADMIN_THEM; ?>
tree/jquery.treetable.css" media="all" rel="stylesheet" type="text/css">
    <script src="<?php echo @URL_ADMIN_THEM; ?>
tree/jquery.treetable-ajax-persist.js" type="text/javascript" ></script>
    <script src="<?php echo @URL_ADMIN_THEM; ?>
tree/jquery.treetable-3.0.0.js" type="text/javascript" ></script>
    <script src="<?php echo @URL_ADMIN_THEM; ?>
tree/persist-min.js" type="text/javascript" ></script>
    <?php echo '
    <script type="text/javascript">
    jQuery(document).ready(function($){$("table.category_tree").agikiTreeTable({persist: true, persistStoreName: "files"});});
    </script>
    '; ?>


	 <!--checkall-->
	<script src="<?php echo @URL_ADMIN_THEM; ?>
checkall/jquery.checkall.js"></script>
    
    <!--thong bao -->
	<script type="text/javascript" src="<?php echo @URL_ADMIN_THEM; ?>
report/jquery-impromptu.1.5.js"></script>
    <script type="text/javascript" src="<?php echo @URL_ADMIN_THEM; ?>
report/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo @URL_ADMIN_THEM; ?>
report/examples.css" >
    
    <!--Nhap tien them dau phai -->
    <script type="text/javascript" src="<?php echo @URL_ADMIN_THEM; ?>
num/autoNumeric.js"></script>
    <?php echo '
	<script type="text/javascript">
    jQuery(function($) {$(\'.auto_nume\').autoNumeric(\'init\');});
    </script>
    '; ?>

  
</body>
</html>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "jquery.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>