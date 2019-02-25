class profile::agent_nodes {
  include dockeragent
  docker::node {'web.puppet.vm':}
  docker::node {'db.puppet.vm':}
}
