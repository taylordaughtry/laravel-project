workflow "Branch Lab" {
  resolves = ["branchlab.deploy"]
  on = "pull_request"
}

action "branchlab.deploy" {
  uses = "taylordaughtry/branch-lab@master"
  secrets = [
    "GITHUB_TOKEN",
    "PRIVATE_KEY",
  ]
  env = {
    USER = "UPDATE ME"
    WEB_DIRECTORY = "UPDATE ME"
    APP_CONTAINER_NAME = "UPDATE ME"
    MYSQL_CONTAINER_NAME = "UPDATE ME"
    DB_NAME_PREFIX = "UPDATE ME"
    HOST = "UPDATE ME"
    REFERENCE_DB = "UPDATE ME"
  }
}
