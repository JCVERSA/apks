package com.mbridge.msdk.newinterstitial.out;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.util.a;

public abstract class NewInterstitialWithCodeListener implements NewInterstitialListener {
    @Override
    public void onResourceLoadFail(MBridgeIds mBridgeIds, String str) {
        onResourceLoadFailWithCode(mBridgeIds, a.a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onResourceLoadFailWithCode(MBridgeIds mBridgeIds, int i10, String str);

    @Override
    public void onShowFail(MBridgeIds mBridgeIds, String str) {
        onShowFailWithCode(mBridgeIds, a.b(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, str), str);
    }

    public abstract void onShowFailWithCode(MBridgeIds mBridgeIds, int i10, String str);
}
