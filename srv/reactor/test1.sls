{# This will inherit the "data" variable which contains all the event info #}
invoke_orchestrate_test:
  runner.state.orchestrate:
    - mods: testmessage
    - pillar:
        event_tag: {{ data['tag'] }}
        event_data: {{ data|tojson }}
