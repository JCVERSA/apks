package com.mbridge.msdk.out;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

public abstract class RewardVideoWithCodeListener implements RewardVideoListener {
    @Override
    public void onShowFail(MBridgeIds mBridgeIds, String str) {
        onShowFailWithCode(mBridgeIds, com.mbridge.msdk.util.a.b(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onShowFailWithCode(MBridgeIds mBridgeIds, int i10, String str);

    @Override
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        onVideoLoadFailWithCode(mBridgeIds, com.mbridge.msdk.util.a.a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onVideoLoadFailWithCode(MBridgeIds mBridgeIds, int i10, String str);
}
