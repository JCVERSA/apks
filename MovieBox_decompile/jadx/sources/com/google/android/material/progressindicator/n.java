package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

public final class n extends b {

    public int f28682h;

    public int f28683i;

    boolean f28684j;

    public int f28685k;

    public n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    @Override
    void e() {
        super.e();
        if (this.f28685k < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f28682h == 0) {
            if (this.f28594b > 0 && this.f28599g == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (this.f28595c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public n(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, LinearProgressIndicator.DEF_STYLE_RES);
    }

    public n(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.LinearProgressIndicator, R$attr.linearProgressIndicatorStyle, LinearProgressIndicator.DEF_STYLE_RES, new int[0]);
        this.f28682h = typedArrayI.getInt(R$styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f28683i = typedArrayI.getInt(R$styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.f28685k = Math.min(typedArrayI.getDimensionPixelSize(R$styleable.LinearProgressIndicator_trackStopIndicatorSize, 0), this.f28593a);
        typedArrayI.recycle();
        e();
        this.f28684j = this.f28683i == 1;
    }
}
