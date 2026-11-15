package com.mbridge.msdk.mbbid.out;

public class AdvancedNativeBidRequestParams extends CommonBidRequestParams {

    private int f35385d;

    private int f35386e;

    public AdvancedNativeBidRequestParams(String str, String str2, int i10, int i11) {
        super(str, str2);
        this.f35385d = i11;
        this.f35386e = i10;
    }

    public int getHeight() {
        return this.f35385d;
    }

    public int getWidth() {
        return this.f35386e;
    }

    public void setHeight(int i10) {
        this.f35385d = i10;
    }

    public void setWidth(int i10) {
        this.f35386e = i10;
    }

    public AdvancedNativeBidRequestParams(String str, String str2, String str3, int i10, int i11) {
        super(str, str2, str3);
        this.f35385d = i11;
        this.f35386e = i10;
    }
}
