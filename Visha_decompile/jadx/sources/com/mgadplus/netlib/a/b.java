package com.mgadplus.netlib.a;

import java.lang.ref.WeakReference;

public class b {
    private static Class<? extends c> a;
    private static WeakReference<c> b;

    public static void a() {
        if (a == null) {
            a = d.class;
        }
    }

    public static Class<? extends c> b() {
        if (a == null) {
            a();
        }
        return a;
    }

    public static c c() {
        try {
            WeakReference<c> weakReference = b;
            if (weakReference == null) {
                c cVarNewInstance = b().newInstance();
                b = new WeakReference<>(cVarNewInstance);
                return cVarNewInstance;
            }
            c cVar = weakReference.get();
            if (cVar != null || b() == null) {
                return cVar;
            }
            c cVarNewInstance2 = b().newInstance();
            b = new WeakReference<>(cVarNewInstance2);
            return cVarNewInstance2;
        } catch (Exception unused) {
            return null;
        }
    }
}
