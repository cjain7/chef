name "base"
description "Baseline configuration for all systems."

run_list(
  "recipe[my_users]"
)
