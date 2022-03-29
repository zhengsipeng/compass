python train_vo_wf.py  \
    --exp-prefix 1_1_ \
    --use-int-plotter --print-interval 10 --platform local \
    --train-step 30000 --snapshot 5000 --batch-size 64 --worker-num 8  --lr 0.0002 --lr-decay \
    --train-vo --fix-flow --vo-gt-flow 1.0 \
    --data-file data/kitti/kitti_flow.txt --val-file data/kitti/kitti_test_flow.txt \
     --train-data-type kitti --test-data-type kitti \
    --image-height 448 --image-width 640  --normalize-output 0.05 --downscale-flow --network 0 \
    --random-intrinsic 0 --random-crop-center --hsv-rand 0.2 \
    --load-flow-model --flow-model pwc_net.pth.tar --pretrain-model-name new-checkpoint.pth.tar 