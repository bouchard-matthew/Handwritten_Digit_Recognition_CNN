% Initialize Labels and Sets variables with training data
tr_labels = loadMNISTLabels('training_label');
tr_set = loadMNISTImages('training_set');
ts_labels = loadMNISTLabels('test_label');
ts_set = loadMNISTImages('test_set');

tr_labels(tr_labels == 0) = 10;
ts_labels(ts_labels == 0) = 10;
tr_labels = tr_labels.';
ts_labels = ts_labels.';

for i = 1:60000
    txt_img = 'img';
    i_txt = num2str(i);
    if tr_labels(1,i) == 10
        a = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\0\', txt_img, '_', i_txt, '.jpg');
        a_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(a_image, a);
    elseif tr_labels(1,i) == 1
        b = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\1\', txt_img, '_', i_txt, '.jpg');
        b_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(b_image, b);
    elseif tr_labels(1,i) == 2
        c = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\2\', txt_img, '_', i_txt, '.jpg');
        c_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(c_image, c);
    elseif tr_labels(1,i) == 3
        d = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\3\', txt_img, '_', i_txt, '.jpg');
        d_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(d_image, d);
    elseif tr_labels(1,i) == 4
        e = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\4\', txt_img, '_', i_txt, '.jpg');
        e_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(e_image, e);
    elseif tr_labels(1,i) == 5
        f = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\5\', txt_img, '_', i_txt, '.jpg');
        f_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(f_image, f);
    elseif tr_labels(1,i) == 6
        g = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\6\', txt_img, '_', i_txt, '.jpg');
        g_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(g_image, g);
    elseif tr_labels(1,i) == 7
        h = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\7\', txt_img, '_', i_txt, '.jpg');
        h_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(h_image, h);
    elseif tr_labels(1,i) == 8
        j = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\8\', txt_img, '_', i_txt, '.jpg');
        j_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(j_image, j);
    elseif tr_labels(1,i) == 9
        k = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\trainingSet\9\', txt_img, '_', i_txt, '.jpg');
        k_image = reshape(tr_set(:,i), 28, 28, 1);
        imwrite(k_image, k);
    end
    i
end

for i = 1:10000
    txt_img = 'img';
    i_txt = num2str(i);
    if ts_labels(1,i) == 10
        a = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\0\', txt_img, '_', i_txt, '.jpg');
        a_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(a_image, a);
    elseif ts_labels(1,i) == 1
        b = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\1\', txt_img, '_', i_txt, '.jpg');
        b_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(b_image, b);
    elseif ts_labels(1,i) == 2
        c = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\2\', txt_img, '_', i_txt, '.jpg');
        c_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(c_image, c);
    elseif ts_labels(1,i) == 3
        d = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\3\', txt_img, '_', i_txt, '.jpg');
        d_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(d_image, d);
    elseif ts_labels(1,i) == 4
        e = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\4\', txt_img, '_', i_txt, '.jpg');
        e_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(e_image, e);
    elseif ts_labels(1,i) == 5
        f = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\5\', txt_img, '_', i_txt, '.jpg');
        f_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(f_image, f);
    elseif ts_labels(1,i) == 6
        g = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\6\', txt_img, '_', i_txt, '.jpg');
        g_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(g_image, g);
    elseif ts_labels(1,i) == 7
        h = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\7\', txt_img, '_', i_txt, '.jpg');
        h_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(h_image, h);
    elseif ts_labels(1,i) == 8
        j = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\8\', txt_img, '_', i_txt, '.jpg');
        j_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(j_image, j);
    elseif ts_labels(1,i) == 9
        k = strcat('C:\Users\Matthew\Documents\MATLAB\Project_Three\testSet\9\', txt_img, '_', i_txt, '.jpg');
        k_image = reshape(ts_set(:,i), 28, 28, 1);
        imwrite(k_image, k);
    end
    i
end