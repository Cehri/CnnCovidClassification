dirNames = ["COVID", "Lung_Opacity", "Normal", "Viral Pneumonia"];
myDir = "C:\Users\Oğuz Can KANDEMİR\Desktop\ytü\ara proje\data\COVID-19_Radiography_Datasetv2";
for j = 1:4
    fullDirName = myDir + "\" +dirNames(j);
    fprintf(fullDirName);
    myFiles = dir(fullfile(fullDirName,'*.png')); %gets all files
        for k = 1:length(myFiles)
            baseFileName = myFiles(k).name;
            fullFileName = fullfile(fullDirName, baseFileName);
            fprintf(1, 'Now reading %s\n', fullFileName);
            tmpFile = imread(fullFileName);
            tmpGrayFile = im2gray(tmpFile);
            delete(fullFileName);
            imwrite(tmpGrayFile,fullFileName);
        end
end
