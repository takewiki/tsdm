#' 定义销售订单的表头字段
#'
#' @slot FDate character.单据日期
#'
#' @return 没有返回值
#' @export
#' @include class_bill.R
#' @examples 不做示例
setClass('salesOrderHead',slots=c(FDate='character'),contains = 'bill',
         prototype = prototype(FInterId=1L,FNumber='000001',FName='sample_record_1',FDate='2018-01-01'));

