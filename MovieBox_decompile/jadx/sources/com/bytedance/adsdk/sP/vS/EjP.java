package com.bytedance.adsdk.sP.vS;

public class EjP {
    private float Sj;
    private int sP;

    public void Sj(float f10) {
        float f11 = this.Sj + f10;
        this.Sj = f11;
        int i10 = this.sP + 1;
        this.sP = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.Sj = f11 / 2.0f;
            this.sP = i10 / 2;
        }
    }
}
