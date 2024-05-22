# Replication Package

1. Download and install Docker
2. Write (or edit) the python code, data, etc. to build your analysis artifacts
3. Freeze your pip requirements using `pip list --format=freeze > requirements.txt` from your environment (assuming you're using a virtual environment)
4. Make sure Docker has mount access to the results directory through settings > resources > file sharing (set your own path)
5. run `chmod +x replicate.zsh` to activate the results building script
6. run ./replicate.zsh to replicate your results
7. you can now pass this directory around and replicate your results 1:1 (assuming no stochasticity in your artifact generation process) on any computer :)

