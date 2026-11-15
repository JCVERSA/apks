package com.google.android.material.progressindicator;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

public abstract class b {

    public int f28593a;

    public int f28594b;

    public int[] f28595c = new int[0];

    public int f28596d;

    public int f28597e;

    public int f28598f;

    public int f28599g;

    protected b(Context context, AttributeSet attributeSet, int i10, int i11) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_track_thickness);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f28593a = za.c.d(context, typedArrayI, R$styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f28594b = Math.min(za.c.d(context, typedArrayI, R$styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f28593a / 2);
        this.f28597e = typedArrayI.getInt(R$styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f28598f = typedArrayI.getInt(R$styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        this.f28599g = typedArrayI.getDimensionPixelSize(R$styleable.BaseProgressIndicator_indicatorTrackGapSize, 0);
        c(context, typedArrayI);
        d(context, typedArrayI);
        typedArrayI.recycle();
    }

    private void c(Context context, TypedArray typedArray) {
        if (!typedArray.hasValue(R$styleable.BaseProgressIndicator_indicatorColor)) {
            this.f28595c = new int[]{com.google.android.material.color.b.b(context, R$attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(R$styleable.BaseProgressIndicator_indicatorColor).type != 1) {
            this.f28595c = new int[]{typedArray.getColor(R$styleable.BaseProgressIndicator_indicatorColor, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(R$styleable.BaseProgressIndicator_indicatorColor, -1));
        this.f28595c = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    private void d(Context context, TypedArray typedArray) {
        if (typedArray.hasValue(R$styleable.BaseProgressIndicator_trackColor)) {
            this.f28596d = typedArray.getColor(R$styleable.BaseProgressIndicator_trackColor, -1);
            return;
        }
        this.f28596d = this.f28595c[0];
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.disabledAlpha});
        float f10 = typedArrayObtainStyledAttributes.getFloat(0, 0.2f);
        typedArrayObtainStyledAttributes.recycle();
        this.f28596d = com.google.android.material.color.b.a(this.f28596d, (int) (f10 * 255.0f));
    }

    public boolean a() {
        return this.f28598f != 0;
    }

    public boolean b() {
        return this.f28597e != 0;
    }

    void e() {
        if (this.f28599g < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }
}
