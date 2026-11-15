package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;

public class Sj extends TextView implements IAnimation {
    private float EjP;
    private float HiB;
    TKC Sj;
    private float TKC;
    private float sP;

    public Sj(Context context) {
        super(context);
        this.Sj = new TKC();
    }

    @Override
    public float getMarqueeValue() {
        return this.EjP;
    }

    @Override
    public float getRippleValue() {
        return this.sP;
    }

    @Override
    public float getShineValue() {
        return this.TKC;
    }

    @Override
    public float getStretchValue() {
        return this.HiB;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.Sj.Sj(canvas, this, this);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Sj.Sj(this, i10, i11);
    }

    @Override
    public void setMarqueeValue(float f10) {
        this.EjP = f10;
        postInvalidate();
    }

    @Override
    public void setRippleValue(float f10) {
        this.sP = f10;
        postInvalidate();
    }

    @Override
    public void setShineValue(float f10) {
        this.TKC = f10;
        postInvalidate();
    }

    @Override
    public void setStretchValue(float f10) {
        this.HiB = f10;
        this.Sj.Sj(this, f10);
    }
}
