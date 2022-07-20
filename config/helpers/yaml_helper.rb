require "yaml"

module Terraspace::Project::YamlHelper
  # Thanks https://stackoverflow.com/questions/28507195/yaml-ruby-loading-on-as-true
  def yaml_load(path)
    nodes = YAML.parse_file(path)
    nodes.each do |node|
      yaml_load_tranverse(node)
    end
    nodes.to_ruby
   end

  def yaml_load_tranverse(node)
    if node.is_a?(Psych::Nodes::Scalar) && %w(on off).include?(node.value)
      node.quoted = true
    end
    node.children do |child|
      yaml_load_tranverse(child)
    end
  end
end
