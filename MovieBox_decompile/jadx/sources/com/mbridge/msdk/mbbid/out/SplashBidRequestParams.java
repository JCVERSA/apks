package com.mbridge.msdk.mbbid.out;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.k0;

public class SplashBidRequestParams extends BannerBidRequestParams {

    private static int f35395g = 1;

    private static int f35396h;

    private static int f35397i;

    private boolean f35398f;

    public SplashBidRequestParams(String str, String str2) {
        this(str, str2, "");
    }

    protected boolean a() {
        return this.f35398f;
    }

    public int getOrientation() {
        return f35395g;
    }

    public SplashBidRequestParams(String str, String str2, String str3) {
        this(str, str2, str3, false, f35395g, f35397i, f35396h);
    }

    private void a(int i10, int i11) {
        int iN = k0.n(c.m().d());
        int iM = k0.m(c.m().d());
        int i12 = f35395g;
        if (i12 == 1) {
            if (iM > i11 * 4) {
                setHeight(iM - i11);
                setWidth(iN);
                return;
            } else {
                setHeight(0);
                setWidth(0);
                return;
            }
        }
        if (i12 == 2) {
            if (iN > i10 * 4) {
                setWidth(iN - i10);
                setHeight(iM);
            } else {
                setHeight(0);
                setWidth(0);
            }
        }
    }

    public SplashBidRequestParams(String str, String str2, boolean z10, int i10, int i11, int i12) {
        this(str, str2, "", z10, i10, i12, i11);
    }

    public SplashBidRequestParams(String str, String str2, String str3, boolean z10, int i10, int i11, int i12) {
        super(str, str2, str3, 0, 0);
        this.f35398f = false;
        f35395g = i10;
        a(i11, i12);
        this.f35398f = z10;
    }
}
