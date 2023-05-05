
config = {
    'dataset_root': "/home/beinggod/workspace/AI-Trash/dataset/dataset_final/",
    
    'train':
    {
        'epoch': 200, # 训练总轮数
        'save_per_epoch': 10, # 每隔x轮保存一次模型
        'category_num': 4, # 待识别类别数
        'fc_learning_rate': 0.00025, # FC层学习率
        'batch_size': 128, # 6G显存选择128
        'img_mean': [0.82851393,0.85284935,0.80688708],  # 样本均值
        'img_std': [0.10312569,0.11147976,0.12161579],  # 样本标准差

        
        
    },

    'val':
    { 
        'val_per_epoch': 10, # 每隔x轮验证一次模型
        'img_mean': [0.82851393,0.85284935,0.80688708],  # 样本均值
        'img_std': [0.10312569,0.11147976,0.12161579],  # 样本标准差
    }
}
