package com.bytedance.adsdk.sP.Jcg;

public class TKC {
    private float Sj;
    private float sP;

    public TKC(float f10, float f11) {
        this.Sj = f10;
        this.sP = f11;
    }

    public float Sj() {
        return this.Sj;
    }

    public float sP() {
        return this.sP;
    }

    public String toString() {
        return Sj() + "x" + sP();
    }

    public void Sj(float f10, float f11) {
        this.Sj = f10;
        this.sP = f11;
    }

    public boolean sP(float f10, float f11) {
        return this.Sj == f10 && this.sP == f11;
    }

    public TKC() {
        this(1.0f, 1.0f);
    }
}
