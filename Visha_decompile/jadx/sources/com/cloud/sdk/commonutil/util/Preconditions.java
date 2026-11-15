package com.cloud.sdk.commonutil.util;

import android.os.Handler;
import android.os.Looper;

public abstract class Preconditions {

    class AnonymousClass2 implements Runnable {
        final a val$callback;

        public AnonymousClass2(a aVar) {
            this.val$callback = aVar;
        }

        @Override
        public void run() {
            this.val$callback.onRun();
        }
    }

    public interface a {
        void onRun();
    }

    public static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new RuntimeException("Must be called from the UiThread");
        }
    }

    public static Object b(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object c(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new IllegalArgumentException(str);
    }

    public static void d(final a aVar) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    aVar.onRun();
                }
            });
        } else {
            aVar.onRun();
        }
    }
}
