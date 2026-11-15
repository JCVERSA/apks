package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;

public abstract class WT {
    public static AdError A00(V1 v1) {
        if (v1.A03().isPublicError()) {
            return new AdError(v1.A03().getErrorCode(), v1.A04());
        }
        return new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }
}
