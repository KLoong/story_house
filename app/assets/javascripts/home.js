 $(function(){
        setInterval(img_change,5000);
        img_change();
  })
  var imgIndex = 1;

  function img_change(){
    var kvbg_len = $(".banner_img").length;
    // 第一步隐藏＋缩放 // 第二步大图显示 // 第三步把除了正在隐藏和正在显示的变为大图
    // alert(imgIndex);// alert(imgIndex);// alert(kvbg_len);// alert(imgIndex==kvbg_len);

    if(imgIndex==kvbg_len){

      $("#"+"top_show_img"+imgIndex).removeClass("big_bg").removeClass("up").addClass("down");
      imgIndex = 1;
      $("#"+"top_show_img"+imgIndex).removeClass("big_bg").removeClass("down").addClass("up");
      for(var i=0;i<kvbg_len;i++){
        if($("."+"banner_img").eq(i).attr("id").includes(imgIndex) || $("."+"banner_img").eq(i).attr("id").includes(kvbg_len)){

        }else{
          $("."+"banner_img").eq(i).addClass("big_bg");
        }
      }
    }else{
      $("#"+"top_show_img"+imgIndex).removeClass("big_bg").removeClass("up").addClass("down");
      imgIndex ++;
      $("#"+"top_show_img"+imgIndex).removeClass("big_bg").removeClass("down").addClass("up");
      for(var i=0;i<kvbg_len;i++){
        if($("."+"banner_img").eq(i).attr("id").includes(imgIndex) || $("."+"banner_img").eq(i).attr("id").includes(imgIndex-1)){

        }else{
          $("."+"banner_img").eq(i).addClass("big_bg");
        }
      }
    }
  }
//kv 图片效果 －－@END－－
