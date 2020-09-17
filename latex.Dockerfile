# Pandoc provides a really nice, minamalist latex + pandoc image
FROM pandoc/latex:latest

# We need some packages to be able to use this in GitLab CI/CD
RUN apk --no-cache add make busybox

# And some CTAN pacakages I need to build LUG slide decks
RUN tlmgr install beamertheme-metropolis

ENTRYPOINT []
