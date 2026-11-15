package com.bytedance.adsdk.sP.TKC;

import android.annotation.SuppressLint;
import android.graphics.PointF;

public class Sj {
    private final PointF Sj;
    private final PointF TKC;
    private final PointF sP;

    public Sj() {
        this.Sj = new PointF();
        this.sP = new PointF();
        this.TKC = new PointF();
    }

    public void Sj(float f10, float f11) {
        this.Sj.set(f10, f11);
    }

    public void TKC(float f10, float f11) {
        this.TKC.set(f10, f11);
    }

    public void sP(float f10, float f11) {
        this.sP.set(f10, f11);
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.TKC.x), Float.valueOf(this.TKC.y), Float.valueOf(this.Sj.x), Float.valueOf(this.Sj.y), Float.valueOf(this.sP.x), Float.valueOf(this.sP.y));
    }

    public PointF Sj() {
        return this.Sj;
    }

    public PointF TKC() {
        return this.TKC;
    }

    public PointF sP() {
        return this.sP;
    }

    public Sj(PointF pointF, PointF pointF2, PointF pointF3) {
        this.Sj = pointF;
        this.sP = pointF2;
        this.TKC = pointF3;
    }
}
