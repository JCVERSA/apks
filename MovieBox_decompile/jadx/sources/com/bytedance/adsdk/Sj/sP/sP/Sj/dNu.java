package com.bytedance.adsdk.Sj.sP.sP.Sj;

public abstract class dNu implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    protected com.bytedance.adsdk.Sj.sP.sP.Sj Sj;
    protected com.bytedance.adsdk.Sj.sP.EjP.TKC TKC;
    protected com.bytedance.adsdk.Sj.sP.sP.Sj sP;

    protected dNu(com.bytedance.adsdk.Sj.sP.EjP.TKC tkc) {
        this.TKC = tkc;
    }

    public void Sj(com.bytedance.adsdk.Sj.sP.sP.Sj sj2) {
        this.Sj = sj2;
    }

    public void sP(com.bytedance.adsdk.Sj.sP.sP.Sj sj2) {
        this.sP = sj2;
    }

    public String toString() {
        return sP();
    }

    @Override
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.OPERATOR_RESULT;
    }

    @Override
    public String sP() {
        return this.Sj.sP() + this.TKC.Sj() + this.sP.sP();
    }
}
