package com.bytedance.adsdk.ugeno.uA.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Sj.HiB;
import com.bytedance.adsdk.ugeno.Sj.vS;
import com.bytedance.adsdk.ugeno.core.IAnimation;

public class Sj extends TextView implements HiB, IAnimation {
    private EjP Sj;
    private vS TKC;
    private float sP;

    public Sj(Context context) {
        super(context);
        this.TKC = new vS(this);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(canvas);
        }
    }

    public float getBorderRadius() {
        return this.TKC.Sj();
    }

    @Override
    public float getRipple() {
        return this.sP;
    }

    @Override
    public float getRubIn() {
        return this.TKC.getRubIn();
    }

    @Override
    public float getShine() {
        return this.TKC.getShine();
    }

    @Override
    public float getStretch() {
        return this.TKC.getStretch();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Sj(canvas, this);
            this.Sj.Sj(canvas);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Sj(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        EjP ejP = this.Sj;
        if (ejP == null) {
            super.onMeasure(i10, i11);
        } else {
            int[] iArrSj = ejP.Sj(i10, i11);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i12);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override
    public void setBackgroundColor(int i10) {
        this.TKC.Sj(i10);
    }

    public void setBorderRadius(float f10) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.Sj(f10);
        }
    }

    @Override
    public void setRipple(float f10) {
        this.sP = f10;
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.sP(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.HiB(f10);
        }
    }

    public void setShine(float f10) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.TKC(f10);
        }
    }

    public void setStretch(float f10) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.EjP(f10);
        }
    }
}
