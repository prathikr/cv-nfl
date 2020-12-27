ln -s /images data/custom/ 
ln -s /labels data/custom/ 
pip3 install --upgrade pip
pip3 install -r requirements.txt --no-cache-dir
python3 train.py --model_def config/yolov3-custom.cfg --data_config config/custom.data --compute_map True --epochs 10
