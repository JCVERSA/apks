package com.cloud.hisavana.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.push.PushConstants;

public class d4 {

    private a f21757a;

    private final v2 f21759c;

    private AdsDTO f21760d;

    private boolean f21758b = false;

    private boolean f21761e = false;

    private static class a extends BroadcastReceiver {

        private final d4 f21762a;

        a(d4 d4Var) {
            this.f21762a = d4Var;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            String action;
            b4.b().d("InterGemini", "fc_problem_onReceive,intent: " + intent);
            if (intent == null || (action = intent.getAction()) == null || this.f21762a == null) {
                return;
            }
            if (action.equals(this.f21762a.g() + "_click")) {
                b4.b().d("InterGemini", "receive interstitial click");
                AdsDTO adsDTO = (AdsDTO) intent.getParcelableExtra("mAdBean");
                if (adsDTO != null) {
                    this.f21762a.f21760d = adsDTO;
                    this.f21762a.f21759c.G(adsDTO);
                }
                if (adsDTO != null && adsDTO.isAllowTrackingADClick()) {
                    AthenaTracker.W(adsDTO);
                } else if (adsDTO != null) {
                    adsDTO.setAdClickTracking(true);
                    b4.b().d("InterGemini", "tracking is not allowed，change isAdClickTracking = true");
                }
                this.f21762a.f21759c.I();
                return;
            }
            if (action.equals(this.f21762a.g() + "_close")) {
                b4.b().d("InterGemini", "receive interstitial ad_close");
                AdsDTO adsDTO2 = (AdsDTO) intent.getParcelableExtra("mAdBean");
                if (adsDTO2 != null) {
                    this.f21762a.f21760d = adsDTO2;
                    this.f21762a.f21759c.G(adsDTO2);
                }
                this.f21762a.f21759c.J();
                this.f21762a.k();
                this.f21762a.f21757a = null;
                return;
            }
            if (action.equals(this.f21762a.g() + "_error")) {
                b4.b().d("InterGemini", "receive interstitial error");
                this.f21762a.f21759c.F(new TaErrorCode(intent.getIntExtra("error_code", -1), intent.getStringExtra(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG)));
                this.f21762a.k();
                this.f21762a.f21757a = null;
                return;
            }
            if (action.equals(this.f21762a.g() + "_show")) {
                b4.b().d("InterGemini", "receive interstitial show");
                this.f21762a.f21759c.K();
                return;
            }
            if (action.equals(this.f21762a.g() + "_pre_imp")) {
                b4.b().d("InterGemini", "receive interstitial pre impression");
                return;
            }
            if (action.equals(this.f21762a.g() + "_destroy")) {
                b4.b().d("InterGemini", "receive interstitial ad_destroy");
                d4 d4Var = this.f21762a;
                if (d4Var != null) {
                    d4Var.k();
                    this.f21762a.f21757a = null;
                }
            }
        }
    }

    public d4(v2 v2Var) {
        this.f21759c = v2Var;
    }

    public String g() {
        if (this.f21760d == null) {
            return null;
        }
        return com.cloud.sdk.commonutil.util.e.d() + "_adx_" + this.f21760d.getId();
    }

    private void h() {
        if (this.f21758b) {
            b4.b().w("InterGemini", "registerInterstitialAdReceiver: already registered, skip");
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            String strG = g();
            intentFilter.addAction(strG + "_click");
            intentFilter.addAction(strG + "_close");
            intentFilter.addAction(strG + "_show");
            intentFilter.addAction(strG + "_pre_imp");
            intentFilter.addAction(strG + "_error");
            intentFilter.addAction(strG + "_destroy");
            if (Build.VERSION.SDK_INT >= 33) {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f21757a, intentFilter, 2);
            } else {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f21757a, intentFilter);
            }
            this.f21758b = true;
            b4.b().d("InterGemini", "registerInterstitialAdReceiver");
        } catch (Exception e10) {
            b4.b().w("InterGemini", "registerInterstitialAdReceiver error: " + e10.getMessage());
        }
    }

    private void j() {
        b4.b().d("InterGemini", "interstitial showNormalAd");
        if (this.f21757a == null) {
            this.f21757a = new a(this);
        }
        h();
        AdsDTO adsDTO = this.f21760d;
        if (adsDTO != null) {
            adsDTO.setCloseDelayTime(this.f21759c.n(adsDTO));
            this.f21760d.setRetentionEndCardRatio(this.f21759c.x());
        }
        TAdInterstitialActivity.G(this.f21759c);
        Intent intent = new Intent(com.cloud.sdk.commonutil.util.e.a(), (Class<?>) TAdInterstitialActivity.class);
        intent.setFlags(268500992);
        intent.putExtra("mAdBean", this.f21760d);
        intent.putExtra("BroadCastPrefix", g());
        com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
    }

    public void k() {
        if (this.f21757a != null) {
            try {
                try {
                    com.cloud.sdk.commonutil.util.e.a().unregisterReceiver(this.f21757a);
                } catch (IllegalArgumentException e10) {
                    b4.b().w("InterGemini", "unregisterReceiver: " + e10.getMessage());
                }
            } finally {
                this.f21757a = null;
                this.f21758b = false;
            }
        }
    }

    public void d() {
        k();
        b4.b().d("InterGemini", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void e(AdsDTO adsDTO) {
        this.f21760d = adsDTO;
        if (adsDTO != null) {
            j();
            return;
        }
        v2 v2Var = this.f21759c;
        if (v2Var != null) {
            v2Var.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        b4.b().d("InterGemini", "show() --> mAdBean == null");
    }
}
