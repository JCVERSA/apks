package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

public class sef implements Fmk, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> Dq;
    private final com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Fmk;
    private final boolean HiB;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Jcg;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> TEQ;
    private final com.bytedance.adsdk.sP.uA TKC;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Ym;
    private boolean Zq;

    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> f20158aa;
    private final String sP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> uA;
    private final boolean vS;
    private final Path Sj = new Path();
    private final sP sef = new sP();

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public sef(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.TEQ teq) {
        this.TKC = uAVar;
        this.sP = teq.Sj();
        com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj sjSP = teq.sP();
        this.EjP = sjSP;
        this.HiB = teq.TEQ();
        this.vS = teq.Ym();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = teq.TKC().Sj();
        this.Jcg = Sj;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj2 = teq.EjP().Sj();
        this.Dq = Sj2;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj3 = teq.HiB().Sj();
        this.uA = Sj3;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj4 = teq.Jcg().Sj();
        this.Ym = Sj4;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj5 = teq.uA().Sj();
        this.Fmk = Sj5;
        com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj sj3 = com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.STAR;
        if (sjSP == sj3) {
            this.TEQ = teq.vS().Sj();
            this.f20158aa = teq.Dq().Sj();
        } else {
            this.TEQ = null;
            this.f20158aa = null;
        }
        sj2.Sj(Sj);
        sj2.Sj(Sj2);
        sj2.Sj(Sj3);
        sj2.Sj(Sj4);
        sj2.Sj(Sj5);
        if (sjSP == sj3) {
            sj2.Sj(this.TEQ);
            sj2.Sj(this.f20158aa);
        }
        Sj.Sj(this);
        Sj2.Sj(this);
        Sj3.Sj(this);
        Sj4.Sj(this);
        Sj5.Sj(this);
        if (sjSP == sj3) {
            this.TEQ.Sj(this);
            this.f20158aa.Sj(this);
        }
    }

    private void HiB() {
        int iFloor = (int) Math.floor(this.Jcg.Jcg().floatValue());
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj2 = this.uA;
        double radians = Math.toRadians((sj2 == null ? 0.0d : sj2.Jcg().floatValue()) - 90.0d);
        double d10 = iFloor;
        float fFloatValue = this.Fmk.Jcg().floatValue() / 100.0f;
        float fFloatValue2 = this.Ym.Jcg().floatValue();
        double d11 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d11);
        float fSin = (float) (Math.sin(radians) * d11);
        this.Sj.moveTo(fCos, fSin);
        double d12 = (float) (6.283185307179586d / d10);
        double d13 = radians + d12;
        double dCeil = Math.ceil(d10);
        int i10 = 0;
        while (i10 < dCeil) {
            float fCos2 = (float) (Math.cos(d13) * d11);
            double d14 = dCeil;
            float fSin2 = (float) (d11 * Math.sin(d13));
            if (fFloatValue != 0.0f) {
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f10 = fFloatValue2 * fFloatValue * 0.25f;
                this.Sj.cubicTo(fCos - (fCos3 * f10), fSin - (fSin3 * f10), fCos2 + (((float) Math.cos(dAtan3)) * f10), fSin2 + (f10 * ((float) Math.sin(dAtan3))), fCos2, fSin2);
            } else {
                this.Sj.lineTo(fCos2, fSin2);
            }
            d13 += d12;
            i10++;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d14;
            d11 = d11;
            d12 = d12;
        }
        PointF pointFJcg = this.Dq.Jcg();
        this.Sj.offset(pointFJcg.x, pointFJcg.y);
        this.Sj.close();
    }

    private void TKC() {
        float f10;
        float f11;
        double d10;
        float fSin;
        float f12;
        float f13;
        float f14;
        float fFloatValue = this.Jcg.Jcg().floatValue();
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj2 = this.uA;
        double radians = Math.toRadians((sj2 == null ? 0.0d : sj2.Jcg().floatValue()) - 90.0d);
        double d11 = fFloatValue;
        float f15 = (float) (6.283185307179586d / d11);
        if (this.vS) {
            f15 *= -1.0f;
        }
        float f16 = f15 / 2.0f;
        float f17 = fFloatValue - ((int) fFloatValue);
        if (f17 != 0.0f) {
            radians += (double) ((1.0f - f17) * f16);
        }
        float fFloatValue2 = this.Ym.Jcg().floatValue();
        float fFloatValue3 = this.TEQ.Jcg().floatValue();
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj3 = this.f20158aa;
        float fFloatValue4 = sj3 != null ? sj3.Jcg().floatValue() / 100.0f : 0.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj4 = this.Fmk;
        float fFloatValue5 = sj4 != null ? sj4.Jcg().floatValue() / 100.0f : 0.0f;
        if (f17 != 0.0f) {
            f12 = ((fFloatValue2 - fFloatValue3) * f17) + fFloatValue3;
            double d12 = f12;
            float fCos = (float) (d12 * Math.cos(radians));
            fSin = (float) (d12 * Math.sin(radians));
            this.Sj.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f15 * f17) / 2.0f));
            f10 = fCos;
            f11 = f16;
        } else {
            double d13 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d13);
            float fSin2 = (float) (d13 * Math.sin(radians));
            this.Sj.moveTo(fCos2, fSin2);
            f10 = fCos2;
            f11 = f16;
            d10 = radians + ((double) f11);
            fSin = fSin2;
            f12 = 0.0f;
        }
        double dCeil = Math.ceil(d11) * 2.0d;
        int i10 = 0;
        float f18 = f11;
        float f19 = f10;
        boolean z10 = false;
        while (true) {
            double d14 = i10;
            if (d14 >= dCeil) {
                PointF pointFJcg = this.Dq.Jcg();
                this.Sj.offset(pointFJcg.x, pointFJcg.y);
                this.Sj.close();
                return;
            }
            float f20 = z10 ? fFloatValue2 : fFloatValue3;
            float f21 = (f12 == 0.0f || d14 != dCeil - 2.0d) ? f18 : (f15 * f17) / 2.0f;
            if (f12 == 0.0f || d14 != dCeil - 1.0d) {
                f12 = f20;
            }
            double d15 = f12;
            double d16 = dCeil;
            float fCos3 = (float) (d15 * Math.cos(d10));
            float fSin3 = (float) (d15 * Math.sin(d10));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.Sj.lineTo(fCos3, fSin3);
                f13 = fFloatValue4;
                f14 = fFloatValue5;
            } else {
                f13 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f19) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f14 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f22 = z10 ? f13 : f14;
                float f23 = z10 ? f14 : f13;
                float f24 = (z10 ? fFloatValue3 : fFloatValue2) * f22 * 0.47829f;
                float f25 = fCos4 * f24;
                float f26 = f24 * fSin4;
                float f27 = (z10 ? fFloatValue2 : fFloatValue3) * f23 * 0.47829f;
                float f28 = fCos5 * f27;
                float f29 = f27 * fSin5;
                if (f17 != 0.0f) {
                    if (i10 == 0) {
                        f25 *= f17;
                        f26 *= f17;
                    } else if (d14 == d16 - 1.0d) {
                        f28 *= f17;
                        f29 *= f17;
                    }
                }
                this.Sj.cubicTo(f19 - f25, fSin - f26, fCos3 + f28, fSin3 + f29, fCos3, fSin3);
            }
            d10 += (double) f21;
            z10 = !z10;
            i10++;
            f19 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f14;
            fFloatValue4 = f13;
            f12 = f12;
            f15 = f15;
            dCeil = d16;
        }
    }

    private void sP() {
        this.Zq = false;
        this.TKC.invalidateSelf();
    }

    @Override
    public Path EjP() {
        if (this.Zq) {
            return this.Sj;
        }
        this.Sj.reset();
        if (this.HiB) {
            this.Zq = true;
            return this.Sj;
        }
        int i10 = AnonymousClass1.Sj[this.EjP.ordinal()];
        if (i10 == 1) {
            TKC();
        } else if (i10 == 2) {
            HiB();
        }
        this.Sj.close();
        this.sef.Sj(this.Sj);
        this.Zq = true;
        return this.Sj;
    }

    @Override
    public void Sj() {
        sP();
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            TKC tkc = list.get(i10);
            if (tkc instanceof dx) {
                dx dxVar = (dx) tkc;
                if (dxVar.sP() == com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj.SIMULTANEOUSLY) {
                    this.sef.Sj(dxVar);
                    dxVar.Sj(this);
                }
            }
        }
    }
}
