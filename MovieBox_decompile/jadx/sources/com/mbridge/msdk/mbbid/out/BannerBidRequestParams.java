package com.mbridge.msdk.mbbid.out;

public class BannerBidRequestParams extends CommonBidRequestParams {

    private int f35387d;

    private int f35388e;

    public BannerBidRequestParams(String str, String str2, int i10, int i11) {
        super(str, str2);
        this.f35387d = i11;
        this.f35388e = i10;
    }

    public int getHeight() {
        return this.f35387d;
    }

    public int getWidth() {
        return this.f35388e;
    }

    public void setHeight(int i10) {
        this.f35387d = i10;
    }

    public void setWidth(int i10) {
        this.f35388e = i10;
    }

    public BannerBidRequestParams(String str, String str2, String str3, int i10, int i11) {
        super(str, str2, str3);
        this.f35387d = i11;
        this.f35388e = i10;
    }
}
