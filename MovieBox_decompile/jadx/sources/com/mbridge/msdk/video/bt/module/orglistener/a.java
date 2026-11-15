package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;

public class a implements InterVideoOutListener {

    private g f38114a;

    private String f38115b;

    private boolean f38116c;

    public a(g gVar, String str, boolean z10) {
        this.f38114a = gVar;
        this.f38115b = str;
        this.f38116c = z10;
    }

    @Override
    public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onAdClose(mBridgeIds, rewardInfo);
        }
    }

    @Override
    public void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
    }

    @Override
    public void onAdShow(MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onAdShow(mBridgeIds);
        }
    }

    @Override
    public void onEndcardShow(MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onEndcardShow(mBridgeIds);
        }
    }

    @Override
    public void onLoadSuccess(MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onLoadSuccess(mBridgeIds);
        }
    }

    @Override
    public void onShowFail(com.mbridge.msdk.foundation.same.report.metrics.c cVar, MBridgeIds mBridgeIds, String str) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onShowFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoAdClicked(boolean z10, MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override
    public void onVideoComplete(MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onVideoComplete(mBridgeIds);
        }
    }

    @Override
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onVideoLoadFail(mBridgeIds, str);
        }
    }

    @Override
    public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        g gVar = this.f38114a;
        if (gVar != null) {
            gVar.onVideoLoadSuccess(mBridgeIds);
        }
    }

    public a(g gVar) {
        this.f38115b = "";
        this.f38114a = gVar;
    }
}
