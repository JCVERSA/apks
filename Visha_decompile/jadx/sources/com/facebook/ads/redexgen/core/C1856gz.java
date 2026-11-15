package com.facebook.ads.redexgen.core;

import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.EnumSet;

public final class C1856gz implements InterfaceC1102Nc {
    public static byte[] A09;
    public static final String A0A;
    public long A00 = -1;
    public InterstitialAd A01;
    public AbstractC1088Mo A02;
    public C07006y A03;
    public boolean A04;
    public boolean A05;
    public final C1635dL A06;
    public final InterstitialAdExtendedListener A07;
    public final C1852gv A08;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A09 = new byte[]{-88, -43, -121, -56, -53, -121, -45, -42, -56, -53, -121, -48, -38, -121, -56, -45, -39, -52, -56, -53, -32, -121, -48, -43, -121, -41, -39, -42, -50, -39, -52, -38, -38, -107, -121, -64, -42, -36, -121, -38, -49, -42, -36, -45, -53, -121, -34, -56, -48, -37, -121, -51, -42, -39, -121, -56, -53, -77, -42, -56, -53, -52, -53, SocketData.CLAZZ_TYPE_URI, -112, -121, -37, -42, -121, -55, -52, -121, -54, -56, -45, -45, -52, -53, -103, -66, -60, -75, -62, -61, -60, -71, -60, -71, -79, -68, 112, -68, -65, -79, -76, 112, -77, -79, -68, -68, -75, -76, 112, -57, -72, -71, -68, -75, 112, -61, -72, -65, -57, -71, -66, -73, 112, -71, -66, -60, -75, -62, -61, -60, -71, -60, -71, -79, -68, 126, -33, -18, -25};
    }

    static {
        A0A();
        A0A = C1856gz.class.getSimpleName();
    }

    public C1856gz(C1852gv c1852gv, InterfaceC1118Ns interfaceC1118Ns, String str) {
        this.A08 = c1852gv;
        this.A06 = c1852gv.A05();
        this.A07 = new C1841gk(str, interfaceC1118Ns, this);
    }

    public final long A0D() {
        if (this.A03 != null) {
            return this.A03.A0G();
        }
        return -1L;
    }

    public final C1852gv A0E() {
        return this.A08;
    }

    public final C1635dL A0F() {
        return this.A06;
    }

    public final void A0G(EnumSet<CacheFlag> cacheFlags, String str) {
        String strA02;
        this.A00 = System.currentTimeMillis();
        if (!this.A05 && this.A03 != null) {
            Log.w(A0A, A09(0, 78, 45));
        }
        this.A05 = false;
        if (this.A04 && !U7.A0i(this.A06)) {
            this.A06.A08().AAy(A09(130, 3, 68), AbstractC1248Sv.A0L, new C1249Sw(A09(78, 52, 22)));
            AdErrorType adErrorType = AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD;
            this.A06.A0F().A3F(XG.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
            this.A07.onError(this.A08.A6c(), new AdError(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage()));
            return;
        }
        if (this.A03 != null) {
            this.A03.A0S(new C1866hA(this));
            this.A03.A0N();
            this.A03.A0K();
            this.A03 = null;
        }
        NT nt = new NT(this.A08.A0A(), V8.A00(this.A06.getResources().getDisplayMetrics()), AdPlacementType.INTERSTITIAL, V4.A08, 1, cacheFlags, this.A08.A06());
        if (U7.A2Y(this.A06) && (strA02 = WR.A02(this.A06, this.A08.A08())) != null) {
            this.A08.A0I(strA02);
        }
        nt.A06(this.A08.A08());
        nt.A07(this.A08.A09());
        nt.A04(this.A08.A03());
        this.A03 = new C07006y(this.A06, nt);
        this.A03.A0S(new C1860h4(this));
        this.A03.A0W(str);
    }

    public final boolean A0H() {
        return this.A03 == null || this.A03.A0Z();
    }

    public final boolean A0I() {
        return this.A05;
    }

    public final boolean A0J() {
        AdError adError = AdError.SHOW_CALLED_BEFORE_LOAD_ERROR;
        if (!this.A05) {
            this.A06.A0F().A3F(XG.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A07.onError(this.A08.A6c(), adError);
            return false;
        }
        if (this.A03 == null) {
            this.A06.A08().AAy(A09(130, 3, 68), AbstractC1248Sv.A0S, new C1249Sw(AdErrorType.INTERSTITIAL_CONTROLLER_IS_NULL.getDefaultErrorMessage()));
            this.A06.A0F().A3F(XG.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A07.onError(this.A08.A6c(), adError);
            return false;
        }
        this.A03.A0M();
        this.A04 = true;
        this.A05 = false;
        return true;
    }

    @Override
    public final void destroy() {
        if (this.A03 != null) {
            this.A03.A0S(new C1859h3(this));
            this.A03.A0Y(true);
            this.A03.A0K();
            this.A03 = null;
            this.A05 = false;
            this.A04 = false;
        }
    }
}
