package com.facebook.ads.redexgen.core;

import java.util.Comparator;

public class C1193Qr implements Comparator<Thread> {
    public static String[] A02 = {"I2VmByDixuV", "bEgjeHiCKL8bN0Y2xmhvt", "Ep8bZoaW9qgdmenOEM", "U1x4f2Mle4YpVecP", "6pFKFCdnQFQQrPpkBrBSvGNPTjtJIqqH", "uR6rFONyTXbT3WTsrhnl74", "HWYTd9Yr1UQKCKQrjsxmT8cIIu2", "gbeo1KbNmS02dvrZyrXpgnCOAkkwIw0y"};
    public final C1194Qs A00;
    public final Thread A01;

    public C1193Qr(C1194Qs c1194Qs, Thread thread) {
        this.A00 = c1194Qs;
        this.A01 = thread;
    }

    @Override
    public final int compare(Thread thread, Thread thread2) {
        if (thread != thread2) {
            if (thread == this.A01) {
                return -1;
            }
            if (thread2 == this.A01) {
                return 1;
            }
            return thread2.getName().compareTo(thread.getName());
        }
        String[] strArr = A02;
        if (strArr[2].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        A02[6] = "KlossopSTK0WgZ36dTrk3tViYspVBMBU";
        return 0;
    }
}
