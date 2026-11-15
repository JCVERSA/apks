package com.google.android.material.internal;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

public class u implements TypeEvaluator {

    private final Rect f28444a;

    public u(Rect rect) {
        this.f28444a = rect;
    }

    @Override
    public Rect evaluate(float f10, Rect rect, Rect rect2) {
        int i10 = rect.left;
        int i11 = i10 + ((int) ((rect2.left - i10) * f10));
        int i12 = rect.top;
        int i13 = i12 + ((int) ((rect2.top - i12) * f10));
        int i14 = rect.right;
        int i15 = i14 + ((int) ((rect2.right - i14) * f10));
        int i16 = rect.bottom;
        this.f28444a.set(i11, i13, i15, i16 + ((int) ((rect2.bottom - i16) * f10)));
        return this.f28444a;
    }
}
