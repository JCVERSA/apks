package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.sU;

public class Dq extends sP {
    private int EjP;

    public Dq(Integer num, View view, sU sUVar, HiB.Sj sj2) {
        super(num, view, sUVar, 2000, sj2);
        this.EjP = 0;
    }

    @Override
    protected void EjP() {
        super.EjP();
    }

    @Override
    public void Sj() {
        if (this.EjP != 1) {
            return;
        }
        super.Sj();
    }

    @Override
    protected boolean TKC() {
        return vS.Sj(this.Sj.get(), this.sP.DKj()) && this.EjP == 1;
    }

    @Override
    public boolean aa() {
        int i10 = this.EjP;
        boolean z10 = i10 == 2 || i10 == 0;
        if (z10) {
            this.TKC.set(false);
        }
        return !z10 || super.aa();
    }

    @Override
    protected void sP(int i10) {
        if (uA()) {
            return;
        }
        if (i10 == 6 || i10 == 5) {
            this.EjP = 0;
            Dq();
        }
        if (i10 == 3 || i10 == 2) {
            this.EjP = 2;
            Dq();
        }
        if (this.EjP == 1 || i10 != 0) {
            return;
        }
        this.EjP = 1;
        Sj();
    }

    @Override
    public int vS() {
        return 200;
    }
}
