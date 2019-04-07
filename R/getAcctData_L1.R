#' 从财务提供的科目初始数据中提供1级发生数
#'
#' @param netstore_3year_balance  数据框报表
#'
#' @return 返回处理后的数据框
#' @export
#' @import reshape2
#' @examples getAcctData_L1(DATA);
getAcctData_L1 <- function(netstore_3year_balance)
{
  col_name <- names(netstore_3year_balance);

  #col_name;
  col_name_l1 <-col_name[c(-3,-4,-10,-11,-14,-15,-16,-17,-18,-19)];
  #删除原有旧的科目代码3，科目名称4，二级科目代码10，二级科目名称11，
  #部门14，职员15，客户16，供应产17，品牌18，合同19

  #获取所有一级科目数据

  balance_3year_L1 <- netstore_3year_balance[netstore_3year_balance$科目级次==1 & !is.na(netstore_3year_balance$科目级次),col_name_l1];
  #删除不霜的数据
  balance_years_L1<- balance_3year_L1[,c(-2,-4,-6,-7)];
  #str(balance_years_L1);

  #查看相应的数据

  #str(balance_3year_L1);

  #处理年份的数据

  balance_3year_L1_melt <-melt(balance_years_L1,id.vars = c('年份','统一科目','统一名称'),
                               measure.vars = c('借方发生额','贷方发生额'),variable.name = 'famount');
  #按科目进行分年处理数据
  balance_3year_l1_rs <-dcast(balance_3year_L1_melt,统一科目+统一名称~年份+famount,sum);

  acctBalance_L1 <-balance_3year_l1_rs;

  names(acctBalance_L1) <- c('科目代码','科目名称','2015_借方发生额','2015_贷方发生额',
                             '2016_借方发生额','2016_贷方发生额','2017_借方发生额','2017_贷方发生额');
  return(acctBalance_L1);

}
