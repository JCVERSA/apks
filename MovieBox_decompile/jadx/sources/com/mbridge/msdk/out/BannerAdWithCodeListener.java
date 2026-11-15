package com.mbridge.msdk.out;

public abstract class BannerAdWithCodeListener implements BannerAdListener {
    @Override
    public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(2000, str), str);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i10, String str);
}
