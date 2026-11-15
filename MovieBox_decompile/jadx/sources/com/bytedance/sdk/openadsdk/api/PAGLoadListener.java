package com.bytedance.sdk.openadsdk.api;

import com.bytedance.sdk.openadsdk.common.vS;

public interface PAGLoadListener<Ad> extends vS {
    void onAdLoaded(Ad ad2);

    @Override
    void onError(int i10, String str);
}
