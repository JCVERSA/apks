package com.hisavana.mediation.ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import defpackage.pca;
import defpackage.pwd;
import defpackage.ul4;
import defpackage.zgd;

public class TRewardedAd extends pca {
    public TRewardedAd(Context context, String str) {
        super(context, str);
    }

    @Override
    public boolean a(int i) {
        return i == 5;
    }

    @Override
    public boolean c() {
        return false;
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
                AdLogUtil.Log().w("video", "show error,video handler is null");
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_AD_HANDLER_IS_NULL;
                trackingTriggerShowError(tAdErrorCode2);
                b(tAdErrorCode2);
                return;
            }
            BaseVideo baseVideo = (BaseVideo) aVarG.d(this.q);
            if (baseVideo == null || !baseVideo.canShow()) {
                AdLogUtil.Log().w("video", "no ad or ad is expired ");
                t();
                return;
            }
            WrapTAdAllianceListener tAdAllianceListener = baseVideo.getTAdAllianceListener();
            if (tAdAllianceListener != null && tAdAllianceListener.getAdListener() == null) {
                AdLogUtil.Log().i("video", "TRewarded setAdListener");
                tAdAllianceListener.setAdListener(this.h);
            }
            baseVideo.mBundle.putInt(TrackingKey.FILLING_SOURCE, this.mFillSource);
            baseVideo.mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
            setIsShowing(true);
            baseVideo.showVideo(activity, str, a(str));
        } catch (Exception unused) {
            AdLogUtil.Log().e("video", "show exception ");
            t();
        }
    }

    @Override
    public a a(CloudControlConfig.CodeSeat codeSeat) {
        return new pwd(codeSeat, d(), this.h);
    }

    public void show(Activity activity) {
        show(activity, "");
    }
}
