package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import defpackage.n6;
import defpackage.r6;
import defpackage.rca;
import defpackage.w6;

public class AdxInterstitia extends BaseInterstitial {
    public rca a;

    public class a extends n6 {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxInterstitia.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is click" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adClicked(null);
        }

        @Override
        public void onAdClosed() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is closed" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is Loaded" + AdxInterstitia.this.getLogString());
            if (AdxInterstitia.this.a != null) {
                double dE = AdxInterstitia.this.a.e();
                if (dE > 0.0d) {
                    AdxInterstitia.this.setEcpmPrice(dE);
                }
            }
            AdxInterstitia.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().d("AdxInterstitia", "interstitial is onAdShow" + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adImpression(null);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxInterstitia", "interstitial onError:errorCode:" + taErrorCode.getErrorCode() + ",errorMessage:" + taErrorCode.getErrorMessage() + AdxInterstitia.this.getLogString());
            AdxInterstitia.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }
    }

    public AdxInterstitia(Context context, Network network) {
        super(context, network);
    }

    @Override
    public boolean canShow() {
        rca rcaVar = this.a;
        if (rcaVar == null) {
            return super.canShow();
        }
        try {
            return rcaVar.c() == 0;
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxInterstitia", "canShow failed: " + th.getMessage());
            return false;
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        rca rcaVar = this.a;
        if (rcaVar != null) {
            rcaVar.b();
            this.a = null;
        }
        AdLogUtil.Log().d("AdxInterstitia", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initInterstitial() {
        Network network;
        if (this.a != null || (network = this.mNetwork) == null) {
            return;
        }
        this.a = new rca(network.getCodeSeatId());
        r6.b = this.mNetwork.getApplicationId();
        a aVar = new a();
        this.a.q(w6.a().a());
        this.a.o(aVar);
        this.a.p(this.mNetwork.getCodeSeatId());
    }

    @Override
    public boolean isAdxAd() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.d() == 2;
    }

    @Override
    public boolean isEwAd() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.d() == 1;
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        rca rcaVar = this.a;
        if (rcaVar == null) {
            setExpireReason(1115);
            return true;
        }
        try {
            int iC = rcaVar.c();
            setExpireReason(iC);
            return iC != 0;
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxInterstitia", "isExpired failed: " + th.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override
    public boolean isInternalAd() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.h();
    }

    @Override
    public boolean isLoaded() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.i();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.j();
    }

    @Override
    public boolean isOfflineAd() {
        rca rcaVar = this.a;
        return rcaVar != null && rcaVar.f() == 1;
    }

    @Override
    public void onInterstitialShow(Activity activity) {
        rca rcaVar = this.a;
        if (rcaVar == null || rcaVar.g() == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxInterstitia", "onInterstitialShow ad or listener is null");
            return;
        }
        if (this.secondPrice != 0.0d) {
            w6 w6VarG = this.a.g();
            w6VarG.h(this.secondPrice);
            this.a.q(w6VarG);
        }
        this.a.t();
    }

    @Override
    public void onInterstitialStartLoad() {
        rca rcaVar = this.a;
        if (rcaVar == null || rcaVar.i() || this.a.g() == null) {
            return;
        }
        w6 w6VarG = this.a.g();
        w6VarG.k(this.requestType);
        w6VarG.l("hisa-" + this.mTriggerId);
        w6VarG.j("hisa-" + this.mRequestId);
        w6VarG.i(getSupportHisavanaFlag() >= 2);
        this.a.q(w6VarG);
        this.a.l(this.isContainVulgarContent);
        this.a.k(this.mGameName, this.mGameScene, this.mExtInfo);
        this.a.m(this.mCurrActivityFullscreen);
        this.a.s();
    }
}
