package com.transsion.magicmovie.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.magicmovie.application.VideoApplication;
import com.transsion.utils.a;
import com.trello.rxlifecycle3.components.support.RxAppCompatActivity;
import defpackage.c9;
import defpackage.dv9;
import defpackage.f5;
import defpackage.hb6;
import defpackage.oy5;
import defpackage.pp3;
import defpackage.qha;
import defpackage.t81;
import defpackage.w6c;
import defpackage.xdc;

public class BaseAdActivity extends RxAppCompatActivity {
    public static boolean P;
    public boolean N;
    public boolean O;

    public final boolean D() {
        return (this.O || isFinishing() || isDestroyed()) ? false : true;
    }

    public void E() {
        AdItemBean adItemBeanB = xdc.b();
        Log.i("mediation_ad_BaseAdActivity", "adItemBean " + adItemBeanB);
        if (adItemBeanB == null) {
            F();
        } else {
            H(adItemBeanB);
            oy5.a("cold_start", "else_rule");
        }
    }

    public void F() {
        if (qha.c() || pp3.b || w6c.q(this)) {
            G();
        } else {
            J();
        }
    }

    public final void G() {
        boolean z = dv9.a.a().b() && this.N && !P;
        Log.i("mediation_ad_BaseAdActivity", "normalStart canShowSplashAd:" + z + ", mIsColdLaunchType:" + this.N + ", mediationSplashTriggered:" + P);
        if (z) {
            P = true;
            I();
        } else {
            if (this.N) {
                oy5.a("cold_start", "sw_rule");
            }
            K();
        }
    }

    public void H(AdItemBean adItemBean) {
        if (D()) {
            Intent intent = new Intent(this, (Class<?>) MarketingSplashActivity.class);
            c9.b(adItemBean);
            f5.c(intent, this);
            overridePendingTransition(0, 0);
            finish();
        }
    }

    public void I() {
        Class cls = hb6.b;
        Log.i("mediation_ad_BaseAdActivity", "startMediaAdsActivity " + cls);
        if (cls == null) {
            K();
        } else if (D()) {
            f5.c(new Intent(this, (Class<?>) cls), this);
            overridePendingTransition(0, 0);
            finish();
        }
    }

    public void J() {
        if (D()) {
            f5.c(new Intent(this, (Class<?>) SplashActivity.class), this);
            finish();
        }
    }

    public void K() {
        if (D()) {
            f5.c(new Intent(this, (Class<?>) VideoPlayerMainActivity.class), this);
            overridePendingTransition(0, 0);
            finish();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        a.b(this);
        super.onCreate(bundle);
        t81.a(this);
        this.N = VideoApplication.H();
    }

    @Override
    public void startActivity(Intent intent) {
        this.O = true;
        super.startActivity(intent);
    }
}
