package com.mbridge.msdk.video.dynview.error;

public enum a {
    NOT_FOUND_VIEWOPTION(-1, "ViewOption is null"),
    NOT_FOUND_CONTEXT(-2, "Context is null"),
    NOT_FOUND_LAYOUTNAME(-3, "layout xml name is null"),
    CAMPAIGNEX_IS_NULL(-4, "Campaign size only one"),
    VIEW_CREATE_ERROR(-5, "view create error"),
    NOT_FOUND_ROOTVIEW(-6, "rootview is null");


    private int f38187a;

    private String f38188b;

    a(int i10, String str) {
        this.f38187a = i10;
        this.f38188b = str;
    }

    public int b() {
        return this.f38187a;
    }

    public String c() {
        return this.f38188b;
    }
}
