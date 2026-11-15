package com.bytedance.sdk.openadsdk.api.open;

import com.bytedance.sdk.openadsdk.api.PAGRequest;

public class PAGAppOpenRequest extends PAGRequest {
    private int Sj;

    public int getTimeout() {
        return this.Sj;
    }

    public void setTimeout(int i10) {
        this.Sj = i10;
    }
}
