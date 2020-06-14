#-------------------------------------------------------------------------------------------------------------
# My Rust Dev Container
#-------------------------------------------------------------------------------------------------------------

FROM ubuntu:20.04


#-------------------------------------------------------------------------------------------------------------
# Personalization
#-------------------------------------------------------------------------------------------------------------
# ARG REPO="archive"      
ARG REPO="hk.archive"
ENV TZ="Asia/Hong_Kong"
ARG USERNAME=vscode
ARG USER_UID=1028
ARG USER_GID=100

#-------------------------------------------------------------------------------------------------------------

ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive
COPY bash_aliases /etc/skel/.bash_aliases
COPY --chown=${USER_UID}:${USER_GID} user_install.sh /tmp/user_install.sh   

#-------------------------------------------------------------------------------------------------------------

RUN export DEBIAN_FRONTEND=noninteractive \
    && echo "-------------------------------------------------------------" \
    && echo " Using Ubuntu Mirror: ${REPO}" \
    && echo "-------------------------------------------------------------" \
    && REPO="${REPO}" sed -i "s|archive\.ubuntu|$REPO\.ubuntu|g" /etc/apt/sources.list \
    && echo "-------------------------------------------------------------" \
    && echo " Updating Ubuntu Package Repo" \
    && echo "-------------------------------------------------------------" \
    && apt-get update \
    && echo "-------------------------------------------------------------" \
    && echo " Installing Misc. Packages" \
    && echo "-------------------------------------------------------------" \
    && apt-get install -y apt-utils dialog locales tzdata sudo bash vim \
    && apt-get install -y curl wget \
    && apt-get install -y openssh-client \
    && echo "-------------------------------------------------------------" \
    && echo " Installing GIT" \
    && echo "-------------------------------------------------------------" \
#    && apt-get install -y git \
    && echo "-------------------------------------------------------------" \
    && echo " Installing GCC" \
    && echo "-------------------------------------------------------------" \
#    && apt-get install -y gcc \
    && echo "-------------------------------------------------------------" \
    && echo " Installing Python" \
    && echo "-------------------------------------------------------------" \
#    && apt-get install -y python3 \
    && echo "-------------------------------------------------------------" \
    && echo " Adding User: ${USERNAME}" \
    && echo "-------------------------------------------------------------" \
    && useradd -s /bin/bash -u ${USER_UID} -g users -G sudo -d /home/$USERNAME -m  -c "Developer" ${USERNAME} \
    && echo Done.

RUN export DEBIAN_FRONTEND=noninteractive \
    && echo "-------------------------------------------------------------" \
    && echo " Installing RUST as ${USERNAME}" \
    && echo "-------------------------------------------------------------" \
    && su - ${USERNAME} -c "/bin/bash /tmp/user_install.sh" \
    && rm -f /tmp/user_install.sh \
    && echo Done.
    