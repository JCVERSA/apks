package com.android.volley.toolbox;

import android.os.Looper;

abstract class n {
    static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Must be invoked from the main thread.");
        }
    }
}
