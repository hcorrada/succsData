#' Curated dataset of many colon normal and cancer samples on Affymetrix hgu133plus2 expression arrays. 
#'
#' Data used in Corrada Bravo, et al. gene expression anti-profiles paper:  BMC Bioinformatics 2012, 13:272 doi:10.1186/1471-2105-13-272. Measurements are z-scores obtained from the GeneExpression Barcode in the 'frma' package. Only probes mapped to genes within colon cancer hypo-methylation blocks defined in Hansen et al. are included.
#'
#' @author Hector Corrada Bravo
#' @section format: Data is an \code{\link{ExpressionSet}} object. The \code{exprs} slot contains gene expression barcode z-scores from \code{frma} preprocessed data. The \code{phenoData} slot contains a data frame with the following columns: \describe{
#'     \item{\code{filename}:}{The CEL filename in the Gene Expression Omnibus (GEO)}
#'     \item{\code{DB_ID}:}{The GSM sample id in GEO}
#'     \item{\code{ExperimentID}:}{The GSE experiment id in GEO}
#'     \item{\code{Tissue}:}{Tissue type, obtained from the gene expression barcode annotation}
#'     \item{\code{SubType}:}{Sample sub-type, obtained from the gene expression barcode annotation}
#'     \item{\code{ClinicalGroup}:}{Clinical sample annotation, obtained from the gene expression barcode annotation}
#'     \item{\code{Status}:}{Normal (0) or Cancer (1) indicator}
#'   }
#'
#' @examples
#' data(apColonData)
#' pData(apColonData)
#'
#' @seealso \code{\link{ExpressionSet}} for the class definition, \code{\link[frma]{frma}} for the preprocessing method used, \code{\link[frma]{barcode}} for the function to obtain the z-score definition.
#'
#' @references
#'   Corrada Bravo, H., Pihur, V., McCall, M., Irizarry, R.A., Leek, J.T. (2012). "Gene expression anti-profiles as a basis for accurate universal cancer signatures" BMC Bioinformatics, 13:272
#'
#' Hansen, K. D., Timp, W., Bravo, H. C., Sabunciyan, S., Langmead, B., McDonald, O. G., Wen, B., et al. (2011). "Increased methylation variation in epigenetic domains across cancer types." Nature Genetics, 43(8), 768
#'
#' @name apColonData
#' @docType data
NULL


