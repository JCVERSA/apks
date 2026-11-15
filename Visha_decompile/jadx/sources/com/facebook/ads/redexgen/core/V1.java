package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;

public final class V1 {
    public final AdErrorType A00;
    public final String A01;

    public V1(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public V1(AdErrorType adErrorType, String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.A00 = adErrorType;
        this.A01 = str;
    }

    public static V1 A00(AdErrorType adErrorType) {
        return new V1(adErrorType, (String) null);
    }

    public static V1 A01(AdErrorType adErrorType, String str) {
        return new V1(adErrorType, str);
    }

    public static V1 A02(V2 v2) {
        return new V1(v2.A00(), v2.A01());
    }

    public final AdErrorType A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }
}
