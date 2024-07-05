# Build from the MATLAB base image
#ESSA PORRA NÃO DEU CERTO 
FROM mathworks/matlab:r2024a

# Copy your script/function to be executed.
COPY myscript.m ./

# Start MATLAB in batch mode and execute your script/function.
CMD ["matlab","-batch","myscript"]