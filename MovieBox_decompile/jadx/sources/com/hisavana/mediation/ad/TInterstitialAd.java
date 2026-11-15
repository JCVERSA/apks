package com.hisavana.mediation.ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import ee.c;
import ee.h;
import ee.k;
import fe.b;

public class TInterstitialAd extends b {
    public TInterstitialAd(Context context, String str) {
        super(context, str);
    }

    @Override
    public boolean a(int i10) {
        return i10 == 3;
    }

    @Override
    public boolean c() {
        return false;
    }

    public void show(Activity activity, String str) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TInterstitialAd", "appId is empty");
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TInterstitialAd", "you should init first");
            return;
        }
        n();
        if (this.f60141m) {
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        if (this.f60135g == null) {
            this.f60135g = h.a(this.f60129a);
        }
        TAdErrorCode tAdErrorCodeB = b(this.f60135g);
        if (tAdErrorCodeB != null) {
            trackingTriggerShowError(tAdErrorCodeB);
            b(tAdErrorCodeB);
            return;
        }
        try {
            c cVarG = g();
            if (cVarG == null) {
                AdLogUtil.Log().w("TInterstitialAd", "show error,interstitial handler is null");
                t();
                return;
            }
            BaseInterstitial baseInterstitial = (BaseInterstitial) cVarG.e(this.f60145q);
            if (baseInterstitial == null) {
                AdLogUtil.Log().w("TInterstitialAd", "no ad or ad is expired ");
                t();
                return;
            }
            WrapTAdAllianceListener tAdAllianceListener = baseInterstitial.getTAdAllianceListener();
            if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                AdLogUtil.Log().i("TInterstitialAd", "TInterstitial setAdListener");
                tAdAllianceListener.setAdListener(this.f60136h);
            }
            baseInterstitial.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
            baseInterstitial.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
            setIsShowing(true);
            baseInterstitial.show(activity, str, a(str));
        } catch (Exception unused) {
            AdLogUtil.Log().e("TInterstitialAd", "show exception");
            t();
        }
    }

    @Override
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        return new k(codeSeat, d(), this.f60136h);
    }

    public void show(Activity activity) {
        show(activity, "");
    }
}
