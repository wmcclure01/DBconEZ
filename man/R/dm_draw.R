#'@importFrom dm dm_draw
#'
NULL
#' Draw a diagram of the data model
#'
#' `dm_draw()` uses \pkg{DiagrammeR} to draw diagrams.
#' Use [DiagrammeRsvg::export_svg()] to convert the diagram to an SVG file.
#'
#' @param dm A [`dm`] object.
#' @param rankdir Graph attribute for direction (e.g., 'BT' = bottom --> top).
#' @param col_attr Deprecated, use `colummn_types` instead.
#' @param view_type Can be "keys_only" (default), "all" or "title_only".
#'   It defines the level of details for rendering tables
#'   (only primary and foreign keys, all columns, or no columns).
#' @param graph_name The name of the graph.
#' @param graph_attrs Additional graph attributes.
#' @param node_attrs Additional node attributes.
#' @param edge_attrs Additional edge attributes.
#' @param focus A list of parameters for rendering (table filter).
#' @param columnArrows Edges from columns to columns (default: `TRUE`).
#'
#'
#' @seealso [dm_set_colors()] for defining the table colors.
#'@export
dm_draw <- function(dm,
                    rankdir = "LR",
                    col_attr = "column",
                    view_type = "keys_only",
                    columnArrows = TRUE,
                    graph_attrs = "",
                    node_attrs = "",
                    edge_attrs = "",
                    focus = NULL,
                    graph_name = "Data Model") {
        dm::dm_draw(dm,
                    rankdir = "LR",
                    col_attr = "column",
                    view_type = "keys_only",
                    columnArrows = TRUE,
                    graph_attrs = "",
                    node_attrs = "",
                    edge_attrs = "",
                    focus = NULL,
                    graph_name = "Data Model")

}
