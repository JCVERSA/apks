package com.hunantv.media.player.utils;

import android.os.Handler;
import android.os.Looper;

public class ThreadUtil {
    public static void postOnUiThread(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    public static void quit(Looper looper) {
        if (looper != null) {
            looper.quitSafely();
        }
    }

    public static void runOnTargetLooper(Looper looper, Runnable runnable) {
        if (looper == null || runnable == null) {
            return;
        }
        new Handler(looper).post(runnable);
    }

    public static void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            postOnUiThread(runnable);
        }
    }
}
