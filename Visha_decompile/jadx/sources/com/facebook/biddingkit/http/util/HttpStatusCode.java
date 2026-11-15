package com.facebook.biddingkit.http.util;

import com.hunantv.media.drm.IDrmSession;

public enum HttpStatusCode {
    SUCCESS(200),
    NO_BID(IDrmSession.ERROR_SESSION_DRM_NULL),
    BAD_REQUEST(400),
    TIMEOUT(504),
    UNKNOWN(-1);

    private int mStatusCode;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode = iArr;
            try {
                iArr[HttpStatusCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[HttpStatusCode.NO_BID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[HttpStatusCode.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[HttpStatusCode.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    HttpStatusCode(int i) {
        this.mStatusCode = i;
    }

    public static HttpStatusCode getValue(int i) {
        for (HttpStatusCode httpStatusCode : values()) {
            if (httpStatusCode.mStatusCode == i) {
                return httpStatusCode;
            }
        }
        return UNKNOWN;
    }

    public String getErrorMessage() {
        int i = AnonymousClass1.$SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode[ordinal()];
        if (i == 1) {
            return "";
        }
        if (i == 2) {
            return "No bid";
        }
        if (i != 3) {
            return i != 4 ? "Unknown error" : "Server timeout";
        }
        return "Invalid request";
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }
}
