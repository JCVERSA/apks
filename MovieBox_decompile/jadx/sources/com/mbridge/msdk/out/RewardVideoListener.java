package com.mbridge.msdk.out;

import com.mbridge.msdk.video.bt.module.orglistener.g;

public interface RewardVideoListener extends g {
    @Override
    void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo);

    @Override
    void onAdShow(MBridgeIds mBridgeIds);

    @Override
    void onEndcardShow(MBridgeIds mBridgeIds);

    @Override
    void onLoadSuccess(MBridgeIds mBridgeIds);

    @Override
    void onShowFail(MBridgeIds mBridgeIds, String str);

    @Override
    void onVideoAdClicked(MBridgeIds mBridgeIds);

    @Override
    void onVideoComplete(MBridgeIds mBridgeIds);

    @Override
    void onVideoLoadFail(MBridgeIds mBridgeIds, String str);

    @Override
    void onVideoLoadSuccess(MBridgeIds mBridgeIds);
}
