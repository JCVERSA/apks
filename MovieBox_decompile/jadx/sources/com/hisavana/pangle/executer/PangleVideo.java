package com.hisavana.pangle.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

public class PangleVideo extends BaseVideo {

    private PAGRewardedAdLoadListener f32547d;

    private PAGRewardedAdInteractionListener f32548e;

    private boolean f32549f;

    private PAGRewardedAd f32550g;

    public PangleVideo(Context context, Network network) {
        super(context, network);
        this.f32549f = false;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.f32547d = null;
        this.f32548e = null;
        this.f32550g = null;
        this.f32549f = false;
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected void initVideo() {
        this.f32547d = new PAGRewardedAdLoadListener() {
            @Override
            public void onError(int i10, String str) {
                PangleVideo.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to load ad with error code：" + i10 + "message: " + str);
            }

            @Override
            public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
                PangleVideo.this.f32550g = pAGRewardedAd;
                if (PangleVideo.this.f32550g != null && PangleVideo.this.f32548e != null) {
                    PangleVideo.this.f32550g.setAdInteractionListener(PangleVideo.this.f32548e);
                    try {
                        double d10 = Double.parseDouble(PangleVideo.this.f32550g.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                        if (d10 > 0.0d) {
                            PangleVideo.this.setEcpmPrice(d10 * 100.0d);
                        }
                    } catch (Exception e10) {
                        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, Log.getStackTraceString(e10));
                    }
                }
                PangleVideo.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
            }
        };
        this.f32548e = new PAGRewardedAdInteractionListener() {
            @Override
            public void onAdClicked() {
                PangleVideo.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
            }

            @Override
            public void onAdDismissed() {
                PangleVideo.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
            }

            @Override
            public void onAdShowed() {
                PangleVideo.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
            }

            @Override
            public void onUserEarnedReward(PAGRewardItem pAGRewardItem) {
                PangleVideo.this.onReward();
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onUserEarnedReward");
            }

            @Override
            public void onUserEarnedRewardFail(int i10, String str) {
            }
        };
    }

    @Override
    public boolean getIsAdLoaded() {
        return this.f32549f;
    }

    @Override
    protected void onVideoShow(Activity activity) {
        PAGRewardedAd pAGRewardedAd = this.f32550g;
        if (pAGRewardedAd != null && activity != null) {
            pAGRewardedAd.show(activity);
        } else {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Pangle Ads failed to show,activity or pageRewardedAd is null"));
            AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to show,activity or pageRewardedAd is null");
        }
    }

    @Override
    protected void onVideoStartLoad() {
        Network network = this.mNetwork;
        if (network == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            ExistsCheck.initAdSource(network.getApplicationId(), new PAGSdk.PAGInitCallback() {
                @Override
                public void fail(int i10, String str) {
                    PangleVideo.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i10 + "，message" + str);
                }

                @Override
                public void success() {
                    if (((BaseAd) PangleVideo.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleVideo.this).mNetwork.getCodeSeatId()) && PangleVideo.this.f32547d != null) {
                        PAGRewardedAd.loadAd(((BaseAd) PangleVideo.this).mNetwork.getCodeSeatId(), new PAGRewardedRequest(), PangleVideo.this.f32547d);
                        PangleVideo.this.f32549f = true;
                        return;
                    }
                    PangleVideo.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }
}
