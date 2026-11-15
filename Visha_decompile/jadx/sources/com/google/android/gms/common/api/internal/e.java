package com.google.android.gms.common.api.internal;

import android.os.Looper;
import defpackage.wd8;

public abstract class e {
    public static d a(Object obj, Looper looper, String str) {
        wd8.m(obj, "Listener must not be null");
        wd8.m(looper, "Looper must not be null");
        wd8.m(str, "Listener type must not be null");
        return new d(looper, obj, str);
    }

    public static d.a b(Object obj, String str) {
        wd8.m(obj, "Listener must not be null");
        wd8.m(str, "Listener type must not be null");
        wd8.g(str, "Listener type must not be empty");
        return new d.a(obj, str);
    }
}
