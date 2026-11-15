package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import b7.b;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;

public class AdxInterstitia extends BaseInterstitial {

    public b f32313a;

    public class a extends d {
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
            if (AdxInterstitia.this.f32313a != null) {
                double dE = AdxInterstitia.this.f32313a.e();
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
        b bVar = this.f32313a;
        return bVar != null ? bVar.k() : super.canShow();
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        b bVar = this.f32313a;
        if (bVar != null) {
            bVar.c();
            this.f32313a = null;
        }
        AdLogUtil.Log().d("AdxInterstitia", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initInterstitial() {
        Network network;
        if (this.f32313a != null || (network = this.mNetwork) == null) {
            return;
        }
        this.f32313a = new b(network.getCodeSeatId());
        c7.b.f16688b = this.mNetwork.getApplicationId();
        a aVar = new a();
        this.f32313a.r(d7.a.a().a());
        this.f32313a.p(aVar);
        this.f32313a.q(this.mNetwork.getCodeSeatId());
    }

    @Override
    public boolean isAdxAd() {
        b bVar = this.f32313a;
        return bVar != null && bVar.d() == 2;
    }

    @Override
    public boolean isEwAd() {
        b bVar = this.f32313a;
        return bVar != null && bVar.d() == 1;
    }

    @Override
    public boolean isExpired() {
        b bVar = this.f32313a;
        if (bVar != null) {
            return !bVar.k() || super.isExpired();
        }
        return super.isExpired();
    }

    @Override
    public boolean isInternalAd() {
        b bVar = this.f32313a;
        return bVar != null && bVar.h();
    }

    @Override
    public boolean isLoaded() {
        b bVar = this.f32313a;
        return bVar != null && bVar.i();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        b bVar = this.f32313a;
        return bVar != null && bVar.j();
    }

    @Override
    public boolean isOfflineAd() {
        b bVar = this.f32313a;
        return bVar != null && bVar.f() == 1;
    }

    @Override
    public void onInterstitialShow(Activity activity) {
        b bVar = this.f32313a;
        if (bVar == null || bVar.g() == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxInterstitia", "onInterstitialShow ad or listener is null");
            return;
        }
        if (this.secondPrice != 0.0d) {
            d7.a aVarG = this.f32313a.g();
            aVarG.h(this.secondPrice);
            this.f32313a.r(aVarG);
        }
        this.f32313a.t();
    }

    @Override
    public void onInterstitialStartLoad() {
        b bVar = this.f32313a;
        if (bVar == null || bVar.i() || this.f32313a.g() == null) {
            return;
        }
        d7.a aVarG = this.f32313a.g();
        aVarG.k(this.requestType);
        aVarG.l("hisa-" + this.mTriggerId);
        aVarG.j("hisa-" + this.mRequestId);
        aVarG.i(getSupportHisavanaFlag() >= 2);
        this.f32313a.r(aVarG);
        this.f32313a.m(this.isContainVulgarContent);
        this.f32313a.l(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f32313a.n(this.mCurrActivityFullscreen);
        this.f32313a.s();
    }
}
