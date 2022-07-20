resource "random_pet" "this" {
  keepers = {
    test_true  = "<%= yaml_load('config/data/sample.yml')['test_on'] %>"
    test_false = "<%= yaml_load('config/data/sample.yml')['test_false'] %>"
    test_yes   = "<%= yaml_load('config/data/sample.yml')['test_yes'] %>"
    test_no    = "<%= yaml_load('config/data/sample.yml')['test_no'] %>"
    test_on    = "<%= yaml_load('config/data/sample.yml')['test_on'] %>"  # should load as "on" string instead of boolean true
    test_off   = "<%= yaml_load('config/data/sample.yml')['test_off'] %>" # should load as "off" string instead of boolean false
    test_y     = "<%= yaml_load('config/data/sample.yml')['test_y'] %>"
    test_n     = "<%= yaml_load('config/data/sample.yml')['test_n'] %>"
    test_Y     = "<%= yaml_load('config/data/sample.yml')['test_Y'] %>"
    test_N     = "<%= yaml_load('config/data/sample.yml')['test_N'] %>"
  }
}
