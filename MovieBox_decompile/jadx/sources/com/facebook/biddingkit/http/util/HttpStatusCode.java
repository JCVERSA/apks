package com.facebook.biddingkit.http.util;

import com.vungle.ads.internal.protos.Sdk$SDKError;

public enum HttpStatusCode {
    SUCCESS(200),
    NO_BID(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE),
    BAD_REQUEST(400),
    TIMEOUT(504),
    UNKNOWN(-1);

    private int mStatusCode;

    static class a {

        static final int[] f23448a;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            f23448a = iArr;
            try {
                iArr[HttpStatusCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23448a[HttpStatusCode.NO_BID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23448a[HttpStatusCode.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23448a[HttpStatusCode.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    HttpStatusCode(int i10) {
        this.mStatusCode = i10;
    }

    public static HttpStatusCode getValue(int i10) {
        for (HttpStatusCode httpStatusCode : values()) {
            if (httpStatusCode.mStatusCode == i10) {
                return httpStatusCode;
            }
        }
        return UNKNOWN;
    }

    public String getErrorMessage() {
        int i10 = a.f23448a[ordinal()];
        if (i10 == 1) {
            return "";
        }
        if (i10 == 2) {
            return "No bid";
        }
        if (i10 != 3) {
            return i10 != 4 ? "Unknown error" : "Server timeout";
        }
        return "Invalid request";
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }
}
