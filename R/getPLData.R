#' 从所有一级科目的发生数据中提取出损益的发生数
#' 处理口径的数据，进行了过滤处理
#'
#' @param data 来源于getAcctData_L1 function处理后的数据
#'
#' @return 返回一个数据框
#' @export
#' @import dplyr
#' @examples  getPLData(data);
getPLData <- function (data)
{
  #方法1 比较熟悉的方法
  #balance_byyear_pl <- balance_3year_l1_rs[balance_3year_l1_rs$统一科目 >='6000',];

  #方法2，使用filter处理

  balance_byyear_pl <-filter(data,科目代码 >='6000');


  #损益类科目，借贷方相同，只保留1列
  balance_byyear_delcol <- balance_byyear_pl[,c(1,2,3,5,7)];
  #查看处理后的数据
  #step 1 finished
  #balance_byyear_delcol;
  return(balance_byyear_delcol);

}

