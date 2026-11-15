package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

public final class e extends b {

    public int f28620h;

    public int f28621i;

    public int f28622j;

    public e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public e(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, CircularProgressIndicator.DEF_STYLE_RES);
    }

    public e(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_inset_medium);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.CircularProgressIndicator, i10, i11, new int[0]);
        this.f28620h = Math.max(za.c.d(context, typedArrayI, R$styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f28593a * 2);
        this.f28621i = za.c.d(context, typedArrayI, R$styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f28622j = typedArrayI.getInt(R$styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayI.recycle();
        e();
    }
}
