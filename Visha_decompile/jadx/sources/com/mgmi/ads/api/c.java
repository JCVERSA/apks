package com.mgmi.ads.api;

import android.app.Application;
import android.content.Context;

public class c {
    private static Context a;
    private static Application b;

    public static Context a() {
        return a;
    }

    public static Application b() {
        return b;
    }

    public static void a(Application application) {
        if (a == null) {
            a = application.getApplicationContext();
        }
        b = application;
    }
}
