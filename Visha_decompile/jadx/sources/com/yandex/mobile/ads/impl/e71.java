package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import defpackage.y45;

public final class e71 implements View.OnTouchListener, View.OnClickListener {
    private final to a;
    private final y51 b;

    public e71(Context context, View.OnClickListener onClickListener, to toVar, y51 y51Var) {
        y45.j(context, "context");
        y45.j(onClickListener, "onClickListener");
        y45.j(toVar, "clickAreaVerificationListener");
        y45.j(y51Var, "nativeAdHighlightingController");
        this.a = toVar;
        this.b = y51Var;
    }

    @Override
    public final void onClick(View view) {
        this.a.onClick(view);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        y45.j(view, "view");
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        this.b.b(view, motionEvent);
        return this.a.onTouch(view, motionEvent);
    }
}
