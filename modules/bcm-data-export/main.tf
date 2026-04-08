resource "aws_bcmdataexports_export" "this" {
  export {
    name = var.name

    data_query {
      query_statement      = var.query_statement
      table_configurations = var.table_configurations
    }

    destination_configurations {
      s3_destination {
        s3_bucket = var.s3_bucket
        s3_prefix = var.s3_prefix
        s3_region = var.s3_region
        s3_output_configurations {
          compression = var.compression
          format      = var.format
          output_type = var.output_type
          overwrite   = var.overwrite
        }
      }
    }

    refresh_cadence {
      frequency = var.frequency
    }
  }

  tags = var.tags
}
