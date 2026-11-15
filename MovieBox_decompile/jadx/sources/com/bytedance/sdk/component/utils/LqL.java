package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

public class LqL extends Handler {
    protected WeakReference<Sj> Sj;

    public interface Sj {
        void Sj(Message message);
    }

    public LqL(Sj sj2) {
        if (sj2 != null) {
            this.Sj = new WeakReference<>(sj2);
        }
    }

    @Override
    public void handleMessage(Message message) {
        Sj sj2;
        WeakReference<Sj> weakReference = this.Sj;
        if (weakReference == null || (sj2 = weakReference.get()) == null || message == null) {
            return;
        }
        sj2.Sj(message);
    }

    public LqL(Looper looper, Sj sj2) {
        super(looper);
        if (sj2 != null) {
            this.Sj = new WeakReference<>(sj2);
        }
    }
}
