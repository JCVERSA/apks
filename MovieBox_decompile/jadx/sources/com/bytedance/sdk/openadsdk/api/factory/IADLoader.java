package com.bytedance.sdk.openadsdk.api.factory;

import com.bytedance.sdk.openadsdk.api.PAGRequest;
import com.bytedance.sdk.openadsdk.common.vS;

public interface IADLoader<R extends PAGRequest, L extends vS> {
    void loadAd(String str, R r10, L l10);
}
