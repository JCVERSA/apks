package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.view.View;
import com.cloud.hisavana.sdk.api.adx.TSplashView;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import defpackage.jf7;
import defpackage.n6;
import defpackage.r6;
import defpackage.ul4;
import defpackage.w6;
import defpackage.wca;
import java.lang.ref.WeakReference;

public class AdxSplash extends BaseSplash {
    public wca a;
    public TSplashView b;

    public class a extends n6 {
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
            if (AdxSplash.this.a != null) {
                double dE = AdxSplash.this.a.e();
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

    public class b implements jf7 {
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

    public class c extends n6 {
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
            if (AdxSplash.this.b != null) {
                double bidPrice = AdxSplash.this.b.getBidPrice();
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

    public class d implements jf7 {
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
        try {
            wca wcaVar = this.a;
            if (wcaVar != null) {
                return wcaVar.c() == 0;
            }
            TSplashView tSplashView = this.b;
            if (tSplashView != null) {
                return tSplashView.getAdReadyStatusWithoutTracking() == 0;
            }
            return super.canShow();
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxSplash", "canShow failed: " + th.getMessage());
            return false;
        }
    }

    @Override
    public boolean checkNeedAddLogo() {
        return true;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        wca wcaVar = this.a;
        if (wcaVar != null) {
            wcaVar.b();
            this.a = null;
        }
        TSplashView tSplashView = this.b;
        if (tSplashView != null) {
            tSplashView.destroy();
            this.b = null;
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
            wca wcaVar = this.a;
            return wcaVar != null && wcaVar.d() == 2;
        }
        TSplashView tSplashView = this.b;
        return tSplashView != null && tSplashView.getAdSource() == 2;
    }

    @Override
    public boolean isEwAd() {
        if (this.splashMode == 1) {
            wca wcaVar = this.a;
            return wcaVar != null && wcaVar.d() == 1;
        }
        TSplashView tSplashView = this.b;
        return tSplashView != null && tSplashView.getAdSource() == 1;
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            wca wcaVar = this.a;
            if (wcaVar != null) {
                int iC = wcaVar.c();
                setExpireReason(iC);
                return iC != 0;
            }
            TSplashView tSplashView = this.b;
            if (tSplashView == null) {
                setExpireReason(1115);
                return true;
            }
            int adReadyStatusWithoutTracking = tSplashView.getAdReadyStatusWithoutTracking();
            setExpireReason(adReadyStatusWithoutTracking);
            return adReadyStatusWithoutTracking != 0;
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxSplash", "isExpired failed: " + th.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override
    public boolean isInternalAd() {
        if (this.splashMode == 1) {
            wca wcaVar = this.a;
            return wcaVar != null && wcaVar.h();
        }
        TSplashView tSplashView = this.b;
        return tSplashView != null && tSplashView.isDefaultAd();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        if (this.splashMode == 1) {
            wca wcaVar = this.a;
            return wcaVar != null && wcaVar.j();
        }
        TSplashView tSplashView = this.b;
        return tSplashView != null && tSplashView.isMatchVulgarBrand();
    }

    @Override
    public boolean isOfflineAd() {
        if (this.splashMode == 1) {
            wca wcaVar = this.a;
            return wcaVar != null && wcaVar.f() == 1;
        }
        TSplashView tSplashView = this.b;
        return tSplashView != null && tSplashView.getFillAdType() == 1;
    }

    @Override
    public void onSplashShow() {
        if (this.splashMode != 1) {
            TSplashView tSplashView = this.b;
            if (tSplashView == null) {
                AdLogUtil.Log().d("AdxSplash", "show splash failed");
                return;
            }
            if (this.secondPrice != 0.0d && tSplashView.getRequest() != null) {
                w6 request = this.b.getRequest();
                request.h(this.secondPrice);
                this.b.setRequest(request);
            }
            TSplashView tSplashView2 = this.b;
            if (tSplashView2 != null) {
                tSplashView2.show();
                return;
            }
            return;
        }
        wca wcaVar = this.a;
        if (wcaVar == null) {
            AdLogUtil.Log().d("AdxSplash", "show splash failed");
            return;
        }
        if (this.secondPrice != 0.0d && wcaVar.g() != null) {
            w6 w6VarG = this.a.g();
            w6VarG.h(this.secondPrice);
            this.a.q(w6VarG);
        }
        wca wcaVar2 = this.a;
        if (wcaVar2 != null) {
            wcaVar2.w(this.mLogoLayoutHeightRatio);
            this.a.v(getLogoLayout());
            this.a.x();
        }
    }

    @Override
    public void onSplashStartLoad() {
        if (this.splashMode == 1) {
            wca wcaVar = this.a;
            if (wcaVar == null || wcaVar.g() == null) {
                return;
            }
            w6 w6VarG = this.a.g();
            w6VarG.k(this.requestType);
            w6VarG.l("hisa-" + this.mTriggerId);
            w6VarG.j("hisa-" + this.mRequestId);
            this.a.q(w6VarG);
            this.a.l(this.isContainVulgarContent);
            this.a.k(this.mGameName, this.mGameScene, this.mExtInfo);
            this.a.m(this.mCurrActivityFullscreen);
            this.a.t();
            return;
        }
        TSplashView tSplashView = this.b;
        if (tSplashView == null || tSplashView.getRequest() == null) {
            return;
        }
        w6 request = this.b.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        this.b.setRequest(request);
        this.b.setContainVulgarContent(this.isContainVulgarContent);
        this.b.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.b.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.b.loadAd();
    }

    public final View a() {
        if (this.a == null) {
            this.a = new wca(ul4.a(), this.mNetwork.getCodeSeatId());
            r6.b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.a.q(w6.a().a());
            this.a.o(aVar);
            this.a.setSkipListener(new b());
        }
        if (ul4.a() != null) {
            return new View(ul4.a().getApplicationContext());
        }
        return null;
    }

    public final View b() {
        WeakReference<Context> weakReference;
        if (this.b == null && (weakReference = this.mContext) != null && weakReference.get() != null) {
            this.b = new TSplashView(this.mContext.get(), this.mNetwork.getCodeSeatId());
            r6.b = this.mNetwork.getApplicationId();
            c cVar = new c();
            this.b.setRequest(w6.a().a());
            this.b.setListener(cVar);
            TSplashView tSplashView = this.b;
            if (tSplashView != null) {
                tSplashView.setSkipListener(new d());
            }
        }
        return this.b;
    }
}
