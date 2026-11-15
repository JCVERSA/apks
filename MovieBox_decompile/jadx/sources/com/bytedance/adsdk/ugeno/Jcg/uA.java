package com.bytedance.adsdk.ugeno.Jcg;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

public class uA extends Handler {
    private final WeakReference<Sj> Sj;

    public interface Sj {
        void Sj(Message message);
    }

    public uA(Looper looper, Sj sj2) {
        super(looper);
        this.Sj = new WeakReference<>(sj2);
    }

    @Override
    public void handleMessage(Message message) {
        Sj sj2 = this.Sj.get();
        if (sj2 == null || message == null) {
            return;
        }
        sj2.Sj(message);
    }
}
