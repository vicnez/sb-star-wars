<?php session_start(); ?>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo WEBAPP_URL; ?>?page_key=peoples">Star wars</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="<?php echo WEBAPP_URL; ?>?page_key=peoples">Peoples</a></li>
      <li class=""><a href="<?php echo WEBAPP_URL; ?>?page_key=films">Films</a></li>

      
     
    </ul>

    <?php if(!empty($_SESSION["auth_username"])){ ?> 
     <ul class="nav navbar-nav" style="float: right;">
       <li class="" ><a href="<?php echo WEB_URL; ?>logout.php">Logout</a></li>
     </ul>
   <?php }else{
      header("location: ".WEB_URL."auth.php");
   } ?>
  </div>
</nav>

<script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
        $('ul.nav a').filter(function() {
             return this.href == url;
        }).parent().addClass('active');
    });
</script>