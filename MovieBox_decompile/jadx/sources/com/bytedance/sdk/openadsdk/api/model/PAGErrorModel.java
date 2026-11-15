package com.bytedance.sdk.openadsdk.api.model;

public class PAGErrorModel {
    private final int Sj;
    private final String sP;

    public PAGErrorModel(int i10, String str) {
        this.Sj = i10;
        this.sP = str;
    }

    public int getErrorCode() {
        return this.Sj;
    }

    public String getErrorMessage() {
        return this.sP;
    }
}
