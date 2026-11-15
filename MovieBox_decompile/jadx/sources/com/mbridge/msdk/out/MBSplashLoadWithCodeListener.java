package com.mbridge.msdk.out;

public abstract class MBSplashLoadWithCodeListener implements MBSplashLoadListener {
    @Override
    public void onLoadFailed(MBridgeIds mBridgeIds, String str, int i10) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(5000, str), str, i10);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i10, String str, int i11);
}
