package com.facebook.ads.redexgen.core;

import android.os.Process;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

public final class C1238Sl implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final C1609cu A00;
    public final InterfaceC1245Ss A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-79, -51, -102, -74, -64, -64, -74, -69, -76, 109, -112, -68, -69, -63, -78, -59, -63, -102, -90, -92, 101, -99, -104, -102, -100, -103, -90, -90, -94, 101, -104, -101, -86, 2, 17, 0, 18, 7, 7, 9, -10, 8, 13, 4, -7, -20, -18, -37, -19, -14, -23, -34, -40, -36, -24, -35, -34};
    }

    public C1238Sl(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1609cu c1609cu, InterfaceC1237Sk interfaceC1237Sk) {
        this(uncaughtExceptionHandler, c1609cu, interfaceC1237Sk, AbstractC1246St.A00());
    }

    public C1238Sl(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1609cu c1609cu, InterfaceC1237Sk interfaceC1237Sk, InterfaceC1245Ss interfaceC1245Ss) {
        this.A02 = uncaughtExceptionHandler;
        if (c1609cu != null) {
            this.A00 = c1609cu;
            this.A03 = interfaceC1237Sk.A8z(c1609cu);
            this.A01 = interfaceC1245Ss;
            return;
        }
        throw new IllegalArgumentException(A00(2, 15, 29));
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        if (this.A02 != null) {
            this.A02.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA03 = X7.A03(this.A00, th);
            if (!TextUtils.isEmpty(strA03)) {
                String stackTraceString = A00(17, 16, 7);
                if (strA03.contains(stackTraceString)) {
                    Map<String, String> mapA02 = new C1236Sj(strA03, this.A03).A02();
                    String strA00 = A00(38, 7, 100);
                    String stackTraceString2 = A00(33, 5, 111);
                    mapA02.put(strA00, stackTraceString2);
                    Throwable thA00 = AbstractRunnableC1309Vg.A00();
                    String strA01 = A00(45, 12, 73);
                    if (thA00 == th) {
                        String stackTraceString3 = A00(1, 1, 108);
                        mapA02.put(strA01, stackTraceString3);
                    } else {
                        String stackTraceString4 = A00(0, 1, 81);
                        mapA02.put(strA01, stackTraceString4);
                    }
                    this.A01.AKM(new C1252Sz(this.A00.A09().A01(), this.A00.A09().A02(), mapA02), this.A00);
                    if (U7.A24(this.A00)) {
                        U7.A0e(this.A00);
                    }
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
