package com.bytedance.sdk.openadsdk.api.nativeAd;

public class PAGImageItem {
    private float EjP;
    private final int Sj;
    private final String TKC;
    private final int sP;

    public PAGImageItem(int i10, int i11, String str, float f10) {
        this.Sj = i10;
        this.sP = i11;
        this.TKC = str;
        this.EjP = f10;
    }

    public float getDuration() {
        return this.EjP;
    }

    public int getHeight() {
        return this.Sj;
    }

    public String getImageUrl() {
        return this.TKC;
    }

    public int getWidth() {
        return this.sP;
    }

    public PAGImageItem(int i10, int i11, String str) {
        this(i10, i11, str, 0.0f);
    }
}
