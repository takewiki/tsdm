#' 设置泛型函数，用于提取类的FNumber字段
#'
#' @param X
#'
#' @return 返回数值
#' @export
#' @include class_bill.R
#' @examples   FNumber(data);
setGeneric('FNumber',signature = "X",function (X) {
  standardGeneric('FNumber')
});

#' 取用于对象于提供相应的数据
#'
#' @param bill 基类bill
#'
#' @return 返回相应的数据
#' @export
#' @include class_bill.R
#' @examples FNumber(data);
setMethod('FNumber','bill',function (X)
  {
  X@FNumber;
})

#' 设置FNumber替代的泛型函数
#'
#' @param X 对象
#' @param value  替代值
#'
#' @return 返回结果
#' @export
#'
#' @examples FNumber(data) <-value;
setGeneric('FNumber<-',signature = 'X',function (X,value){
  standardGeneric('FNumber<-')
});

setReplaceMethod('FNumber','bill',function(X,value){
  initialize(X,FNumber=value)
})
