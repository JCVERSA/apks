package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

public class Dq implements HiB, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private final Paint Dq;
    private final com.bytedance.adsdk.sP.TKC.TKC.Sj EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Fmk;
    private final Path Jcg;
    private final int RiZ;
    float Sj;
    private final List<Fmk> TEQ;
    private final boolean TKC;
    private final com.bytedance.adsdk.sP.uA TzV;
    private final com.bytedance.adsdk.sP.TKC.sP.Jcg Ym;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Zq;

    private final com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> f20154aa;
    private com.bytedance.adsdk.sP.Sj.sP.dNu dNu;

    private com.bytedance.adsdk.sP.Sj.sP.TKC f20155dx;
    private final String sP;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sU;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> sef;
    private final RectF uA;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> uvD;
    private final LongSparseArray<LinearGradient> HiB = new LongSparseArray<>();
    private final LongSparseArray<RadialGradient> vS = new LongSparseArray<>();

    public Dq(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.HiB hiB) {
        Path path = new Path();
        this.Jcg = path;
        this.Dq = new com.bytedance.adsdk.sP.Sj.Sj(1);
        this.uA = new RectF();
        this.TEQ = new ArrayList();
        this.Sj = 0.0f;
        this.EjP = sj2;
        this.sP = hiB.Sj();
        this.TKC = hiB.Dq();
        this.TzV = uAVar;
        this.Ym = hiB.sP();
        path.setFillType(hiB.TKC());
        this.RiZ = (int) (jcg.HiB() / 32.0f);
        com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> Sj = hiB.EjP().Sj();
        this.f20154aa = Sj;
        Sj.Sj(this);
        sj2.Sj(Sj);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj2 = hiB.HiB().Sj();
        this.Fmk = Sj2;
        Sj2.Sj(this);
        sj2.Sj(Sj2);
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj3 = hiB.vS().Sj();
        this.sef = Sj3;
        Sj3.Sj(this);
        sj2.Sj(Sj3);
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj4 = hiB.Jcg().Sj();
        this.Zq = Sj4;
        Sj4.Sj(this);
        sj2.Sj(Sj4);
        if (sj2.TEQ() != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj5 = sj2.TEQ().Sj().Sj();
            this.sU = Sj5;
            Sj5.Sj(this);
            sj2.Sj(this.sU);
        }
        if (sj2.Ym() != null) {
            this.f20155dx = new com.bytedance.adsdk.sP.Sj.sP.TKC(this, sj2, sj2.Ym());
        }
    }

    private int EjP() {
        int iRound = Math.round(this.sef.Dq() * this.RiZ);
        int iRound2 = Math.round(this.Zq.Dq() * this.RiZ);
        int iRound3 = Math.round(this.f20154aa.Dq() * this.RiZ);
        int i10 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private RadialGradient TKC() {
        long jEjP = EjP();
        RadialGradient radialGradient = this.vS.get(jEjP);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFJcg = this.sef.Jcg();
        PointF pointFJcg2 = this.Zq.Jcg();
        com.bytedance.adsdk.sP.TKC.sP.EjP ejPJcg = this.f20154aa.Jcg();
        int[] iArrSj = Sj(ejPJcg.sP());
        float[] fArrSj = ejPJcg.Sj();
        float f10 = pointFJcg.x;
        float f11 = pointFJcg.y;
        float fHypot = (float) Math.hypot(pointFJcg2.x - f10, pointFJcg2.y - f11);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot, iArrSj, fArrSj, Shader.TileMode.CLAMP);
        this.vS.put(jEjP, radialGradient2);
        return radialGradient2;
    }

    private LinearGradient sP() {
        long jEjP = EjP();
        LinearGradient linearGradient = this.HiB.get(jEjP);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFJcg = this.sef.Jcg();
        PointF pointFJcg2 = this.Zq.Jcg();
        com.bytedance.adsdk.sP.TKC.sP.EjP ejPJcg = this.f20154aa.Jcg();
        LinearGradient linearGradient2 = new LinearGradient(pointFJcg.x, pointFJcg.y, pointFJcg2.x, pointFJcg2.y, Sj(ejPJcg.sP()), ejPJcg.Sj(), Shader.TileMode.CLAMP);
        this.HiB.put(jEjP, linearGradient2);
        return linearGradient2;
    }

    @Override
    public void Sj() {
        this.TzV.invalidateSelf();
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            TKC tkc = list2.get(i10);
            if (tkc instanceof Fmk) {
                this.TEQ.add((Fmk) tkc);
            }
        }
    }

    @Override
    public void Sj(Canvas canvas, Matrix matrix, int i10) {
        Shader shaderTKC;
        if (this.TKC) {
            return;
        }
        com.bytedance.adsdk.sP.HiB.Sj("GradientFillContent#draw");
        this.Jcg.reset();
        for (int i11 = 0; i11 < this.TEQ.size(); i11++) {
            this.Jcg.addPath(this.TEQ.get(i11).EjP(), matrix);
        }
        this.Jcg.computeBounds(this.uA, false);
        if (this.Ym == com.bytedance.adsdk.sP.TKC.sP.Jcg.LINEAR) {
            shaderTKC = sP();
        } else {
            shaderTKC = TKC();
        }
        shaderTKC.setLocalMatrix(matrix);
        this.Dq.setShader(shaderTKC);
        com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> sj2 = this.uvD;
        if (sj2 != null) {
            this.Dq.setColorFilter(sj2.Jcg());
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.sU;
        if (sj3 != null) {
            float fFloatValue = sj3.Jcg().floatValue();
            if (fFloatValue == 0.0f) {
                this.Dq.setMaskFilter(null);
            } else if (fFloatValue != this.Sj) {
                this.Dq.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.Sj = fFloatValue;
        }
        com.bytedance.adsdk.sP.Sj.sP.TKC tkc = this.f20155dx;
        if (tkc != null) {
            tkc.Sj(this.Dq);
        }
        this.Dq.setAlpha(com.bytedance.adsdk.sP.vS.HiB.Sj((int) ((((i10 / 255.0f) * this.Fmk.Jcg().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.Jcg, this.Dq);
        com.bytedance.adsdk.sP.HiB.sP("GradientFillContent#draw");
    }

    @Override
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        this.Jcg.reset();
        for (int i10 = 0; i10 < this.TEQ.size(); i10++) {
            this.Jcg.addPath(this.TEQ.get(i10).EjP(), matrix);
        }
        this.Jcg.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    private int[] Sj(int[] iArr) {
        if (this.dNu == null) {
            return iArr;
        }
        throw null;
    }
}
