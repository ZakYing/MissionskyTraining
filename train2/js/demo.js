function() {
  var othis = $(this),
    index = othis.index();
  switch (index) {
  
    case 9:
      //iframe层
      layer.open({
        type: 2,
        title: 'layer mobile页',
        shadeClose: true,
        shade: 0.8,
        area: ['380px', '90%'],
        content: 'mobile/' //iframe的url
      });
      break;
  }