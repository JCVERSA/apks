package com.mgtv.a.d.b;

import com.mgmi.model.VASTAd;
import defpackage.m5d;

public abstract class c extends a<VASTAd> {
    @Override
    public void e(VASTAd vASTAd) {
        if (vASTAd != null) {
            d(vASTAd.getVoice_btn());
            if (this.p != null) {
                if (vASTAd.getAd_timer() == 1) {
                    this.p.setCountDownVisible(0);
                } else {
                    this.p.setCountDownVisible(8);
                }
            }
        }
    }

    @Override
    public void f(VASTAd vASTAd) {
        this.j = vASTAd.clk_area == 1;
    }

    @Override
    public void g(VASTAd vASTAd) {
        try {
            if (new m5d(com.mgmi.ads.api.c.a(), null, null).d(vASTAd)) {
                this.k = true;
            } else {
                this.k = false;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
