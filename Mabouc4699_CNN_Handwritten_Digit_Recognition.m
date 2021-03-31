trainingPath = fullfile('user_defined_path\trainingSet');
testingPath = fullfile('user_defined_path\testSet');

trainImds = imageDatastore(trainingPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames', 'FileExtensions', '.jpg');
testImds = imageDatastore(testingPath, 'IncludeSubFolders', true, 'LabelSource', 'foldernames', 'FileExtensions', '.jpg');

[trainImdsTraining, trainImdsValidation] = splitEachLabel(trainImds,0.8);

inputSize = [28 28 1];
numClasses = 10;
layers = [ imageInputLayer(inputSize) 
    convolution2dLayer(5,15, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(5,30,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)    
    
    convolution2dLayer(5,45,'Padding','same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    fullyConnectedLayer(500)
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];

options = trainingOptions('sgdm','MaxEpochs',100,'ValidationData',trainImdsValidation,'ValidationFrequency',30,'Verbose',false,'Plots','training-progress','MiniBatchSize',128, 'ExecutionEnvironment','cpu');
net = trainNetwork(trainImdsTraining, layers, options);

% YPred = classify(net,trainimdsValidation);
% YValidation = trainimdsValidation.Labels;
% accuracy = sum(YPred == YValidation)/numel(YValidation);

testPredictions = classify(net, testImds);
testLabels = testImds.Labels;
testing_accuracy = sum(testPredictions == testLabels)/numel(testLabels);

confusionchart(testLabels, testPredictions, 'RowSummary','row-normalized','ColumnSummary','column-normalized')

cm = confusionmat(testLabels, testPredictions);
confusion_correct_pred = 0;
for i = 1:10
    confusion_correct_pred = cm(i,i) + confusion_correct_pred;
end
sum = sum(sum(cm));
conf_acc = confusion_correct_pred / sum;
