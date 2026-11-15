package com.mbridge.msdk.newinterstitial.listener;

import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;

public class a implements InterVideoOutListener {

    private NewInterstitialListener f35889a;

    private String f35890b;

    private boolean f35891c;

    public a(NewInterstitialListener newInterstitialListener) {
        this.f35889a = newInterstitialListener;
    }

    @Override
    public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdClose(mBridgeIds, rewardInfo);
        }
    }

    @Override
    public void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdCloseWithNIReward(mBridgeIds, rewardInfo);
        }
    }

    @Override
    public void onAdShow(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdShow(mBridgeIds);
        }
    }

    @Override
    public void onEndcardShow(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onEndcardShow(mBridgeIds);
        }
    }

    @Override
    public void onLoadSuccess(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onLoadCampaignSuccess(mBridgeIds);
        }
    }

    @Override
    public void onShowFail(c cVar, MBridgeIds mBridgeIds, String str) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onShowFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoAdClicked(boolean z10, MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdClicked(mBridgeIds);
        }
    }

    @Override
    public void onVideoComplete(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onVideoComplete(mBridgeIds);
        }
    }

    @Override
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onResourceLoadFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.f35889a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onResourceLoadSuccess(mBridgeIds);
        }
    }

    public a(NewInterstitialListener newInterstitialListener, String str, boolean z10) {
        this.f35889a = newInterstitialListener;
        this.f35890b = str;
        this.f35891c = z10;
    }
}
