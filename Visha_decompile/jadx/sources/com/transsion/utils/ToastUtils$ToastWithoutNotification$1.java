package com.transsion.utils;

class ToastUtils$ToastWithoutNotification$1 implements Runnable {
    final ToastUtils.d this$0;

    public ToastUtils$ToastWithoutNotification$1(ToastUtils.d dVar) {
    }

    @Override
    public void run() {
        this.this$0.cancel();
    }
}
