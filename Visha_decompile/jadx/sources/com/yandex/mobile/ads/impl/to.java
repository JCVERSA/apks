package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import defpackage.y45;

public final class to implements View.OnTouchListener, View.OnClickListener {
    private final View.OnClickListener a;
    private final int b;
    private boolean c;
    private float d;
    private float e;

    public to(Context context, View.OnClickListener onClickListener) {
        y45.j(context, "context");
        y45.j(onClickListener, "onClickListener");
        this.a = onClickListener;
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.b = scaledTouchSlop * scaledTouchSlop;
    }

    @Override
    public final void onClick(View view) {
        this.a.onClick(view);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        y45.j(view, "view");
        y45.j(motionEvent, "motionEvent");
        int action = motionEvent.getAction();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int i = action & 255;
        if (i == 0) {
            this.d = x;
            this.e = y;
            this.c = true;
        } else {
            if (i == 1) {
                if (!this.c) {
                    return true;
                }
                this.a.onClick(view);
                return true;
            }
            if (i != 2) {
                if (i == 3) {
                    this.c = false;
                }
            } else if (this.c) {
                int i2 = (int) (x - this.d);
                int i3 = (int) (y - this.e);
                if ((i3 * i3) + (i2 * i2) > this.b) {
                    this.c = false;
                }
            }
        }
        return false;
    }
}
