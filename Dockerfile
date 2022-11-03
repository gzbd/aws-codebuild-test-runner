FROM 481992040149.dkr.ecr.eu-central-1.amazonaws.com/alpine:latest

# Add docker cli, requried to run cron job containers
# Potenatially this could be made by multistage builds, but "wait-for-ports"
# requires go toolkit
RUN apk add --update docker openrc
RUN rc-update add docker boot
