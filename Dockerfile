FROM node:22-slim

WORKDIR /usr/src/app

COPY . .

# Inject public env at build-time so Next.js client bundle can access it
ARG NEXT_PUBLIC_CHATKIT_WORKFLOW_ID
ENV NEXT_PUBLIC_CHATKIT_WORKFLOW_ID=$NEXT_PUBLIC_CHATKIT_WORKFLOW_ID

RUN npm install
RUN npm run build

CMD [ "npx", "next", "start" ]
