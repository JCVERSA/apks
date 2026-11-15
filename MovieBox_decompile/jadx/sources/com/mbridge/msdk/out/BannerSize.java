package com.mbridge.msdk.out;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.k0;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class BannerSize {
    public static final int DEV_SET_TYPE = 5;
    public static final int LARGE_TYPE = 1;
    public static final int MEDIUM_TYPE = 2;
    public static final int SMART_TYPE = 3;
    public static final int STANDARD_TYPE = 4;
    private int height;
    private int width;

    public BannerSize(int i10, int i11, int i12) {
        if (i10 == 1) {
            this.height = 90;
            this.width = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
            return;
        }
        if (i10 == 2) {
            this.height = 250;
            this.width = 300;
            return;
        }
        if (i10 == 3) {
            setSmartMode();
            return;
        }
        if (i10 == 4) {
            this.height = 50;
            this.width = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else {
            if (i10 != 5) {
                return;
            }
            this.height = i12;
            this.width = i11;
        }
    }

    private void setSmartMode() {
        if (k0.m(c.m().d()) < 720) {
            this.height = 50;
            this.width = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else {
            this.height = 90;
            this.width = 728;
        }
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }
}
