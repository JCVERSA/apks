package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

public final class C2251np implements InterfaceC06193v {
    public static final List<C2252nq> A01 = new ArrayList(50);
    public final Handler A00;

    public C2251np(Handler handler) {
        this.A00 = handler;
    }

    public static C2252nq A00() {
        C2252nq c2252nq;
        synchronized (A01) {
            c2252nq = A01.isEmpty() ? new C2252nq() : A01.remove(A01.size() - 1);
        }
        return c2252nq;
    }

    public static void A01(C2252nq c2252nq) {
        synchronized (A01) {
            if (A01.size() < 50) {
                A01.add(c2252nq);
            }
        }
    }

    public final boolean A03(Runnable runnable) {
        return this.A00.post(runnable);
    }

    @Override
    public final Looper A8J() {
        return this.A00.getLooper();
    }

    @Override
    public final boolean A9f(int i) {
        return this.A00.hasMessages(i);
    }

    @Override
    public final C2252nq AC7(int i) {
        return A00().A01(this.A00.obtainMessage(i), this);
    }

    @Override
    public final C2252nq AC8(int i, int i2, int i3) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3), this);
    }

    @Override
    public final C2252nq AC9(int i, int i2, int i3, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3, obj), this);
    }

    @Override
    public final C2252nq ACA(int i, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, obj), this);
    }

    @Override
    public final void AHj(int i) {
        this.A00.removeMessages(i);
    }

    @Override
    public final boolean AIQ(int i) {
        return this.A00.sendEmptyMessage(i);
    }

    @Override
    public final boolean AIR(int i, long j) {
        return this.A00.sendEmptyMessageAtTime(i, j);
    }

    @Override
    public final boolean AIT(InterfaceC06183u interfaceC06183u) {
        return ((C2252nq) interfaceC06183u).A03(this.A00);
    }
}
