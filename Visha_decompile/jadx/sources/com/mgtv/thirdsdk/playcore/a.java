package com.mgtv.thirdsdk.playcore;

import java.lang.ref.WeakReference;

public class a<T> {
    public final WeakReference<T> a;

    public a(T t) {
        this.a = new WeakReference<>(t);
    }
}
