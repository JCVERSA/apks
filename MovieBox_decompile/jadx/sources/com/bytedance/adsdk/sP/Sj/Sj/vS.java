package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

public class vS implements Fmk, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private boolean Dq;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> HiB;
    private final com.bytedance.adsdk.sP.uA TKC;
    private final String sP;
    private final com.bytedance.adsdk.sP.TKC.sP.sP vS;
    private final Path Sj = new Path();
    private final sP Jcg = new sP();

    public vS(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.sP sPVar) {
        this.sP = sPVar.Sj();
        this.TKC = uAVar;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj = sPVar.TKC().Sj();
        this.EjP = Sj;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj2 = sPVar.sP().Sj();
        this.HiB = Sj2;
        this.vS = sPVar;
        sj2.Sj(Sj);
        sj2.Sj(Sj2);
        Sj.Sj(this);
        Sj2.Sj(this);
    }

    private void sP() {
        this.Dq = false;
        this.TKC.invalidateSelf();
    }

    @Override
    public Path EjP() {
        if (this.Dq) {
            return this.Sj;
        }
        this.Sj.reset();
        if (this.vS.HiB()) {
            this.Dq = true;
            return this.Sj;
        }
        PointF pointFJcg = this.EjP.Jcg();
        float f10 = pointFJcg.x / 2.0f;
        float f11 = pointFJcg.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.Sj.reset();
        if (this.vS.EjP()) {
            float f14 = -f11;
            this.Sj.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.Sj.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.Sj.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.Sj.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.Sj.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.Sj.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.Sj.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.Sj.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.Sj.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.Sj.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointFJcg2 = this.HiB.Jcg();
        this.Sj.offset(pointFJcg2.x, pointFJcg2.y);
        this.Sj.close();
        this.Jcg.Sj(this.Sj);
        this.Dq = true;
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
                    this.Jcg.Sj(dxVar);
                    dxVar.Sj(this);
                }
            }
        }
    }
}
