package com.facebook.ads.redexgen.core;

import android.content.Context;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.InitApi;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;

public final class RD implements InitApi {
    @Override
    public final void initialize(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, int i) {
        TK.A0H(RB.A09(context), multithreadedBundleWrapper, initListener, i);
    }

    @Override
    public final boolean isInitialized() {
        return TK.A0I();
    }

    @Override
    public final void onAdLoadInvoked(Context context) {
        TK.A08(RB.A09(context));
    }

    @Override
    public final void onContentProviderCreated(Context context) {
        TK.A09(RB.A09(context));
    }
}
