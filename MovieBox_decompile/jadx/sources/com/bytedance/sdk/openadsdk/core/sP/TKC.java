package com.bytedance.sdk.openadsdk.core.sP;

import android.graphics.Point;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.settings.uA;

public abstract class TKC implements View.OnClickListener, View.OnTouchListener {
    private static float EjP = 0.0f;
    private static long HiB = 0;
    protected static int LD = 8;
    private static float Sj;
    private static float TKC;
    private static float sP;
    protected View JcM;

    protected float f20475dx = -1.0f;
    protected float zR = -1.0f;

    protected float f20476ib = -1.0f;
    protected float kF = -1.0f;
    protected long uP = -1;
    protected long wE = -1;
    protected int ley = -1;
    protected int LqL = -1024;
    protected int Yf = -1;
    protected boolean fF = true;
    public SparseArray<Sj> WMZ = new SparseArray<>();
    private int vS = 0;
    private int Jcg = 0;

    public static class Sj {
        public long EjP;
        public int Sj;
        public double TKC;
        public double sP;

        public Sj(int i10, double d10, double d11, long j10) {
            this.Sj = i10;
            this.sP = d10;
            this.TKC = d11;
            this.EjP = j10;
        }
    }

    static {
        if (dNu.Sj() != null) {
            LD = dNu.sP();
        }
        Sj = 0.0f;
        sP = 0.0f;
        TKC = 0.0f;
        EjP = 0.0f;
        HiB = 0L;
    }

    private boolean Sj(View view, Point point) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i14 = 0; i14 < viewGroup.getChildCount(); i14++) {
                View childAt = viewGroup.getChildAt(i14);
                if (sP.TKC(childAt)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    return view.isShown() && (i10 = point.x) >= (i11 = iArr[0]) && i10 <= i11 + childAt.getWidth() && (i12 = point.y) >= (i13 = iArr[1]) && i12 <= i13 + childAt.getHeight();
                }
                if (Sj(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean Jcg() {
        return this.fF;
    }

    protected abstract void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<Sj> sparseArray, boolean z10);

    @Override
    public void onClick(View view) {
        if (uA.Sj()) {
            Sj(view, this.f20475dx, this.zR, this.f20476ib, this.kF, this.WMZ, this.fF);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i10;
        this.LqL = motionEvent.getDeviceId();
        this.ley = motionEvent.getToolType(0);
        this.Yf = motionEvent.getSource();
        int actionMasked = motionEvent.getActionMasked();
        int i11 = 1;
        if (actionMasked != 0) {
            int i12 = 3;
            if (actionMasked == 1) {
                this.f20476ib = motionEvent.getRawX();
                this.kF = motionEvent.getRawY();
                this.wE = System.currentTimeMillis();
                if (Math.abs(this.f20476ib - this.vS) >= LD || Math.abs(this.kF - this.Jcg) >= LD) {
                    this.fF = false;
                }
                Point point = new Point((int) this.f20476ib, (int) this.kF);
                if (view != null && !sP.TKC(view) && Sj((View) view.getParent(), point)) {
                    return true;
                }
            } else if (actionMasked != 2) {
                i12 = actionMasked != 3 ? -1 : 4;
            } else {
                TKC += Math.abs(motionEvent.getX() - Sj);
                EjP += Math.abs(motionEvent.getY() - sP);
                Sj = motionEvent.getX();
                sP = motionEvent.getY();
                if (System.currentTimeMillis() - HiB > 200) {
                    float f10 = TKC;
                    int i13 = LD;
                    if (f10 <= i13 && EjP <= i13) {
                        i11 = 2;
                    }
                } else {
                    i11 = 2;
                }
                this.f20476ib = motionEvent.getRawX();
                this.kF = motionEvent.getRawY();
                if (Math.abs(this.f20476ib - this.vS) >= LD || Math.abs(this.kF - this.Jcg) >= LD) {
                    this.fF = false;
                }
                i10 = i11;
            }
            i10 = i12;
        } else {
            this.vS = (int) motionEvent.getRawX();
            this.Jcg = (int) motionEvent.getRawY();
            this.f20475dx = motionEvent.getRawX();
            this.zR = motionEvent.getRawY();
            this.uP = System.currentTimeMillis();
            this.ley = motionEvent.getToolType(0);
            this.LqL = motionEvent.getDeviceId();
            this.Yf = motionEvent.getSource();
            HiB = System.currentTimeMillis();
            this.fF = true;
            this.JcM = view;
            com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(motionEvent);
            i10 = 0;
        }
        this.WMZ.put(motionEvent.getActionMasked(), new Sj(i10, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        return false;
    }
}
