package com.mbridge.msdk.out;

public abstract class NativeAdvancedAdWithCodeListener implements NativeAdvancedAdListener {
    @Override
    public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
        onLoadFailedWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(6000, str), str);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i10, String str);
}
