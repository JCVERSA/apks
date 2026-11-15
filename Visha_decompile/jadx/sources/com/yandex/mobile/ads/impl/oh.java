package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.TypedArray;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import defpackage.y45;

public final class oh {
    @ColorInt
    public static final int a(Context context, @AttrRes int i) {
        int color;
        y45.j(context, "<this>");
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            color = typedArrayObtainStyledAttributes.getColor(0, 0);
        } catch (Exception unused) {
            color = -16777216;
        }
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }
}
