package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RatingBar;
import androidx.annotation.AttrRes;
import androidx.core.app.NotificationCompat;
import defpackage.y45;

public class pn1 extends RatingBar implements mn1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn1(Context context) {
        super(context);
        y45.j(context, "context");
    }

    @Override
    public final float getRating() {
        return super.getRating();
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        return isClickable() && motionEvent.getAction() == 0;
    }

    @Override
    public void setRating(float f) {
        super.setRating(f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn1(Context context, AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }
}
