{% from "powerdns/map.jinja" import powerdns with context %}

include:
  - powerdns

powerdns_backend_pgsql:
  pkg.installed:
    - name: {{ powerdns.lookup.backend_pgsql_pkg }}
    - require:
      - pkg: powerdns
