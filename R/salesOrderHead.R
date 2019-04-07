#' 实例化salesOrderHead一个娄为对象
#'
#' @param data 数据框,字名名必须为FInterId,FNumber,FName,FDate
#'
#' @return  返回实例化对象
#' @export
#' @include class_salesOrderHead.R
#'
#' @examples salesOrderHead(data.frame(FInterId,FNumber,FName,FDate));
salesOrderHead <- function (data)
{
   res <-new ('salesOrderHead');
   res <- initialize(res,FInterId=data$FInterId,
                     FNumber=data$FNumber,
                     FName=data$FName,
                     FDate=data$FDate);
}
