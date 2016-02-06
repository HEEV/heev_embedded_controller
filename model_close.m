function model_close(model)
%This function runs when the model is closed.  It will remove the model
%and its support folders from the path.

mdlPath = fileparts(which(model));
paths = textscan(path, '%s', 'Delimiter', pathsep);
paths = paths{1};
for p = 1:length(paths)
    if(strfind(paths{p}, mdlPath) == 1)
        rmpath(paths{p});
    end
end
