
package main

deny contains msg if {
  resource := input.resource_changes[_]
  resource.type == "aws_instance"
  resource.change.after.instance_type != "t2.micro"

  msg := "only t2.micro instance type is allowed"
}

