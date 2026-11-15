package com.mbridge.msdk.foundation.controller;

import android.annotation.SuppressLint;

public class c extends a {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile c f34203s;

    private c() {
    }

    public static c m() {
        if (f34203s == null) {
            synchronized (c.class) {
                try {
                    if (f34203s == null) {
                        f34203s = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34203s;
    }

    @Override
    protected void a(a.e eVar) {
    }
}
