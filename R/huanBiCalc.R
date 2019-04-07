#' 根据一个时间序列数据计算环比上一期金额，差异，增长百分比
#'
#' @param data 一个数据值的数组即可，不需要是数据框。
#'
#' @return 返回一个数据框；
#' @export
#' @import  dplyr
#' @examples  huanBiCalc(x);
huanBiCalc <- function (value)
{

  pre <-lag(value);
  diff <- value -pre;
  diff_per <- round(diff/pre*100,2);
  rs <- data.frame(value,pre,diff,diff_per);
  return(rs);
}
