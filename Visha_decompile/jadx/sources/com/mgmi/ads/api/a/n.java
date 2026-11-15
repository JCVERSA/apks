package com.mgmi.ads.api.a;

import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public class n extends c {
    private com.mgmi.ads.api.i a;
    private WeakReference<ViewGroup> b;

    public n(com.mgmi.ads.api.i iVar, ViewGroup viewGroup) {
        this.a = iVar;
        this.b = new WeakReference<>(viewGroup);
    }

    public com.mgmi.ads.api.i u() {
        return this.a;
    }

    public WeakReference<ViewGroup> v() {
        return this.b;
    }
}
