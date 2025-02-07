group "default" {
	targets = ["devcontainer", "jenkins-agent-dind"]
}

target "base" {
    context = "."
}

target "devcontainer" {
    inherit = "base"
    target = "devcontainer"
}

target "jenkins-agent-dind" {
    inherit = "base"
    target = "jenkins-agent-dind"
    args = {
        JENKINS_AGENT_VERSION = "3283.v92c105e0f819-8"
    }
    tags = [
        "ghcr.io/shibadog/jenkins-agent-dind:3283.v92c105e0f819-8"
    ]
}
