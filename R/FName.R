#' 设置泛型函数，用于提取类的FName字段
#'
#' @param X
#'
#' @return 返回数值
#' @export
#' @include class_bill.R
#' @examples   FName(data);
setGeneric('FName',signature = "X",function (X) {
  standardGeneric('FName')
});

#' 取用于对象于提供相应的数据
#'
#' @param bill 基类bill
#'
#' @return 返回相应的数据
#' @export
#' @include class_bill.R
#' @examples FName(data);
setMethod('FName','bill',function (X)
{
  X@FName;
})
