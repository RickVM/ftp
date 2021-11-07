# lftp action

This action uses lftp to sync a directory to an external server.

## Inputs

**Required** USERNAME  
**Required** PASSWORD  
**Required** HOST

## Example usage

uses: actions/lftp@v1
with:
USERNAME: Mister  
 PASSWORD: Welcome!  
 HOST: myserver.com

# Action development

## Updating the Docker image

Make sure buildx is supported and setup on your system.  
If you get an error stating the multi platform features are not supported on your driver, run:  
`docker buildx create --name mybuilder --use`
