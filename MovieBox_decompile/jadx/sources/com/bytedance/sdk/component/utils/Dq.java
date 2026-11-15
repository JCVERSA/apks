package com.bytedance.sdk.component.utils;

import android.os.HandlerThread;

public class Dq {
    private static HandlerThread Sj;

    public static void Sj(HandlerThread handlerThread) {
        Sj = handlerThread;
    }

    public static HandlerThread Sj(String str) {
        return Sj(str, 0);
    }

    public static HandlerThread Sj(String str, int i10) {
        if (com.bytedance.sdk.component.Dq.uA.sCrashHappened) {
            return Sj;
        }
        try {
            HandlerThread handlerThread = new HandlerThread(str, i10) {
                boolean Sj = false;

                @Override
                public synchronized void start() {
                    if (this.Sj) {
                        return;
                    }
                    this.Sj = true;
                    super.start();
                }
            };
            handlerThread.start();
            return handlerThread;
        } catch (Throwable th2) {
            sU.Sj("HandlerThreadUtils", "new handlerThread error", th2);
            return Sj;
        }
    }
}
