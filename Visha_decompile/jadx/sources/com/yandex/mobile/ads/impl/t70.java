package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.MainThread;
import androidx.annotation.StyleRes;
import defpackage.y45;

@MainThread
public class t70 extends FrameLayout {
    private ob2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t70(Context context) {
        super(context);
        y45.j(context, "context");
    }

    public final ob2 getAdUiElements() {
        return this.a;
    }

    public final void setAdUiElements(ob2 ob2Var) {
        this.a = ob2Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t70(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t70(Context context, AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t70(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
    }
}
