# Pandoc provides a really nice, minamalist latex + pandoc image
FROM pandoc/latex:latest

# We need some packages to be able to use this in GitLab CI/CD
RUN apk --no-cache add make busybox py3-pygments

# And some CTAN pacakages I need to build LUG slide decks
RUN tlmgr install --repository http://mirror.ctan.org/systems/texlive/tlnet \
    beamertheme-metropolis \
    pgfopts \
    minted \
    fontspec \
    xcolor \
    hyperref \
    fvextra \
    catchfile \
    xstring \
    enumitem

ENTRYPOINT []
