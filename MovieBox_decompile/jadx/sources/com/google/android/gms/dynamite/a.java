package com.google.android.gms.dynamite;

import dalvik.system.DelegateLastClassLoader;

public abstract class a {
    public static DelegateLastClassLoader a(String str, ClassLoader classLoader) {
        return new DelegateLastClassLoader(str, classLoader);
    }
}
