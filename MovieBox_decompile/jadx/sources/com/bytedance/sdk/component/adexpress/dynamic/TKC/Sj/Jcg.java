package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

public class Jcg implements View.OnTouchListener {
    private static int TKC = 10;
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq EjP;
    private int HiB;
    private float Sj;
    private float sP;
    private RectF vS = new RectF();
    private long Jcg = 0;
    private final int Dq = 200;
    private final int uA = 3;
    private SoftReference<View> TEQ = new SoftReference<>(null);

    public Jcg(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2, int i10, final ViewGroup viewGroup) {
        this.HiB = TKC;
        this.EjP = dq2;
        if (i10 > 0) {
            this.HiB = i10;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() {
                @Override
                public void run() {
                    View viewFindViewById = viewGroup.findViewById(2097610746);
                    Jcg.this.TEQ = new SoftReference(viewFindViewById);
                }
            });
        }
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2;
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.vS = Sj(this.TEQ.get());
            this.Sj = motionEvent.getRawX();
            this.sP = motionEvent.getRawY();
            this.Jcg = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.vS;
            if (rectF != null && !rectF.contains(this.Sj, this.sP)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.Sj);
            float fAbs2 = Math.abs(rawY - this.sP);
            int iSP = com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), Math.abs(rawX - this.Sj));
            int i10 = TKC;
            if (fAbs < i10 || fAbs2 < i10) {
                if ((System.currentTimeMillis() - this.Jcg < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (dq2 = this.EjP) != null) {
                    dq2.Sj();
                }
            } else if (rawX > this.Sj && iSP > this.HiB && (dq3 = this.EjP) != null) {
                dq3.Sj();
            }
        }
        return true;
    }

    private RectF Sj(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        return new RectF(i10, iArr[1], i10 + view.getWidth(), iArr[1] + view.getHeight());
    }
}
