archlayers = [
    imageInputLayer([150 150 1]) 

    convolution2dLayer(3,4)
    batchNormalizationLayer
    reluLayer

    maxPooling2dLayer(2)

    fullyConnectedLayer(4)
    softmaxLayer
    classificationLayer];

imds = imageDatastore('C:\Users\Oğuz Can KANDEMİR\Desktop\ytü\ara proje\data\COVID-19_Radiography_Datasetv2', ...
    'IncludeSubfolders',true,'LabelSource','foldernames');

miniBatchSize = 64;
options = trainingOptions( 'sgdm',...
    'MiniBatchSize', miniBatchSize,...
    'Plots', 'training-progress');

net = trainNetwork(imds, archlayers, options);	