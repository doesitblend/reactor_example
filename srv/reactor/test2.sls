invoke_orchestrate_test:
  runner.state.orchestrate:
    - args:
    - mods: test.message
    - pillar:
        event_tag: {{ data['tag'] }}
        event_data: {{ data|json }}

