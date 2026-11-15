package com.hisavana.pangle.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

public class PangleInterstitial extends BaseInterstitial {

    private PAGInterstitialAdLoadListener f32526d;

    private PAGInterstitialAdInteractionListener f32527e;

    private boolean f32528f;

    private PAGInterstitialAd f32529g;

    public PangleInterstitial(Context context, Network network) {
        super(context, network);
        this.f32528f = false;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.f32529g = null;
        this.f32526d = null;
        this.f32527e = null;
        this.f32528f = false;
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected void initInterstitial() {
        this.f32526d = new PAGInterstitialAdLoadListener() {
            @Override
            public void onError(int i10, String str) {
                PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to load ad with error code：" + i10 + "，message: " + str);
            }

            @Override
            public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
                if (pAGInterstitialAd == null) {
                    return;
                }
                PangleInterstitial.this.f32529g = pAGInterstitialAd;
                if (PangleInterstitial.this.f32527e != null) {
                    PangleInterstitial.this.f32529g.setAdInteractionListener(PangleInterstitial.this.f32527e);
                    try {
                        double d10 = Double.parseDouble(PangleInterstitial.this.f32529g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d10 > 0.0d) {
                            PangleInterstitial.this.setEcpmPrice(d10 * 100.0d);
                        }
                    } catch (Exception e10) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e10));
                    }
                    PangleInterstitial.this.adLoaded();
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
                }
            }
        };
        this.f32527e = new PAGInterstitialAdInteractionListener() {
            @Override
            public void onAdClicked() {
                PangleInterstitial.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
            }

            @Override
            public void onAdDismissed() {
                PangleInterstitial.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
            }

            @Override
            public void onAdShowed() {
                PangleInterstitial.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
            }
        };
    }

    @Override
    public boolean getIsAdLoaded() {
        return this.f32528f;
    }

    @Override
    protected void onInterstitialShow(Activity activity) {
        PAGInterstitialAd pAGInterstitialAd = this.f32529g;
        if (pAGInterstitialAd != null && activity != null) {
            pAGInterstitialAd.show(activity);
        } else {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Pangle Ads failed to show"));
            AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to show");
        }
    }

    @Override
    protected void onInterstitialStartLoad() {
        Network network = this.mNetwork;
        if (network == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            ExistsCheck.initAdSource(network.getApplicationId(), new PAGSdk.PAGInitCallback() {
                @Override
                public void fail(int i10, String str) {
                    PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i10 + "，message：" + str);
                }

                @Override
                public void success() {
                    if (((BaseAd) PangleInterstitial.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleInterstitial.this).mNetwork.getCodeSeatId()) && PangleInterstitial.this.f32526d != null) {
                        PAGInterstitialAd.loadAd(((BaseAd) PangleInterstitial.this).mNetwork.getCodeSeatId(), new PAGInterstitialRequest(), PangleInterstitial.this.f32526d);
                        PangleInterstitial.this.f32528f = true;
                        return;
                    }
                    PangleInterstitial.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }
}
