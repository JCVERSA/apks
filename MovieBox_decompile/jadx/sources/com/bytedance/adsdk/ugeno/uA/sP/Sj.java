package com.bytedance.adsdk.ugeno.uA.sP;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.core.TEQ;
import java.util.Map;

public class Sj extends FrameLayout {
    private EjP Sj;
    private Map<Integer, TEQ> sP;

    public Sj(Context context) {
        super(context);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
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
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, TEQ> map = this.sP;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.vS();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        EjP ejP2 = this.Sj;
        if (ejP2 != null) {
            ejP2.Sj(i10, i11, i12, i13);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i10, i11);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        EjP ejP2 = this.Sj;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i13);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void setEventMap(Map<Integer, TEQ> map) {
        this.sP = map;
    }
}
