#' 定义一个单据的基本类型
#'
#' @slot FInterId integer. 单据内码
#' @slot FNumber character. 单据代码
#' @slot FName character.  单据名称
#'
#' @return    没有返回值
#' @export
#'
#' @examples  不需要示例
setClass('bill',slots = c(FInterId = 'integer',FNumber='character',FName='character'),
         contains = 'VIRTUAL');
