package defpackage;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.activity.HisavanaInterstitialTemplateActivity;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.push.PushConstants;
import java.lang.ref.WeakReference;

public class pud {
    public a a;
    public final vnd c;
    public AdsDTO d;
    public boolean b = false;
    public boolean e = false;

    public static class a extends BroadcastReceiver {
        public final pud a;

        public a(pud pudVar) {
            this.a = pudVar;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            String action;
            ikd.b().d("InterGemini", "fc_problem_onReceive,intent: " + intent);
            if (intent == null || (action = intent.getAction()) == null) {
                return;
            }
            AdsDTO adsDTO = (AdsDTO) intent.getParcelableExtra("mAdBean");
            if (adsDTO != null) {
                if (this.a.d != null && TextUtils.equals(this.a.d.getUuid(), adsDTO.getUuid())) {
                    adsDTO.setRecordClick(this.a.d.isRecordClick());
                }
                this.a.d = adsDTO;
                this.a.c.G(adsDTO);
            }
            if (this.a != null) {
                if (action.equals(this.a.f() + "_click")) {
                    ikd.b().d("InterGemini", "receive interstitial click");
                    if (adsDTO != null && adsDTO.isAllowTrackingADClick()) {
                        AthenaTracker.b0(adsDTO);
                    } else if (adsDTO != null) {
                        adsDTO.setAdClickTracking(true);
                        ikd.b().d("InterGemini", "tracking is not allowed，change isAdClickTracking = true");
                    }
                    this.a.c.I();
                    return;
                }
                if (action.equals(this.a.f() + "_close")) {
                    ikd.b().d("InterGemini", "receive interstitial ad_close");
                    this.a.c.J();
                    this.a.m();
                    this.a.a = null;
                    return;
                }
                if (action.equals(this.a.f() + "_error")) {
                    ikd.b().d("InterGemini", "receive interstitial error");
                    this.a.c.F(new TaErrorCode(intent.getIntExtra("error_code", -1), intent.getStringExtra("error_msg")));
                    this.a.m();
                    this.a.a = null;
                    return;
                }
                if (action.equals(this.a.f() + "_show")) {
                    ikd.b().d("InterGemini", "receive interstitial show");
                    this.a.c.K();
                    return;
                }
                if (action.equals(this.a.f() + "_pre_imp")) {
                    ikd.b().d("InterGemini", "receive interstitial pre impression");
                    return;
                }
                if (action.equals(this.a.f() + "_destroy")) {
                    ikd.b().d("InterGemini", "receive interstitial ad_destroy");
                    pud pudVar = this.a;
                    if (pudVar != null) {
                        pudVar.m();
                        this.a.a = null;
                    }
                }
            }
        }
    }

    public pud(vnd vndVar) {
        this.c = vndVar;
    }

    public void d() {
        m();
        ikd.b().d("InterGemini", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void e(AdsDTO adsDTO) {
        this.d = adsDTO;
        if (adsDTO != null) {
            l();
            return;
        }
        vnd vndVar = this.c;
        if (vndVar != null) {
            vndVar.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        ikd.b().d("InterGemini", "show() --> mAdBean == null");
    }

    public final String f() {
        if (this.d == null) {
            return null;
        }
        return ul4.d() + "_adx_" + this.d.getId();
    }

    public final IntentFilter h() {
        IntentFilter intentFilter = new IntentFilter();
        String strF = f();
        intentFilter.addAction(strF + "_click");
        intentFilter.addAction(strF + "_close");
        intentFilter.addAction(strF + "_show");
        intentFilter.addAction(strF + "_pre_imp");
        intentFilter.addAction(strF + "_error");
        intentFilter.addAction(strF + "_destroy");
        return intentFilter;
    }

    public final void j() {
        if (this.b) {
            ikd.b().w("InterGemini", "registerInterstitialAdReceiver: already registered, skip");
            return;
        }
        try {
            IntentFilter intentFilterH = h();
            if (Build.VERSION.SDK_INT >= 33) {
                ul4.a().registerReceiver(this.a, intentFilterH, 2);
            } else {
                ul4.a().registerReceiver(this.a, intentFilterH);
            }
            this.b = true;
            ikd.b().d("InterGemini", "registerInterstitialAdReceiver");
        } catch (Exception e) {
            ikd.b().w("InterGemini", "registerInterstitialAdReceiver error: " + e.getMessage());
        }
    }

    public final void l() {
        Intent intent;
        ikd.b().d("InterGemini", "interstitial showNormalAd");
        if (this.d == null) {
            ikd.b().w("InterGemini", "show Ad error: ad data is null");
            this.c.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        if (this.a == null) {
            this.a = new a(this);
        }
        j();
        AdsDTO adsDTO = this.d;
        adsDTO.setCloseDelayTime(this.c.n(adsDTO));
        this.d.setRetentionEndCardRatio(this.c.x());
        if (TextUtils.isEmpty(this.d.getTemplateHtmlFilePath())) {
            TAdInterstitialActivity.O(this.c);
            intent = new Intent(ul4.a(), (Class<?>) TAdInterstitialActivity.class);
        } else {
            HisavanaInterstitialTemplateActivity.INSTANCE.a(new WeakReference(this.c));
            intent = new Intent(ul4.a(), (Class<?>) HisavanaInterstitialTemplateActivity.class);
        }
        intent.putExtra("mAdBean", this.d);
        intent.putExtra("BroadCastPrefix", f());
        if (!vl4.g()) {
            intent.setFlags(268500992);
            ul4.a().startActivity(intent);
            return;
        }
        Activity activityH = zk5.h();
        if (zk5.i(activityH)) {
            try {
                intent.setFlags(65536);
                activityH.startActivity(intent);
                return;
            } catch (Exception e) {
                ikd.b().e("InterGemini", "show() --> startActivity error", e);
                return;
            }
        }
        ikd.b().w("InterGemini", "show() --> topActivity is not alive");
        vnd vndVar = this.c;
        if (vndVar != null) {
            vndVar.F(TaErrorCode.ERROR_SHOW_TOP_ACTIVITY_IS_NOT_ALIVE);
        }
    }

    public final void m() {
        if (this.a != null) {
            try {
                try {
                    ul4.a().unregisterReceiver(this.a);
                } catch (IllegalArgumentException e) {
                    ikd.b().w("InterGemini", "unregisterReceiver: " + e.getMessage());
                }
            } finally {
                this.a = null;
                this.b = false;
            }
        }
    }
}
