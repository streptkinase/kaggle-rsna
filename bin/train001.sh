model=model001
gpu=0
fold=0
conf=./conf/${model}.py

/usr/local/bin/python3.6 -m src.cnn.main train ${conf} --fold ${fold} --gpu ${gpu} --resume_from model/model001/fold0_ep2.pt 
/usr/local/bin/python3.6 -m src.cnn.main train ${conf} --fold 1 --gpu ${gpu} --resume_from model/model001/fold1_ep2.pt
/usr/local/bin/python3.6 -m src.cnn.main train ${conf} --fold 2 --gpu ${gpu} --resume_from model/model001/fold2_ep2.pt
/usr/local/bin/python3.6 -m src.cnn.main train ${conf} --fold 3 --gpu ${gpu} --resume_from model/model001/fold3_ep2.pt
/usr/local/bin/python3.6 -m src.cnn.main train ${conf} --fold 4 --gpu ${gpu} --resume_from model/model001/fold4_ep2.pt
