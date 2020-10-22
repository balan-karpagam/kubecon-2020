# @title Namespace must be istio enabled
#
# All namespaces must have the "istio-enjection" label set to "enabled"
#
# @kinds /Namespace 

package namespaceDenyIstioInjection

import data.lib.core

policyID := "P1005"

violation[msg] {
  core.kind = "Namespace"
  not core.labels["istio-injection"]
  msg = core.format_with_id(sprintf("Namespace  %s does not have istio injection label", [core.name]), policyID)
}


violation[msg] {
    core.kind = "Namespace"
    not core.labels["istio-injection"] = "enabled"
    msg = core.format_with_id(sprintf("Namespace  %s does not have istio enabled", [core.name]), policyID)
}

