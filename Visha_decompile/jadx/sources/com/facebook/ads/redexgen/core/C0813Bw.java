package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Locale;

public final class C0813Bw implements InterfaceC1744f8 {
    public static boolean A03;
    public static byte[] A04;
    public static String[] A05 = {"HV3bjOQFG6hG19mK6btv5ZItymBNR4jb", "f8frJPlJVlZQfTmtqYpYtimfJzE", "snhVz6l74gACRZpxcVOl8ZhDE", "ioIXRoWDB2y5rIxXUVMK", "pJOGedThy6U23H0Dqr8MrVjxKTkAUTUw", "Z2sPBilUji", "eoagJWSpw9dhQ5uILEfDMJsGfxbL2OXR", "ioOrVGKFmPeoWtk9SUaiMK94AxkbTfSp"};
    public static final InterfaceC1743f6 A06;
    public static final String A07;
    public long A00 = 0;
    public final f7 A01;
    public final InterfaceC1749fD A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A05;
            if (strArr[2].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[6] = "SjioWZFjItKuhqld4sWZUQTfHHPQcsy5";
            strArr2[4] = "wEt2AMMlWwKWRpacJrxPlGBsPjvVn5Jo";
            bArrCopyOfRange[i4] = (byte) (i5 - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        if (A05[0].charAt(9) == 'h') {
            throw new RuntimeException();
        }
        A05[7] = "NMMzHy25EZUbJzWBlBjuS5XjO6LPkHkX";
        A04 = new byte[]{-8, 33, 36, 21, 27, 32, 25, -46, 32, 23, 42, 38, -46, 37, 43, 32, 21, -46, 19, 38, -46, -47, -27, -10, -17, -92, -27, -9, -92, -14, -13, -92, -9, -3, -14, -25, -20, -10, -13, -14, -19, -2, -27, -8, -19, -13, -14, -92, -9, -25, -20, -23, -24, -7, -16, -23, -24, -78, -92, -48, -27, -9, -8, -92, -9, -3, -14, -25, -92, -27, -8, -92, -87, -24, -78, -92, -46, -23, -4, -8, -92, -9, -3, -14, -25, -92, -27, -8, -92, -87, -24, -78, 14, 39, 32, 32, 43, -37, 33, 42, 45, -37, -32, 31, -37, 40, 36, 39, 39, 36, 46, -23, 3, 2, -26, 9, 2, -38, -3, 2, -3, 7, -4, -7, -8};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 9
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final synchronized void A6T(int i) {
        long jA5e = this.A02.A5e() + (((long) i) * 1000000 * ((long) (A03 ? 1 : 1000)));
        if (this.A00 == 0 || this.A00 > jA5e) {
            this.A00 = jA5e;
            notifyAll();
        }
    }

    static {
        A02();
        A07 = C0813Bw.class.getSimpleName();
        A06 = new C0814Bx();
        A03 = false;
    }

    public C0813Bw(f7 f7Var, InterfaceC1749fD interfaceC1749fD) {
        this.A01 = f7Var;
        this.A02 = interfaceC1749fD;
        Thread scheduler = new Thread(new RunnableC1745f9(this));
        scheduler.start();
    }

    private void A01() {
        while (true) {
            synchronized (this) {
                if (this.A00 == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    long jA5e = this.A02.A5e();
                    if (jA5e < this.A00) {
                        int millisToSleep = (int) ((this.A00 - jA5e) / 1000000);
                        if (millisToSleep >= 1) {
                            String.format(Locale.US, A00(92, 20, 70), Integer.valueOf(millisToSleep));
                            try {
                                long current = millisToSleep;
                                this.A02.AJK(this, current);
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    this.A00 = 0L;
                    this.A01.AI4();
                    long jA5e2 = this.A02.A5e();
                    if (0 != 0) {
                        throw new NullPointerException(A00(112, 13, 31));
                    }
                    synchronized (this) {
                        if (this.A00 < jA5e2) {
                            String.format(Locale.US, A00(21, 71, 15), Long.valueOf(jA5e2), Long.valueOf(this.A00));
                            this.A00 = 0L;
                        }
                    }
                }
            }
        }
    }

    public static void A03(C0813Bw c0813Bw) {
        c0813Bw.A01();
        throw null;
    }

    @Override
    public final synchronized void A6U() {
        this.A00 = this.A02.A5e();
        String str = A00(0, 21, 61) + this.A00;
        notifyAll();
    }
}
