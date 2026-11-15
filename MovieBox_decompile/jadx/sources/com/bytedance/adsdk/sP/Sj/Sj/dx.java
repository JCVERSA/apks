package com.bytedance.adsdk.sP.Sj.Sj;

import java.util.ArrayList;
import java.util.List;

public class dx implements TKC, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj {
    private final com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> HiB;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Jcg;
    private final String Sj;
    private final List<com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj> TKC = new ArrayList();
    private final boolean sP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> vS;

    public dx(com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.RiZ riZ) {
        this.Sj = riZ.Sj();
        this.sP = riZ.vS();
        this.EjP = riZ.sP();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = riZ.EjP().Sj();
        this.HiB = Sj;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj2 = riZ.TKC().Sj();
        this.vS = Sj2;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj3 = riZ.HiB().Sj();
        this.Jcg = Sj3;
        sj2.Sj(Sj);
        sj2.Sj(Sj2);
        sj2.Sj(Sj3);
        Sj.Sj(this);
        Sj2.Sj(this);
        Sj3.Sj(this);
    }

    public com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> EjP() {
        return this.vS;
    }

    public com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> HiB() {
        return this.Jcg;
    }

    @Override
    public void Sj(List<TKC> list, List<TKC> list2) {
    }

    public com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> TKC() {
        return this.HiB;
    }

    com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj sP() {
        return this.EjP;
    }

    public boolean vS() {
        return this.sP;
    }

    @Override
    public void Sj() {
        for (int i10 = 0; i10 < this.TKC.size(); i10++) {
            this.TKC.get(i10).Sj();
        }
    }

    void Sj(com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0175Sj interfaceC0175Sj) {
        this.TKC.add(interfaceC0175Sj);
    }
}
