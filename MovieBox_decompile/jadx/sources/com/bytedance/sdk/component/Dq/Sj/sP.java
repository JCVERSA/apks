package com.bytedance.sdk.component.Dq.Sj;

import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.LqL;
import java.lang.ref.WeakReference;

public class sP extends LqL implements TKC {
    private final HandlerThread sP;

    sP(HandlerThread handlerThread, LqL.Sj sj2) {
        super(handlerThread.getLooper(), sj2);
        this.sP = handlerThread;
    }

    @Override
    public void Sj() {
        removeCallbacksAndMessages(null);
        WeakReference<LqL.Sj> weakReference = this.Sj;
        if (weakReference != null) {
            weakReference.clear();
            this.Sj = null;
        }
    }

    public void sP() {
        HandlerThread handlerThread = this.sP;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public void Sj(LqL.Sj sj2) {
        this.Sj = new WeakReference<>(sj2);
    }
}
