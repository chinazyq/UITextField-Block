# UITextField-Block
UITextField+Block

1、使用方法
    [self.zTextField addAction:^(UITextField *tf) {
        self.zLabel.text = tf.text;
    } forControlEvents:UIControlEventEditingChanged];

2、示例
