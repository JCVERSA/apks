package com.bytedance.sdk.openadsdk.api.reward;

public class PAGRewardItem {
    private final int Sj;
    private final String sP;

    public PAGRewardItem(int i10, String str) {
        this.Sj = i10;
        this.sP = str;
    }

    public int getRewardAmount() {
        return this.Sj;
    }

    public String getRewardName() {
        return this.sP;
    }
}
