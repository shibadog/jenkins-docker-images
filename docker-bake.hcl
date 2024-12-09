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
        JENKINS_AGENT_VERSION = "3261.v9c670a_4748a_9-8"
    }
    tags = [
        "ghcr.io/shibadog/jenkins-agent-dind:2-3261"
    ]
}
