package com.mbridge.msdk.interstitialvideo.listener;

import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.interstitialvideo.out.InterstitialVideoListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;

public class a implements InterVideoOutListener {

    private InterstitialVideoListener f35148a;

    private String f35149b;

    private boolean f35150c;

    public a(InterstitialVideoListener interstitialVideoListener) {
        this.f35148a = interstitialVideoListener;
    }

    @Override
    public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdClose(mBridgeIds, rewardInfo);
        }
    }

    @Override
    public void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdCloseWithIVReward(mBridgeIds, rewardInfo);
        }
    }

    @Override
    public void onAdShow(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdShow(mBridgeIds);
        }
    }

    @Override
    public void onEndcardShow(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onEndcardShow(mBridgeIds);
        }
    }

    @Override
    public void onLoadSuccess(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onLoadSuccess(mBridgeIds);
        }
    }

    @Override
    public void onShowFail(c cVar, MBridgeIds mBridgeIds, String str) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onShowFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoAdClicked(boolean z10, MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override
    public void onVideoComplete(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoComplete(mBridgeIds);
        }
    }

    @Override
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.f35148a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadSuccess(mBridgeIds);
        }
    }

    public a(InterstitialVideoListener interstitialVideoListener, String str, boolean z10) {
        this.f35148a = interstitialVideoListener;
        this.f35149b = str;
        this.f35150c = z10;
    }
}
