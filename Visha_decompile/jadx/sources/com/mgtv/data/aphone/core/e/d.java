package com.mgtv.data.aphone.core.e;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class d {
    private static d a;
    private static final ExecutorService b = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, "mgtvbd_single");
        }
    });
    private Context c;

    private d(Context context) {
        this.c = context;
    }

    public static d a(Context context) {
        if (a == null) {
            a = new d(context);
        }
        return a;
    }

    public static ExecutorService a() {
        return b;
    }
}
