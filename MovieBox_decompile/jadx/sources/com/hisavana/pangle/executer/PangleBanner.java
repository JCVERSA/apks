package com.hisavana.pangle.executer;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;

public class PangleBanner extends BaseBanner {

    private View f32517d;

    private PAGBannerAdLoadListener f32518e;

    private PAGBannerAdInteractionListener f32519f;

    private PAGBannerAd f32520g;

    private PAGBannerRequest f32521h;

    public PangleBanner(Context context, Network network, int i10) {
        super(context, network);
        this.f32518e = new PAGBannerAdLoadListener() {
            @Override
            public void onError(int i11, String str) {
                PangleBanner.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle onError pangle code：" + i11 + "，message：" + str);
            }

            @Override
            public void onAdLoaded(PAGBannerAd pAGBannerAd) {
                if (pAGBannerAd == null) {
                    return;
                }
                PangleBanner.this.f32520g = pAGBannerAd;
                PangleBanner pangleBanner = PangleBanner.this;
                pangleBanner.f32517d = pangleBanner.f32520g.getBannerView();
                if (PangleBanner.this.f32519f != null) {
                    PangleBanner.this.f32520g.setAdInteractionListener(PangleBanner.this.f32519f);
                    try {
                        double d10 = Double.parseDouble(PangleBanner.this.f32520g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d10 > 0.0d) {
                            PangleBanner.this.setEcpmPrice(d10 * 100.0d);
                        }
                    } catch (Exception e10) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e10));
                    }
                }
                PangleBanner.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle onAdLoad");
            }
        };
        this.f32519f = new PAGBannerAdInteractionListener() {
            @Override
            public void onAdClicked() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
                PangleBanner.this.adClicked(null);
            }

            @Override
            public void onAdDismissed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
                PangleBanner.this.adClosed();
            }

            @Override
            public void onAdShowed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
                PangleBanner.this.adImpression(null);
            }
        };
        this.f32521h = new PAGBannerRequest(i10 != 1 ? i10 != 2 ? i10 != 3 ? PAGBannerSize.BANNER_W_320_H_50 : new PAGBannerSize(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 90) : PAGBannerSize.BANNER_W_300_H_250 : new PAGBannerSize(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 100));
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected View getBanner() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "getBanner " + this.f32517d);
        WeakReference<Context> weakReference = this.mContext;
        Context context = (weakReference == null || weakReference.get() == null) ? null : this.mContext.get();
        if (this.f32517d == null && context != null) {
            this.f32517d = new View(e.a());
        }
        return this.f32517d;
    }

    @Override
    protected void onBannerDestroy() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onBannerDestroy");
        if (this.f32517d != null) {
            this.f32517d = null;
        }
        PAGBannerAd pAGBannerAd = this.f32520g;
        if (pAGBannerAd != null) {
            pAGBannerAd.destroy();
        }
        this.f32519f = null;
        this.f32518e = null;
    }

    @Override
    protected void onBannerLoad() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onBannerLoad");
        if (this.mNetwork == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            ExistsCheck.initAdSource(this.mNetwork.getApplicationId(), new PAGSdk.PAGInitCallback() {
                @Override
                public void fail(int i10, String str) {
                    PangleBanner.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i10 + "，message：" + str);
                }

                @Override
                public void success() {
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init time " + jCurrentTimeMillis2);
                    if (((BaseAd) PangleBanner.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleBanner.this).mNetwork.getCodeSeatId()) && PangleBanner.this.f32518e != null) {
                        PAGBannerAd.loadAd(((BaseAd) PangleBanner.this).mNetwork.getCodeSeatId(), PangleBanner.this.f32521h, PangleBanner.this.f32518e);
                        return;
                    }
                    PangleBanner.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }

    @Override
    public void show(WrapTadView wrapTadView, String str, String str2) {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "showBanner");
        if (this.f32517d == null || wrapTadView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.PANGLE_TAG, "showBanner show error,adView is null");
            return;
        }
        logTrigerShow(str, str2);
        wrapTadView.removeAllViews();
        wrapTadView.addView(this.f32517d);
        ViewGroup.LayoutParams layoutParams = this.f32517d.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
            this.f32517d.setLayoutParams(layoutParams);
        }
        this.f32517d.setVisibility(0);
    }

    @Override
    protected void showBanner() {
    }
}
