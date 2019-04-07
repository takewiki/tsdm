#' 设置泛型函数，用于提取类的FDate字段
#'
#' @param X
#'
#' @return 返回数值
#' @export
#' @include class_bill.R
#' @examples   FDate(data);
setGeneric('FDate',signature = "X",function (X) {
  standardGeneric('FDate')
});

#' 取用于对象于提供相应的数据
#'
#' @param bill 基类bill
#'
#' @return 返回相应的数据
#' @export
#' @include class_salesOrderHead.R
#' @examples FDate(data);
setMethod('FDate','salesOrderHead',function (X)
{
  X@FDate;
})
