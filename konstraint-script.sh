#!/bin/bash

rm -rf gatekeeper/constraintTemplates/*.yaml
rm -rf gatekeeper/constraints/*.yaml
rm -rf gatekeeper/policies/*.yaml
konstraint create policies -o gatekeeper/policies
mv gatekeeper/policies/constraint*.yaml gatekeeper/constraints/.
mv gatekeeper/policies/template*.yaml gatekeeper/constraintTemplates/.


