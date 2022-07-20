# Terraspace Project

This is an quick example shows how use a custom YAML load method.

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

[![BoltOps Learn Badge](https://img.boltops.com/boltops-learn/boltops-learn.png)](https://learn.boltops.com)

## Debugging Session

    $ terraspace build demo
    Building .terraspace-cache/us-west-2/dev/stacks/demo
    $ cat .terraspace-cache/us-west-2/dev/stacks/demo/main.tf
    resource "random_pet" "this" {
      keepers = {
        test_true  = "on"
        test_false = "false"
        test_yes   = "true"
        test_no    = "false"
        test_on    = "on"  # should load as "on" string instead of boolean true
        test_off   = "off" # should load as "off" string instead of boolean false
        test_y     = "y"
        test_n     = "n"
        test_Y     = "Y"
        test_N     = "N"
      }
    }
    $