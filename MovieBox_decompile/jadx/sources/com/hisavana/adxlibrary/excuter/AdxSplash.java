package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.view.View;
import b7.e;
import com.cloud.hisavana.sdk.api.adx.TSplashView;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import java.lang.ref.WeakReference;

public class AdxSplash extends BaseSplash {

    public e f32323a;

    public TSplashView f32324b;

    public class a extends com.cloud.hisavana.sdk.api.listener.d {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxSplash.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdxSplash.this.adClicked(null);
            AdLogUtil.Log().d("AdxSplash", "adx onAdClicked" + AdxSplash.this.getLogString());
        }

        @Override
        public void onAdClosed() {
            AdLogUtil.Log().d("AdxSplash", "adx onAdClosed " + AdxSplash.this.getLogString());
            AdxSplash.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdLoaded" + AdxSplash.this.getLogString());
            if (AdxSplash.this.f32323a != null) {
                double dE = AdxSplash.this.f32323a.e();
                if (dE > 0.0d) {
                    AdxSplash.this.setEcpmPrice(dE);
                }
            }
            AdxSplash.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().d("AdxSplash", "adx onAdShow" + AdxSplash.this.getLogString());
            AdxSplash.this.adImpression(null);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                AdxSplash.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
                AdLogUtil.Log().w("AdxSplash", "adx onError:" + taErrorCode.toString() + AdxSplash.this.getLogString());
            }
        }
    }

    public class b implements g {
        public b() {
        }

        @Override
        public void a() {
            AdLogUtil.Log().d("AdxSplash", "onTimeEnd,splash timeout");
            AdxSplash.this.onTimeReach();
        }

        @Override
        public void onClick() {
            AdLogUtil.Log().d("AdxSplash", "onClick click skip btn");
            AdxSplash.this.onSkipClick();
        }
    }

    public class c extends com.cloud.hisavana.sdk.api.listener.d {
        public c() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxSplash.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdxSplash.this.adClicked(null);
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdClicked" + AdxSplash.this.getLogString());
        }

        @Override
        public void onAdClosed() {
            AdxSplash.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdLoaded" + AdxSplash.this.getLogString());
            if (AdxSplash.this.f32324b != null) {
                double bidPrice = AdxSplash.this.f32324b.getBidPrice();
                if (bidPrice > 0.0d) {
                    AdxSplash.this.setEcpmPrice(bidPrice);
                }
            }
            AdxSplash.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().d("AdxSplash", "adx splashview onAdShow" + AdxSplash.this.getLogString());
            AdxSplash.this.adImpression(null);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                AdxSplash.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
                AdLogUtil.Log().w("AdxSplash", "adx splashview onError:" + taErrorCode.toString() + AdxSplash.this.getLogString());
            }
        }
    }

    public class d implements g {
        public d() {
        }

        @Override
        public void a() {
            AdxSplash.this.onTimeReach();
        }

        @Override
        public void onClick() {
            AdxSplash.this.onSkipClick();
        }
    }

    public AdxSplash(Context context, Network network) {
        super(context, network);
    }

    @Override
    public boolean canShow() {
        e eVar = this.f32323a;
        if (eVar != null) {
            return eVar.k();
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null ? tSplashView.isReady() : super.canShow();
    }

    @Override
    public boolean checkNeedAddLogo() {
        return true;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        e eVar = this.f32323a;
        if (eVar != null) {
            eVar.c();
            this.f32323a = null;
        }
        TSplashView tSplashView = this.f32324b;
        if (tSplashView != null) {
            tSplashView.destroy();
            this.f32324b = null;
        }
        AdLogUtil.Log().d("AdxSplash", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public View getSplash() {
        return this.splashMode == 1 ? a() : b();
    }

    @Override
    public boolean isAdxAd() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            return eVar != null && eVar.d() == 2;
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null && tSplashView.getAdSource() == 2;
    }

    @Override
    public boolean isEwAd() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            return eVar != null && eVar.d() == 1;
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null && tSplashView.getAdSource() == 1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x0020 A[ORIG_RETURN, RETURN] */
    @Override
    public boolean isExpired() {
        boolean zIsExpired = super.isExpired();
        e eVar = this.f32323a;
        if (eVar != null) {
            if (!eVar.k() || zIsExpired) {
                return true;
            }
            return false;
        }
        TSplashView tSplashView = this.f32324b;
        if (tSplashView == null) {
            return zIsExpired;
        }
        if (!tSplashView.isReady() || zIsExpired) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isInternalAd() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            return eVar != null && eVar.h();
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null && tSplashView.isDefaultAd();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            return eVar != null && eVar.j();
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null && tSplashView.isMatchVulgarBrand();
    }

    @Override
    public boolean isOfflineAd() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            return eVar != null && eVar.f() == 1;
        }
        TSplashView tSplashView = this.f32324b;
        return tSplashView != null && tSplashView.getFillAdType() == 1;
    }

    @Override
    public void onSplashShow() {
        if (this.splashMode != 1) {
            TSplashView tSplashView = this.f32324b;
            if (tSplashView == null) {
                AdLogUtil.Log().d("AdxSplash", "show splash failed");
                return;
            }
            if (this.secondPrice != 0.0d && tSplashView.getRequest() != null) {
                d7.a request = this.f32324b.getRequest();
                request.h(this.secondPrice);
                this.f32324b.setRequest(request);
            }
            TSplashView tSplashView2 = this.f32324b;
            if (tSplashView2 != null) {
                tSplashView2.show();
                return;
            }
            return;
        }
        e eVar = this.f32323a;
        if (eVar == null) {
            AdLogUtil.Log().d("AdxSplash", "show splash failed");
            return;
        }
        if (this.secondPrice != 0.0d && eVar.g() != null) {
            d7.a aVarG = this.f32323a.g();
            aVarG.h(this.secondPrice);
            this.f32323a.r(aVarG);
        }
        e eVar2 = this.f32323a;
        if (eVar2 != null) {
            eVar2.w(this.mLogoLayoutHeightRatio);
            this.f32323a.v(getLogoLayout());
            this.f32323a.y();
        }
    }

    @Override
    public void onSplashStartLoad() {
        if (this.splashMode == 1) {
            e eVar = this.f32323a;
            if (eVar == null || eVar.g() == null) {
                return;
            }
            d7.a aVarG = this.f32323a.g();
            aVarG.k(this.requestType);
            aVarG.l("hisa-" + this.mTriggerId);
            aVarG.j("hisa-" + this.mRequestId);
            this.f32323a.r(aVarG);
            this.f32323a.m(this.isContainVulgarContent);
            this.f32323a.l(this.mGameName, this.mGameScene, this.mExtInfo);
            this.f32323a.n(this.mCurrActivityFullscreen);
            this.f32323a.t();
            return;
        }
        TSplashView tSplashView = this.f32324b;
        if (tSplashView == null || tSplashView.getRequest() == null) {
            return;
        }
        d7.a request = this.f32324b.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        this.f32324b.setRequest(request);
        this.f32324b.setContainVulgarContent(this.isContainVulgarContent);
        this.f32324b.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f32324b.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.f32324b.loadAd();
    }

    public final View a() {
        if (this.f32323a == null) {
            this.f32323a = new e(com.cloud.sdk.commonutil.util.e.a(), this.mNetwork.getCodeSeatId());
            c7.b.f16688b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.f32323a.r(d7.a.a().a());
            this.f32323a.p(aVar);
            this.f32323a.x(new b());
        }
        if (com.cloud.sdk.commonutil.util.e.a() != null) {
            return new View(com.cloud.sdk.commonutil.util.e.a().getApplicationContext());
        }
        return null;
    }

    public final View b() {
        WeakReference<Context> weakReference;
        if (this.f32324b == null && (weakReference = this.mContext) != null && weakReference.get() != null) {
            this.f32324b = new TSplashView(this.mContext.get(), this.mNetwork.getCodeSeatId());
            c7.b.f16688b = this.mNetwork.getApplicationId();
            c cVar = new c();
            this.f32324b.setRequest(d7.a.a().a());
            this.f32324b.setListener(cVar);
            TSplashView tSplashView = this.f32324b;
            if (tSplashView != null) {
                tSplashView.setSkipListener(new d());
            }
        }
        return this.f32324b;
    }
}
