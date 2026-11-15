package io.appmetrica.analytics.impl;

import android.util.SparseArray;

public final class Mc {
    public static final SparseArray c;
    public final String a;
    public final String b;

    static {
        SparseArray sparseArray = new SparseArray();
        c = sparseArray;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        sparseArray.put(5891, new Mc("jvm", "binder"));
        sparseArray.put(5890, new Mc("jvm", "intent"));
        sparseArray.put(5889, new Mc("jvm", "file"));
        sparseArray.put(5897, new Mc("jni_native", "file"));
        sparseArray.put(5898, new Mc("jni_native", "file"));
    }

    public Mc(String str, String str2) {
        this.a = str;
        this.b = str2;
    }
}
