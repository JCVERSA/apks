package io.appmetrica.analytics.impl;

import android.os.Bundle;
import androidx.annotation.WorkerThread;

public final class L1 implements Oj {
    public static final K1 b = new K1();
    public static final int c = 1;
    public final InterfaceC2676l0 a;

    public L1(InterfaceC2676l0 interfaceC2676l0) {
        this.a = interfaceC2676l0;
    }

    @Override
    @WorkerThread
    public final void reportData(int i, Bundle bundle) {
        ((I1) this.a).a(bundle);
    }
}
