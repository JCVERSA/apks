package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import androidx.core.view.ViewCompat;
import cb.i;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import db.a;
import za.c;

public class MaterialDivider extends View {

    private static final int f28093f = R$style.Widget_MaterialComponents_MaterialDivider;

    private final i f28094a;

    private int f28095b;

    private int f28096c;

    private int f28097d;

    private int f28098e;

    public MaterialDivider(@NonNull Context context) {
        this(context, null);
    }

    public int getDividerColor() {
        return this.f28096c;
    }

    public int getDividerInsetEnd() {
        return this.f28098e;
    }

    public int getDividerInsetStart() {
        return this.f28097d;
    }

    public int getDividerThickness() {
        return this.f28095b;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int width;
        int i10;
        super.onDraw(canvas);
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        int i11 = z10 ? this.f28098e : this.f28097d;
        if (z10) {
            width = getWidth();
            i10 = this.f28097d;
        } else {
            width = getWidth();
            i10 = this.f28098e;
        }
        this.f28094a.setBounds(i11, 0, width - i10, getBottom() - getTop());
        this.f28094a.draw(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f28095b;
            if (i12 > 0 && measuredHeight != i12) {
                measuredHeight = i12;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i10) {
        if (this.f28096c != i10) {
            this.f28096c = i10;
            this.f28094a.d0(ColorStateList.valueOf(i10));
            invalidate();
        }
    }

    public void setDividerColorResource(int i10) {
        setDividerColor(b.getColor(getContext(), i10));
    }

    public void setDividerInsetEnd(int i10) {
        this.f28098e = i10;
    }

    public void setDividerInsetEndResource(int i10) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(int i10) {
        this.f28097d = i10;
    }

    public void setDividerInsetStartResource(int i10) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(int i10) {
        if (this.f28095b != i10) {
            this.f28095b = i10;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i10) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i10));
    }

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28093f;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        this.f28094a = new i();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialDivider, i10, i11, new int[0]);
        this.f28095b = typedArrayI.getDimensionPixelSize(R$styleable.MaterialDivider_dividerThickness, getResources().getDimensionPixelSize(R$dimen.material_divider_thickness));
        this.f28097d = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetStart, 0);
        this.f28098e = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetEnd, 0);
        setDividerColor(c.a(context2, typedArrayI, R$styleable.MaterialDivider_dividerColor).getDefaultColor());
        typedArrayI.recycle();
    }
}
