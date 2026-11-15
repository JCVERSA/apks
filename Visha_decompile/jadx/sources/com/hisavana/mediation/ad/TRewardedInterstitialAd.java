package com.hisavana.mediation.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import defpackage.gtd;
import defpackage.pca;
import defpackage.ul4;
import defpackage.zgd;

public class TRewardedInterstitialAd extends pca {
    public TRewardedInterstitialAd(Context context, String str) {
        super(context, str);
    }

    @Override
    public boolean a(int i) {
        return i == 8;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public int e() {
        return 8;
    }

    public void show(Activity activity, String str) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("video", "appId is empty");
            return;
        }
        if (!ul4.i()) {
            AdLogUtil.Log().e("video", "you should init first");
            return;
        }
        n();
        if (this.m) {
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        if (this.g == null) {
            this.g = zgd.a(this.a);
        }
        TAdErrorCode tAdErrorCodeB = b(this.g);
        if (tAdErrorCodeB != null) {
            trackingTriggerShowError(tAdErrorCodeB);
            b(tAdErrorCodeB);
            return;
        }
        try {
            a aVarG = g();
            if (aVarG == null) {
                AdLogUtil.Log().w("video", "show error,interstitial rewarded handler is null");
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_AD_HANDLER_IS_NULL;
                trackingTriggerShowError(tAdErrorCode2);
                b(tAdErrorCode2);
                return;
            }
            BaseInterstitialRewardedVideo baseInterstitialRewardedVideo = (BaseInterstitialRewardedVideo) aVarG.d(this.q);
            if (baseInterstitialRewardedVideo == null || !baseInterstitialRewardedVideo.canShow()) {
                AdLogUtil.Log().w("video", "no ad or ad is expired");
                t();
                return;
            }
            WrapTAdAllianceListener tAdAllianceListener = baseInterstitialRewardedVideo.getTAdAllianceListener();
            if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                AdLogUtil.Log().i("video", "TRewardedInterstitial setAdListener");
                tAdAllianceListener.setAdListener(this.h);
            }
            baseInterstitialRewardedVideo.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
            baseInterstitialRewardedVideo.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
            setIsShowing(true);
            baseInterstitialRewardedVideo.showVideo(activity, str, a(str));
        } catch (Exception unused) {
            AdLogUtil.Log().e("video", "show exception");
            t();
        }
    }

    public void trackInterstitialRewardGuideClose() {
        try {
            Bundle bundle = new Bundle();
            bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
            bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
            bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
            bundle.putLong(TrackingKey.TS, System.currentTimeMillis());
            TrackingManager.trackInterstitialRewardGuideClose(bundle);
        } catch (Exception unused) {
        }
    }

    @Override
    public a a(CloudControlConfig.CodeSeat codeSeat) {
        return new gtd(codeSeat, d(), this.h);
    }

    public void show(Activity activity) {
        show(activity, "");
    }
}
