package com.mgtv.data.aphone.core.e;

import android.content.Context;
import java.util.concurrent.ExecutorService;

public class b {
    private static b a;
    private ExecutorService b = d.a();
    private Context c;

    private b(Context context) {
        this.c = context;
    }

    public void a() {
    }

    public static b a(Context context) {
        if (a == null) {
            a = new b(context);
        }
        return a;
    }
}
