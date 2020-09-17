FROM pandoc/latex:latest

RUN apk --no-cache add make bash

ENTRYPOINT ["/bin/bash"]
