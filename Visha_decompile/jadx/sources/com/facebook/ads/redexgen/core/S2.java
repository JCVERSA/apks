package com.facebook.ads.redexgen.core;

public final class S2 extends Thread {
    public final long A00;

    public S2(long j) {
        this.A00 = j;
        start();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0011 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        while (true) {
            try {
                Thread.sleep(this.A00);
            } catch (InterruptedException unused) {
            }
            S0.A01();
        }
    }
}
