package com.mgadplus.mgutil;

import android.os.Handler;
import android.os.Looper;

final class g$1 extends Thread {
    final Runnable a;

    public g$1(Runnable runnable) {
        this.a = runnable;
    }

    @Override
    public void run() {
        Looper.prepare();
        new Handler().post(this.a);
        Looper.loop();
    }
}
