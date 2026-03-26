{% macro multiply(x,y,precision_value) %}
  round({{x}}*{{y}},{{precision_value}})
{% endmacro %}