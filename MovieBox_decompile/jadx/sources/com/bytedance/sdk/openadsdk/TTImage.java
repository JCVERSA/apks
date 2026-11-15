package com.bytedance.sdk.openadsdk;

public class TTImage {
    private double EjP;
    private final int Sj;
    private final String TKC;
    private final int sP;

    public TTImage(int i10, int i11, String str, double d10) {
        this.Sj = i10;
        this.sP = i11;
        this.TKC = str;
        this.EjP = d10;
    }

    public double getDuration() {
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

    public boolean isValid() {
        String str;
        return this.Sj > 0 && this.sP > 0 && (str = this.TKC) != null && str.length() > 0;
    }

    public TTImage(int i10, int i11, String str) {
        this(i10, i11, str, 0.0d);
    }
}
