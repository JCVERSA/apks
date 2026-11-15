package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import defpackage.y45;

public final class gt1<T extends View> {
    public static View a(Context context, Class cls, @LayoutRes int i, ViewGroup viewGroup) {
        y45.j(context, "context");
        y45.j(cls, "layoutClass");
        try {
            return (View) cls.cast(LayoutInflater.from(context).inflate(i, viewGroup, false));
        } catch (Exception e) {
            sp0.b(e);
            return null;
        }
    }
}
