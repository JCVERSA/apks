package com.facebook.ads.redexgen.core;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;

public class C1351Wy extends Thread implements Closeable {
    public boolean A00 = false;
    public final C1352Wz A01;

    public C1351Wy(C1352Wz c1352Wz) {
        this.A01 = c1352Wz;
        start();
    }

    public final synchronized void A00() {
        this.A01.A02.A02();
    }

    @Override
    public final void close() throws IOException {
        synchronized (this) {
            this.A00 = true;
            this.A01.A02.A02();
        }
        try {
            join();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x004b */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0052 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0085 */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        if (r1 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        if (r0 == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        r5.A01.A03.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        r2 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x005b, code lost:
    
        monitor-enter(r5.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005c, code lost:
    
        r5.A01.A02.A03();
        r5.A01.A00 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006b, code lost:
    
        throw r2;
     */
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
                try {
                    try {
                        this.A01.A02.A04();
                        synchronized (this.A01) {
                            try {
                                synchronized (this) {
                                    try {
                                        boolean z = this.A00;
                                        boolean zA05 = this.A01.A02.A05();
                                    } catch (Throwable th) {
                                        th = th;
                                        while (true) {
                                            throw th;
                                        }
                                    }
                                }
                                try {
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        throw th;
                    } catch (Exception unused) {
                        synchronized (this.A01) {
                            try {
                                this.A01.A02.A03();
                                this.A01.A00 = null;
                                return;
                            } catch (Throwable th4) {
                                th = th4;
                                while (true) {
                                    throw th;
                                }
                            }
                        }
                    }
                } catch (Throwable th5) {
                    AbstractC1314Vl.A00(th5, this);
                    return;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
        synchronized (this.A01) {
            try {
                this.A01.A02.A03();
                this.A01.A00 = null;
            } catch (Throwable th7) {
                th = th7;
                while (true) {
                    throw th;
                }
            }
        }
    }
}
