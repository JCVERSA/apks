package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.util.a;
import java.io.IOException;

public final class AdsMediaSource$AdLoadException extends IOException {
    public static final int TYPE_AD = 0;
    public static final int TYPE_AD_GROUP = 1;
    public static final int TYPE_ALL_ADS = 2;
    public static final int TYPE_UNEXPECTED = 3;
    public final int type;

    private AdsMediaSource$AdLoadException(int i10, Exception exc) {
        super(exc);
        this.type = i10;
    }

    public static AdsMediaSource$AdLoadException createForAd(Exception exc) {
        return new AdsMediaSource$AdLoadException(0, exc);
    }

    public static AdsMediaSource$AdLoadException createForAdGroup(Exception exc, int i10) {
        return new AdsMediaSource$AdLoadException(1, new IOException("Failed to load ad group " + i10, exc));
    }

    public static AdsMediaSource$AdLoadException createForAllAds(Exception exc) {
        return new AdsMediaSource$AdLoadException(2, exc);
    }

    public static AdsMediaSource$AdLoadException createForUnexpected(RuntimeException runtimeException) {
        return new AdsMediaSource$AdLoadException(3, runtimeException);
    }

    public RuntimeException getRuntimeExceptionForUnexpected() {
        a.g(this.type == 3);
        return (RuntimeException) a.e(getCause());
    }
}
