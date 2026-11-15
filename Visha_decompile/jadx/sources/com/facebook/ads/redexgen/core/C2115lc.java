package com.facebook.ads.redexgen.core;

import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;

public final class C2115lc {
    public static byte[] A03;
    public static String[] A04 = {"unLJAGqnT9K2C6pR52hzklfZHwTRg6Yr", "LeSEUls9Myr0akOYyr4ALINYOEymKOkL", "W8GYPv6JCblyMHrg4mb8qhrlE9HlP5p8", "LeDDfwbzgRXTDhaT1cwFWvWAB6ITTWPz", "taf7WKL89SeyG6P6BerDozU5lBYArJ2v", "", "BSTJObkWS6NqTAYjIRk7bCGrxc9Lgut2", "ohz3nwuOVveogY5495fLWWA936p3Bkwf"};
    public static final C0875Eh A05;
    public static final C0875Eh A06;
    public static final C0875Eh A07;
    public static final C0875Eh A08;
    public HandlerC0876Ei<? extends InterfaceC0877Ej> A00;
    public IOException A01;
    public final InterfaceExecutorC0893Ez A02;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A03 = new byte[]{62, 3, 20, 43, 23, 26, 2, 30, 9, 65, 55, 20, 26, 31, 30, 9, 65};
    }

    static {
        A07();
        A07 = A01(false, C.TIME_UNSET);
        A08 = A01(true, C.TIME_UNSET);
        A05 = new C0875Eh(2, C.TIME_UNSET);
        A06 = new C0875Eh(3, C.TIME_UNSET);
    }

    @MetaExoPlayerCustomization(type = {"MERGED"})
    public C2115lc(InterfaceExecutorC0893Ez interfaceExecutorC0893Ez) {
        this.A02 = interfaceExecutorC0893Ez;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"})
    public C2115lc(String str) {
        this(AbstractC0892Ey.A00(AbstractC06244a.A0u(A06(0, 17, 64) + str), new C3X() {
            @Override
            public final void A31(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eg != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.Ej> */
    @MetaExoPlayerCustomization("D14742363 Needed to accept supplied looper for Exo2DashLiveManifestFetcher manifest loading")
    private final <T extends InterfaceC0877Ej> long A00(Looper looper, T t, InterfaceC0874Eg<T> interfaceC0874Eg, int i) {
        C3M.A08(looper != null);
        this.A01 = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC0876Ei(this, looper, t, interfaceC0874Eg, i, jElapsedRealtime).A06(0L);
        return jElapsedRealtime;
    }

    public static C0875Eh A01(boolean z, long j) {
        return new C0875Eh(z ? 1 : 0, j);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eg != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.Ej> */
    public final <T extends InterfaceC0877Ej> long A08(T t, InterfaceC0874Eg<T> interfaceC0874Eg, int i) {
        Looper looper = (Looper) C3M.A02(Looper.myLooper());
        return A00(looper, t, interfaceC0874Eg, i);
    }

    public final void A09() {
        ((HandlerC0876Ei) C3M.A02(this.A00)).A07(false);
    }

    public final void A0A() {
        this.A01 = null;
    }

    public final void A0B(int i) throws IOException {
        if (this.A01 == null) {
            if (this.A00 != null) {
                HandlerC0876Ei<? extends InterfaceC0877Ej> handlerC0876Ei = this.A00;
                if (i == Integer.MIN_VALUE) {
                    HandlerC0876Ei<? extends InterfaceC0877Ej> handlerC0876Ei2 = this.A00;
                    String[] strArr = A04;
                    if (strArr[6].charAt(7) == strArr[1].charAt(7)) {
                        throw new RuntimeException();
                    }
                    A04[2] = "wo2YdO45DQEJfRTdGKzxAcazBLTDj4mX";
                    i = handlerC0876Ei2.A07;
                }
                handlerC0876Ei.A05(i);
                return;
            }
            return;
        }
        throw this.A01;
    }

    public final void A0C(InterfaceC0878Ek interfaceC0878Ek) {
        if (this.A00 != null) {
            HandlerC0876Ei<? extends InterfaceC0877Ej> handlerC0876Ei = this.A00;
            String[] strArr = A04;
            if (strArr[5].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[4] = "XVuhTdSnDMDRP6HltjyP328n9S8al0u6";
            strArr2[0] = "1piWh3nqPhJ4K6qVEs9qRP5dHkNT6n7u";
            handlerC0876Ei.A07(true);
        }
        if (interfaceC0878Ek != null) {
            this.A02.execute(new RunnableC0879El(interfaceC0878Ek));
        }
        this.A02.AGr();
    }

    public final boolean A0D() {
        return this.A01 != null;
    }

    public final boolean A0E() {
        return this.A00 != null;
    }
}
