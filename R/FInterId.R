#' 设置泛型函数，用于提取类的FInterId字段
#'
#' @param X
#'
#' @return 返回数值
#' @export
#' @include class_bill.R
#' @examples   FInterId(data);
setGeneric('FInterId',signature = "X",function (X) {
  standardGeneric('FInterId')
});

#' 取用于对象于提供相应的数据
#'
#' @param bill 基类bill
#'
#' @return 返回相应的数据
#' @export
#' @include class_bill.R
#' @examples FInterId(data);
setMethod('FInterId','bill',function (X)
{
  X@FInterId;
})
