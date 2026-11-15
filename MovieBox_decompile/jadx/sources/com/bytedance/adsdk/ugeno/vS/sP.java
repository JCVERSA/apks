package com.bytedance.adsdk.ugeno.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

public class sP extends Sj<com.bytedance.adsdk.ugeno.sP.TKC> {
    private com.bytedance.adsdk.ugeno.EjP TKC;

    public sP(Context context) {
        super(context);
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP ejP) {
        this.TKC = ejP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.vS();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.Sj(i10, i11, i12, i13);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i10, i11);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i13);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override
    public View uA(int i10) {
        return ((com.bytedance.adsdk.ugeno.sP.TKC) this.Sj.get(i10)).Ym();
    }
}
