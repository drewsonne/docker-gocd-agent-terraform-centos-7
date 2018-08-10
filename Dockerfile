
FROM gocd/gocd-agent-centos-7:v18.7.0

ADD https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip /tmp/terraform-install/terraform.zip

RUN yum update -y && \
		yum install https://github.com/beamly/go-gocd/releases/download/0.6.16/go-gocd_0.6.16_linux_amd64.rpm -y && \
	cd /tmp/terraform-install && \
		unzip terraform.zip && \
		cp terraform /usr/local/bin/terraform && \
	rm -rf /tmp/terraform-install && \
		yum clean all && \
		rm -rf /var/cache/yum && \
	gocd --version && \
		terraform --version
