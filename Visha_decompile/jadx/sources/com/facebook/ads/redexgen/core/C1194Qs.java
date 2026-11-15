package com.facebook.ads.redexgen.core;

import android.os.Looper;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

public final class C1194Qs {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{17, 32, 47, 51, 65, 5, 4, 21, 4, 2, 21, 4, 5, 91, 117, 121, 123, 56, 112, 119, 117, 115, 116, 121, 121, 125, 56, 119, 114, 101};
    }

    private String A00() {
        Thread mainThread = Looper.getMainLooper().getThread();
        for (StackTraceElement element : mainThread.getStackTrace()) {
            if (element.getClassName().startsWith(A01(14, 16, 17))) {
                return element.toString();
            }
        }
        return null;
    }

    private Map<Thread, StackTraceElement[]> A02() {
        Map<Thread, StackTraceElement[]> stackTraces = new TreeMap<>(new C1193Qr(this, Looper.getMainLooper().getThread()));
        stackTraces.putAll(Thread.getAllStackTraces());
        return stackTraces;
    }

    public final String A04() {
        StringBuilder sb = new StringBuilder();
        sb.append(A01(1, 13, 102));
        sb.append(A00());
        String strA01 = A01(0, 1, 28);
        sb.append(strA01);
        for (Map.Entry<Thread, StackTraceElement[]> entry : A02().entrySet()) {
            sb.append(entry.getKey().getName());
            sb.append(strA01);
            for (StackTraceElement stackTraceElement : entry.getValue()) {
                sb.append('\t');
                sb.append(stackTraceElement.toString());
                sb.append(strA01);
            }
        }
        return sb.toString();
    }

    public final boolean A05() {
        return A00() != null;
    }
}
