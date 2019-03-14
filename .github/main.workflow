workflow "Branch Lab" {
  resolves = ["branchlab.deploy"]
  on = "pull_request"
}

action "branchlab.deploy" {
  uses = "taylordaughtry/branch-lab@master"
  secrets = [
    "PRIVATE_KEY",
    "GITHUB_TOKEN",
  ]
  env = {
    MYSQL_CONTAINER_NAME = "project-mysql"
    APP_CONTAINER_NAME = "project-app"
    DB_NAME_PREFIX = "project_"
    HOST = "ec2-34-204-74-235.compute-1.amazonaws.com"
    REFERENCE_DB = "project"
    USER = "ubuntu"
    WEB_DIRECTORY = "/var/www/web"
  }
}
