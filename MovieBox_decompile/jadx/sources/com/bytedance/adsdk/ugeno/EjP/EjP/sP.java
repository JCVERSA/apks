package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;

public class sP extends Sj implements com.bytedance.adsdk.ugeno.EjP.Sj.EjP {
    private com.bytedance.adsdk.ugeno.EjP.Sj.TKC Ym;

    public sP(Context context) {
        super(context);
    }

    @Override
    public boolean Sj(Object... objArr) {
        com.bytedance.adsdk.ugeno.EjP.Sj.Sj sjFm = this.sP.Fm();
        if (sjFm == null) {
            return false;
        }
        com.bytedance.adsdk.ugeno.EjP.Sj.TKC tkcSj = sjFm.Sj(this.vS);
        this.Ym = tkcSj;
        if (tkcSj != null) {
            tkcSj.Sj(this);
            return false;
        }
        sjFm.Sj(this.vS, new com.bytedance.adsdk.ugeno.EjP.Sj.sP());
        return false;
    }

    @Override
    public void Sj(String str) {
        this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
    }
}
