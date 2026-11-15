package com.bytedance.adsdk.sP.TKC;

import android.graphics.PointF;

public class sP {
    public int Dq;
    public Sj EjP;
    public PointF Fmk;
    public int HiB;
    public float Jcg;
    public String Sj;
    public float TEQ;
    public float TKC;
    public boolean Ym;

    public PointF f20174aa;
    public String sP;
    public int uA;
    public float vS;

    public enum Sj {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public sP(String str, String str2, float f10, Sj sj2, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        Sj(str, str2, f10, sj2, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void Sj(String str, String str2, float f10, Sj sj2, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.Sj = str;
        this.sP = str2;
        this.TKC = f10;
        this.EjP = sj2;
        this.HiB = i10;
        this.vS = f11;
        this.Jcg = f12;
        this.Dq = i11;
        this.uA = i12;
        this.TEQ = f13;
        this.Ym = z10;
        this.f20174aa = pointF;
        this.Fmk = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.Sj.hashCode() * 31) + this.sP.hashCode()) * 31) + this.TKC)) * 31) + this.EjP.ordinal()) * 31) + this.HiB;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.vS);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.Dq;
    }

    public sP() {
    }
}
