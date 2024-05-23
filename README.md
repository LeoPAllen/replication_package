# Replication Scaffolding

This repository contains scaffolding for building directly replicable analysis pipelines. Docker makes your replication process portable and consistent. As long as the empirical pipeline is deterministic and dependencies are specified explicitly, any result built using this package on any machine (including cloud resources) will replicate 1:1 (if for example, this directory is zipped and sent to a journal or pushed to a project-specific git repo.)


1. Download and install Docker
2. Write (or edit) the python code, data, etc. to build your analysis artifacts
3. Freeze your pip requirements using `pip list --format=freeze > requirements.txt` to save your working environment requirements.
4. Make sure Docker has mount access to the results directory through settings > resources > file sharing (set your own path)
5. run `chmod +x replicate.zsh` to activate the results building script
6. run `./replicate.zsh` to replicate your results (or, run each step in this file separately from your command line interface)
8. you can now pass this directory around and replicate your results 1:1 on any compute resource

