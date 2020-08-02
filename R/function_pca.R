plot_pca <- function( scmat, num_features ){
  sel <- head(order(rowVars(scmat), decreasing=TRUE), num_features)
  pca_results <- prcomp(t(scmat[sel,]))
  plot( pca_results$x[,"PC1"], pca_results$x[,"PC2"])
}