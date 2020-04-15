FROM emeraldsquad/sonar-scanner:latest

LABEL "com.github.actions.name"="SonarQube Scan"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL version="0.1.0"
LABEL repository="https://github.com/journalio/sonarqube-action"
LABEL homepage="https://journalio.github.io"
LABEL maintainer="WesleyKlop"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
