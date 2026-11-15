package com.facebook.ads.redexgen.core;

import android.os.ConditionVariable;

public class MD extends Thread {
    public final ConditionVariable A00;
    public final C1959ir A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MD(C1959ir c1959ir, String str, ConditionVariable conditionVariable) {
        super(str);
        this.A01 = c1959ir;
        this.A00 = conditionVariable;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x001a */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            synchronized (this.A01) {
                try {
                    this.A00.open();
                    this.A01.A05();
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            AbstractC1314Vl.A00(th2, this);
        }
    }
}
