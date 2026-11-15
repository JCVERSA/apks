package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public final class C1840gj extends AbstractC1116Nq implements S2SRewardedVideoAdExtendedListener {
    public static byte[] A02;
    public final C1853gw A00;
    public final C1843gm A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-57, -52, -46, -35, -61, -48, -48, -51, -48, -35, -63, -51, -62, -61, -35, -55, -61, -41, -73, -68, -62, -51, -64, -60, -51, -60, -73, -78, -77, -67, -51, -78, -61, -64, -81, -62, -73, -67, -68, -51, -71, -77, -57, 114, 117, 116, 109, -123, 111, 116, 124, 103, 114, 111, 106, 103, 122, 111, 117, 116, -123, 122, 111, 115, 107, -123, 113, 107, 127, -107, -106, -108, -95, -121, -108, -108, -111, -108, -95, SocketData.CLAZZ_TYPE_URI, -121, -107, -107, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -119, -121, -95, SocketData.CLAZZ_TYPE_ERROR_CODE, -121, -101};
    }

    public C1840gj(String str, InterfaceC1118Ns interfaceC1118Ns, C1853gw c1853gw, C1843gm c1843gm) {
        super(str, interfaceC1118Ns);
        this.A00 = c1853gw;
        this.A01 = c1843gm;
    }

    @Override
    public final void onAdClicked(Ad ad) {
        super.A00.AED(2104, super.A01, null);
    }

    @Override
    public final void onAdLoaded(Ad ad) {
        Bundle bundle = new Bundle();
        bundle.putLong(A00(43, 26, 34), this.A00.A0F());
        bundle.putInt(A00(18, 25, 106), this.A01.A00);
        super.A00.AED(2100, super.A01, bundle);
    }

    @Override
    public final void onError(Ad ad, AdError adError) {
        Bundle bundle = new Bundle();
        bundle.putString(A00(69, 21, 62), adError.getErrorMessage());
        bundle.putInt(A00(0, 18, 122), adError.getErrorCode());
        super.A00.AED(2103, super.A01, bundle);
    }

    @Override
    public final void onLoggingImpression(Ad ad) {
        super.A00.AED(2105, super.A01, null);
    }

    @Override
    public final void onRewardServerFailed() {
        super.A00.AED(3002, super.A01, null);
    }

    @Override
    public final void onRewardServerSuccess() {
        super.A00.AED(3001, super.A01, null);
    }

    @Override
    public final void onRewardedVideoActivityDestroyed() {
        super.A00.AED(2106, super.A01, null);
    }

    @Override
    public final void onRewardedVideoClosed() {
        super.A00.AED(2110, super.A01, null);
    }

    @Override
    public final void onRewardedVideoCompleted() {
        super.A00.AED(3000, super.A01, null);
    }
}
