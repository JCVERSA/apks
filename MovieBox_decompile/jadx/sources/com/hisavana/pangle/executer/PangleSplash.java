package com.hisavana.pangle.executer;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.m;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

public class PangleSplash extends BaseSplash {

    private PAGAppOpenAdLoadListener f32540d;

    private PAGAppOpenAdInteractionListener f32541e;

    private PAGAppOpenAd f32542f;

    public PangleSplash(Context context, Network network) {
        super(context, network);
        this.f32540d = new PAGAppOpenAdLoadListener() {
            @Override
            public void onError(int i10, String str) {
                PangleSplash.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onError code " + i10 + "，message：" + str);
            }

            @Override
            public void onAdLoaded(PAGAppOpenAd pAGAppOpenAd) {
                PangleSplash.this.f32542f = pAGAppOpenAd;
                if (PangleSplash.this.f32541e != null && PangleSplash.this.f32542f != null) {
                    PangleSplash.this.f32542f.setAdInteractionListener(PangleSplash.this.f32541e);
                    try {
                        double d10 = Double.parseDouble(pAGAppOpenAd.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d10 > 0.0d) {
                            AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle onAdLoad，price" + d10);
                            PangleSplash.this.setEcpmPrice(d10 * 100.0d);
                        }
                    } catch (Exception e10) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e10));
                    }
                }
                PangleSplash.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
            }
        };
        this.f32541e = new PAGAppOpenAdInteractionListener() {
            @Override
            public void onAdClicked() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
                PangleSplash.this.adClicked(null);
            }

            @Override
            public void onAdDismissed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
                PangleSplash.this.adClosed();
            }

            @Override
            public void onAdShowed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
                PangleSplash.this.adImpression(null);
            }
        };
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected View getSplash() {
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onSplashLoad");
        if (e.a() != null) {
            return new View(e.a().getApplicationContext());
        }
        return null;
    }

    @Override
    protected void onSplashShow() {
        if (this.f32542f != null && m.h() != null) {
            this.f32542f.show(m.h());
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.PANGLE_TAG, "onSplashShow show error,ad is null or no main activity");
        }
    }

    @Override
    protected void onSplashStartLoad() {
        if (this.mNetwork == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            ExistsCheck.initAdSource(this.mNetwork.getApplicationId(), new PAGSdk.PAGInitCallback() {
                @Override
                public void fail(int i10, String str) {
                    PangleSplash.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i10 + "，message：" + str);
                }

                @Override
                public void success() {
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init time " + jCurrentTimeMillis2);
                    if (((BaseAd) PangleSplash.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleSplash.this).mNetwork.getCodeSeatId()) && PangleSplash.this.f32540d != null) {
                        PAGAppOpenAd.loadAd(((BaseAd) PangleSplash.this).mNetwork.getCodeSeatId(), new PAGAppOpenRequest(), PangleSplash.this.f32540d);
                        return;
                    }
                    PangleSplash.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }
}
