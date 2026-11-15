package com.bytedance.sdk.openadsdk.api.banner;

import com.bytedance.sdk.openadsdk.api.PAGRequest;

public class PAGBannerRequest extends PAGRequest {
    private PAGBannerSize Sj;

    public PAGBannerRequest(PAGBannerSize pAGBannerSize) {
        this.Sj = pAGBannerSize;
    }

    public PAGBannerSize getAdSize() {
        return this.Sj;
    }

    public void setAdSize(PAGBannerSize pAGBannerSize) {
        this.Sj = pAGBannerSize;
    }
}
