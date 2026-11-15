package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public final class C1841gk extends AbstractC1116Nq implements InterstitialAdExtendedListener {
    public static byte[] A01;
    public final C1856gz A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-62, -57, -51, -40, -66, -53, -53, -56, -53, -40, -68, -56, -67, -66, -40, -60, -66, -46, 117, 120, 119, 112, -120, 114, 119, 127, 106, 117, 114, 109, 106, 125, 114, 120, 119, -120, 125, 114, 118, 110, -120, 116, 110, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -66, -65, -67, -54, -80, -67, -67, -70, -67, -54, -72, -80, -66, -66, -84, -78, -80, -54, -74, -80, -60};
    }

    public C1841gk(String str, InterfaceC1118Ns interfaceC1118Ns, C1856gz c1856gz) {
        super(str, interfaceC1118Ns);
        this.A00 = c1856gz;
    }

    @Override
    public final void onAdClicked(Ad ad) {
        super.A00.AED(1024, this.A01, null);
    }

    @Override
    public final void onAdLoaded(Ad ad) {
        Bundle bundle = new Bundle();
        bundle.putLong(A00(18, 26, 14), this.A00.A0D());
        super.A00.AED(1020, this.A01, bundle);
    }

    @Override
    public final void onError(Ad ad, AdError adError) {
        Bundle bundle = new Bundle();
        bundle.putString(A00(44, 21, 80), adError.getErrorMessage());
        bundle.putInt(A00(0, 18, 94), adError.getErrorCode());
        super.A00.AED(AnalyticsListener.EVENT_DRM_KEYS_LOADED, this.A01, bundle);
    }

    @Override
    public final void onInterstitialActivityDestroyed() {
        super.A00.AED(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, this.A01, null);
    }

    @Override
    public final void onInterstitialDismissed(Ad ad) {
        super.A00.AED(AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, this.A01, null);
    }

    @Override
    public final void onInterstitialDisplayed(Ad ad) {
        super.A00.AED(1021, this.A01, null);
    }

    @Override
    public final void onLoggingImpression(Ad ad) {
        super.A00.AED(1025, this.A01, null);
    }

    @Override
    public final void onRewardedAdCompleted() {
        super.A00.AED(3000, this.A01, null);
    }

    @Override
    public final void onRewardedAdServerFailed() {
        super.A00.AED(3002, this.A01, null);
    }

    @Override
    public final void onRewardedAdServerSucceeded() {
        super.A00.AED(3001, this.A01, null);
    }
}
