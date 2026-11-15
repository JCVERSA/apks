package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Button;
import android.widget.FrameLayout;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class hp1 extends FrameLayout {
    private final Button a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hp1(Context context, Button button) {
        super(context);
        y45.j(context, "context");
        y45.j(button, "replayButton");
        this.a = button;
    }

    public final Button a() {
        return this.a;
    }
}
