#' 针对数据进行演示
#'
#' @return 数据数据值
#' @export
#' @include  salesOrderHead.R
#' @examples salesOrderHead_Demo();
salesOrderHead_Demo <-function ()
{
  data('salesOrderHead_sampleData');
  res <-salesOrderHead(salesOrderHead_sampleData);
}
