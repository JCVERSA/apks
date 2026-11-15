package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractRunnableC1322Vt implements Runnable {
    public static byte[] A01;
    public static final AtomicBoolean A02;
    public static final AtomicBoolean A03;
    public static final AtomicReference<InterfaceC1312Vj> A04;
    public final C1310Vh A00;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{44, ByteCode.T_LONG, 16, 16, 31, 28, 18, 27, 94, 29, 12, 27, 31, 10, 27, 26, 80, 94, 42, 22, 12, 27, 31, 26, 68, 94};
    }

    public abstract void A07();

    static {
        A03();
        A02 = new AtomicBoolean();
        A03 = new AtomicBoolean(false);
        A04 = new AtomicReference<>();
    }

    public AbstractRunnableC1322Vt() {
        if (A03.get()) {
            this.A00 = C1327Vy.A01(new C1326Vx(A02(0, 26, 94) + Thread.currentThread().getName()));
        } else {
            this.A00 = null;
        }
    }

    public static void A04(boolean z) {
        A03.set(z);
    }

    public static void A05(boolean z, InterfaceC1312Vj interfaceC1312Vj) {
        A02.set(z);
        A04.set(interfaceC1312Vj);
    }

    public final C1310Vh A06() {
        return this.A00;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (A03.get()) {
                C1327Vy.A03(this);
            }
            try {
                A07();
            } catch (Throwable th) {
                if (A02.get()) {
                    W0.A00().AAo(3301, th);
                    InterfaceC1312Vj interfaceC1312Vj = A04.get();
                    if (interfaceC1312Vj != null) {
                        interfaceC1312Vj.AHp(th, this);
                    }
                } else {
                    throw th;
                }
            }
            if (A03.get()) {
                C1327Vy.A04(this);
            }
        } catch (Throwable th2) {
            AbstractC1314Vl.A00(th2, this);
        }
    }
}
