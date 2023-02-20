PolyBot

This is a simple python telegram bot in a docker container.
I built it in amd64 and arm64 in parallel and deployed it running the command
docker buildx build --platform linux/amd64,linux/arm64 --push -t .
Deployment

To deploy this project run

docker run -d --platform linux/amd64 --restart always --name polybot docker.io/daniatalla/polybot:v1
If your machine is based on arm64 (m1 mac, etc..) run this instead

docker run -d --platform linux/arm64 --restart always --name polybot docker.io/daniatalla/polybot:v1

inorder to download a video just send it the words:
"Download this video" and then insert the video name you want it to download like so.. 
Download this video Taylor Swift - Love Story
you should be able to receive the Video to the chat after it was downloaded.