

# train
#python -m src.preprocess.dicom_to_dataframe --input ./input/stage_1_train.csv --output ./cache/train_raw.pkl --imgdir ./input/stage_1_train_images
#python -m src.preprocess.create_dataset --input ./cache/train_raw.pkl --output ./cache/train.pkl
#python -m src.preprocess.make_folds --input ./cache/train.pkl --output ./cache/train_folds.pkl --n-fold 5 --seed 10

# test
python3.6 -m src.preprocess.dicom_to_dataframe --input ./input/stage_2_sample_submission.csv --output ./cache/test_raw.pkl --imgdir ./input/stage_2_test_images
python3.6 -m src.preprocess.create_dataset --input ./cache/test_raw.pkl --output ./cache/test.pkl