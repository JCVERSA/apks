package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg;

public class sP extends ImageView implements IAnimation {
    private float EjP;
    private float HiB;
    TKC Sj;
    private float TKC;
    private float sP;
    private Jcg vS;

    public sP(Context context) {
        super(context);
        this.Sj = new TKC();
    }

    public Jcg getBrickNativeValue() {
        return this.vS;
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
        Jcg jcg;
        super.onDraw(canvas);
        this.Sj.Sj(canvas, this, this);
        if (getRippleValue() == 0.0f || (jcg = this.vS) == null || jcg.sP() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Sj.Sj(this, i10, i11);
    }

    public void setBrickNativeValue(Jcg jcg) {
        this.vS = jcg;
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
