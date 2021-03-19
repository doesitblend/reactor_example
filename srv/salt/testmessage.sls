{%- set testdat = salt.pillar.get('event_data') -%}
a test message on a minion:
  salt.function:
    - name: test.arg
    - tgt: '*' 
    - arg:
{% for item in testdat %}
      - {{ item }}
{% endfor %}

{# Add additional logic here based on additional event data #}
