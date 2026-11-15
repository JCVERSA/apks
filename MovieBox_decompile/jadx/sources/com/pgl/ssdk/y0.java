package com.pgl.ssdk;

import android.os.HandlerThread;
import java.lang.ref.WeakReference;

public class y0 extends b1 implements z0 {

    private final HandlerThread f39405b;

    y0(HandlerThread handlerThread, b1.a aVar) {
        super(handlerThread.getLooper(), aVar);
        this.f39405b = handlerThread;
    }

    public void a(b1.a aVar) {
        this.f39253a = new WeakReference<>(aVar);
    }

    public void a(String str) {
        HandlerThread handlerThread = this.f39405b;
        if (handlerThread != null) {
            handlerThread.setName(str);
        }
    }
}
