package com.mgtv.data.aphone.core.e;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class c {
    public static boolean a = false;
    private static c b;
    private ExecutorService c = Executors.newCachedThreadPool();
    private Context d;

    private c(Context context) {
        this.d = context;
    }

    public void a() {
    }

    public static c a(Context context) {
        if (b == null) {
            b = new c(context);
        }
        return b;
    }

    public void a(boolean z) {
        if (z) {
            this.c.submit(new Runnable() {
                @Override
                public void run() {
                    c.this.a();
                    c.a = true;
                }
            });
        }
    }
}
