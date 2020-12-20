# cv-nfl

to train:
1. cd PyTorch-YOLOv3
2. floyd login
3. floyd init cv-nfl
4. floyd run --data prathikr/datasets/cv-nflimages/2:images --data prathikr/datasets/cv-nfllabels/1:labels --cpu2 -m "training helmet detection YOLO CNN" --env tensorflow-1.3 "ln -s /images data/custom/ && ln -s /labels data/custom/ && pip3 install -r requirements.txt --no-cache-dir && python3 train.py --model_def config/yolov3-custom.cfg --data_config config/custom.data --compute_map True --epochs 3"

inference: python3 detect.py --image_folder data/samples/ <br>
images: https://www.kaggle.com/c/nfl-impact-detection/data
