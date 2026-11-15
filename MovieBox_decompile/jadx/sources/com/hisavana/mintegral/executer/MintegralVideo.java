package com.hisavana.mintegral.executer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.out.MBBidRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.out.RewardVideoListener;
import com.transsion.push.PushConstants;

public class MintegralVideo extends BaseVideo {

    private boolean f32504d;

    private MBBidRewardVideoHandler f32505e;

    private RewardVideoListener f32506f;

    public MintegralVideo(Context context, Network network) {
        super(context, network);
        this.f32504d = false;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.f32505e = null;
        this.f32506f = null;
        this.f32504d = false;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected void initVideo() {
        this.f32506f = new RewardVideoListener() {
            @Override
            public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClose，rewardInfo.isCompleteView()：" + rewardInfo.isCompleteView());
                if (rewardInfo.isCompleteView()) {
                    MintegralVideo.this.onReward();
                }
                MintegralVideo.this.adClosed();
            }

            @Override
            public void onAdShow(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShow");
            }

            @Override
            public void onEndcardShow(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onEndcardShow");
            }

            @Override
            public void onLoadSuccess(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoadSuccess");
            }

            @Override
            public void onShowFail(MBridgeIds mBridgeIds, String str) {
                MintegralVideo.this.onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFailed");
            }

            @Override
            public void onVideoAdClicked(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoAdClicked");
            }

            @Override
            public void onVideoComplete(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onVideoComplete");
            }

            @Override
            public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
                MintegralVideo.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads failed to load ad with message：" + str);
            }

            @Override
            public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
                MintegralVideo.this.adLoaded();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onVideoLoadSuccess");
            }
        };
    }

    @Override
    public boolean isLoaded() {
        return this.f32504d;
    }

    @Override
    protected void onVideoShow(Activity activity) {
        MBBidRewardVideoHandler mBBidRewardVideoHandler = this.f32505e;
        if (mBBidRewardVideoHandler != null && mBBidRewardVideoHandler.isBidReady()) {
            this.f32505e.showFromBid();
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintergral Ads failed to show");
        }
    }

    @Override
    protected void onVideoStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f32506f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBBidRewardVideoHandler mBBidRewardVideoHandler = new MBBidRewardVideoHandler(e.a(), "", this.mNetwork.getCodeSeatId());
                this.f32505e = mBBidRewardVideoHandler;
                mBBidRewardVideoHandler.setRewardVideoListener(this.f32506f);
                this.f32505e.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                this.f32505e.playVideoMute(AdMuteStatus.MUTE_ALL ? 1 : 2);
                this.f32504d = true;
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with params empty"));
    }
}
