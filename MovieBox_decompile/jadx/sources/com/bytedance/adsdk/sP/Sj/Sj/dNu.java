package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

public class dNu implements RiZ, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private com.bytedance.adsdk.sP.TKC.sP.sef EjP;
    private final com.bytedance.adsdk.sP.uA Sj;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> TKC;
    private final String sP;

    public dNu(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.Fmk fmk) {
        this.Sj = uAVar;
        this.sP = fmk.Sj();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = fmk.sP().Sj();
        this.TKC = Sj;
        sj2.Sj(Sj);
        Sj.Sj(this);
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
    }

    public com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sP() {
        return this.TKC;
    }

    private com.bytedance.adsdk.sP.TKC.sP.sef sP(com.bytedance.adsdk.sP.TKC.sP.sef sefVar) {
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC = sefVar.TKC();
        boolean zSP = sefVar.sP();
        int size = listTKC.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = listTKC.get(size);
            com.bytedance.adsdk.sP.TKC.Sj sj3 = listTKC.get(Sj(size - 1, listTKC.size()));
            PointF pointFTKC = (size != 0 || zSP) ? sj3.TKC() : sefVar.Sj();
            i10 = (((size != 0 || zSP) ? sj3.sP() : pointFTKC).equals(pointFTKC) && sj2.Sj().equals(pointFTKC) && !(!sefVar.sP() && size == 0 && size == listTKC.size() - 1)) ? i10 + 2 : i10 + 1;
            size--;
        }
        com.bytedance.adsdk.sP.TKC.sP.sef sefVar2 = this.EjP;
        if (sefVar2 == null || sefVar2.TKC().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new com.bytedance.adsdk.sP.TKC.Sj());
            }
            this.EjP = new com.bytedance.adsdk.sP.TKC.sP.sef(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.EjP.Sj(zSP);
        return this.EjP;
    }

    @Override
    public void Sj() {
        this.Sj.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009f  */
    @Override
    public com.bytedance.adsdk.sP.TKC.sP.sef Sj(com.bytedance.adsdk.sP.TKC.sP.sef sefVar) {
        boolean z10;
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC = sefVar.TKC();
        if (listTKC.size() <= 2) {
            return sefVar;
        }
        float fFloatValue = this.TKC.Jcg().floatValue();
        if (fFloatValue == 0.0f) {
            return sefVar;
        }
        com.bytedance.adsdk.sP.TKC.sP.sef sefVarSP = sP(sefVar);
        sefVarSP.Sj(sefVar.Sj().x, sefVar.Sj().y);
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC2 = sefVarSP.TKC();
        boolean zSP = sefVar.sP();
        int i10 = 0;
        int i11 = 0;
        while (i10 < listTKC.size()) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = listTKC.get(i10);
            com.bytedance.adsdk.sP.TKC.Sj sj3 = listTKC.get(Sj(i10 - 1, listTKC.size()));
            com.bytedance.adsdk.sP.TKC.Sj sj4 = listTKC.get(Sj(i10 - 2, listTKC.size()));
            PointF pointFTKC = (i10 != 0 || zSP) ? sj3.TKC() : sefVar.Sj();
            PointF pointFSP = (i10 != 0 || zSP) ? sj3.sP() : pointFTKC;
            PointF pointFSj = sj2.Sj();
            PointF pointFTKC2 = sj4.TKC();
            PointF pointFTKC3 = sj2.TKC();
            if (!sefVar.sP() && i10 == 0) {
                z10 = i10 == listTKC.size() + (-1);
            }
            if (pointFSP.equals(pointFTKC) && pointFSj.equals(pointFTKC) && !z10) {
                float f10 = pointFTKC.x;
                float f11 = f10 - pointFTKC2.x;
                float f12 = pointFTKC.y;
                float f13 = f12 - pointFTKC2.y;
                float f14 = pointFTKC3.x - f10;
                float f15 = pointFTKC3.y - f12;
                float fHypot = (float) Math.hypot(f11, f13);
                float fHypot2 = (float) Math.hypot(f14, f15);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f16 = pointFTKC.x;
                float f17 = ((pointFTKC2.x - f16) * fMin) + f16;
                float f18 = pointFTKC.y;
                float f19 = ((pointFTKC2.y - f18) * fMin) + f18;
                float f20 = ((pointFTKC3.x - f16) * fMin2) + f16;
                float f21 = ((pointFTKC3.y - f18) * fMin2) + f18;
                float f22 = f17 - ((f17 - f16) * 0.5519f);
                float f23 = f19 - ((f19 - f18) * 0.5519f);
                float f24 = f20 - ((f20 - f16) * 0.5519f);
                float f25 = f21 - ((f21 - f18) * 0.5519f);
                com.bytedance.adsdk.sP.TKC.Sj sj5 = listTKC2.get(Sj(i11 - 1, listTKC2.size()));
                com.bytedance.adsdk.sP.TKC.Sj sj6 = listTKC2.get(i11);
                sj5.sP(f17, f19);
                sj5.TKC(f17, f19);
                if (i10 == 0) {
                    sefVarSP.Sj(f17, f19);
                }
                sj6.Sj(f22, f23);
                com.bytedance.adsdk.sP.TKC.Sj sj7 = listTKC2.get(i11 + 1);
                sj6.sP(f24, f25);
                sj6.TKC(f20, f21);
                sj7.Sj(f20, f21);
                i11 += 2;
            } else {
                com.bytedance.adsdk.sP.TKC.Sj sj8 = listTKC2.get(Sj(i11 - 1, listTKC2.size()));
                com.bytedance.adsdk.sP.TKC.Sj sj9 = listTKC2.get(i11);
                sj8.sP(sj3.sP().x, sj3.sP().y);
                sj8.TKC(sj3.TKC().x, sj3.TKC().y);
                sj9.Sj(sj2.Sj().x, sj2.Sj().y);
                i11++;
            }
            i10++;
            listTKC = listTKC;
        }
        return sefVarSP;
    }

    private static int sP(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int Sj(int i10, int i11) {
        return i10 - (sP(i10, i11) * i11);
    }
}
