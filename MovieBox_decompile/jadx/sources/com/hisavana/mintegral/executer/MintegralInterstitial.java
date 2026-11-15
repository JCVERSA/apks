package com.hisavana.mintegral.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.newinterstitial.out.MBBidNewInterstitialHandler;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.transsion.push.PushConstants;

public class MintegralInterstitial extends BaseInterstitial {

    private boolean f32488d;

    private MBBidNewInterstitialHandler f32489e;

    private NewInterstitialListener f32490f;

    public MintegralInterstitial(Context context, Network network) {
        super(context, network);
        this.f32488d = false;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.f32489e = null;
        this.f32490f = null;
        this.f32488d = false;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected void initInterstitial() {
        this.f32490f = new NewInterstitialListener() {
            @Override
            public void onAdClicked(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClicked");
            }

            @Override
            public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                MintegralInterstitial.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClose");
            }

            @Override
            public void onAdCloseWithNIReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdCloseWithNIReward: " + mBridgeIds.toString() + "  " + rewardInfo.toString());
            }

            @Override
            public void onAdShow(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShow");
            }

            @Override
            public void onEndcardShow(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onEndcardShow");
            }

            @Override
            public void onLoadCampaignSuccess(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onLoadCampaignSuccess");
            }

            @Override
            public void onResourceLoadFail(MBridgeIds mBridgeIds, String str) {
                MintegralInterstitial.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onResourceLoadFail");
            }

            @Override
            public void onResourceLoadSuccess(MBridgeIds mBridgeIds) {
                MintegralInterstitial.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onResourceLoadSuccess");
            }

            @Override
            public void onShowFail(MBridgeIds mBridgeIds, String str) {
                MintegralInterstitial.this.onAdShowError(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFail");
            }

            @Override
            public void onVideoComplete(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoComplete");
            }
        };
    }

    @Override
    public boolean isLoaded() {
        return this.f32488d;
    }

    @Override
    protected void onInterstitialShow(Activity activity) {
        MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.f32489e;
        if (mBBidNewInterstitialHandler != null && mBBidNewInterstitialHandler.isBidReady()) {
            this.f32489e.showFromBid();
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads failed to show");
        }
    }

    @Override
    protected void onInterstitialStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f32490f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = new MBBidNewInterstitialHandler(e.a(), "", this.mNetwork.getCodeSeatId());
                this.f32489e = mBBidNewInterstitialHandler;
                mBBidNewInterstitialHandler.setInterstitialVideoListener(this.f32490f);
                this.f32488d = true;
                this.f32489e.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                this.f32489e.playVideoMute(AdMuteStatus.MUTE_ALL ? 1 : 2);
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty "));
    }
}
