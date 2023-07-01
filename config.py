import torch

BATCH_SIZE = 8 # increase / decrease according to GPU memeory
RESIZE_TO = 416 # resize the image for training and transforms
NUM_EPOCHS = 10 # number of epochs to train for
NUM_WORKERS =0

#DEVICE=torch.cuda.current_device()  
DEVICE=torch.device("cuda" if torch.cuda.is_available() else "cpu")
#DEVICE=DEVICE=torch.device('cuda:1')
# training images and XML files directory
TRAIN_DIR = 'data/Uno Cards.v2-raw.voc/train'
# validation images and XML files directory
VALID_DIR = 'data/Uno Cards.v2-raw.voc/valid'

# classes: 0 index is reserved for background
CLASSES = [
    '__background__', '11', '9', '13', '10', '6', '7', '0', '5', '4', '2', '14', 
    '8', '12', '1', '3'
]

NUM_CLASSES = len(CLASSES)

# whether to visualize images after crearing the data loaders
VISUALIZE_TRANSFORMED_IMAGES = True

# location to save model and plots
OUT_DIR = 'outputs'