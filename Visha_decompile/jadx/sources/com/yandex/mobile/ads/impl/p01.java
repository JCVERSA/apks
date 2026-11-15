package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public final class p01 extends sk implements Handler.Callback {
    private final m01 n;
    private final o01 o;

    @Nullable
    private final Handler p;
    private final n01 q;

    @Nullable
    private l01 r;
    private boolean s;
    private boolean t;
    private long u;
    private long v;

    @Nullable
    private k01 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p01(o01 o01Var, @Nullable Looper looper) {
        super(5);
        m01 m01Var = m01.a;
        this.o = (o01) hg.a(o01Var);
        this.p = looper == null ? null : f92.a(looper, (Handler.Callback) this);
        this.n = (m01) hg.a(m01Var);
        this.q = new n01();
        this.v = C.TIME_UNSET;
    }

    private void a(k01 k01Var, ArrayList arrayList) {
        for (int i = 0; i < k01Var.c(); i++) {
            jc0 jc0VarA = k01Var.a(i).a();
            if (jc0VarA == null || !this.n.a(jc0VarA)) {
                arrayList.add(k01Var.a(i));
            } else {
                sy1 sy1VarB = this.n.b(jc0VarA);
                byte[] bArrB = k01Var.a(i).b();
                bArrB.getClass();
                this.q.b();
                this.q.e(bArrB.length);
                ByteBuffer byteBuffer = this.q.d;
                int i2 = f92.a;
                byteBuffer.put(bArrB);
                this.q.h();
                k01 k01VarA = sy1VarB.a(this.q);
                if (k01VarA != null) {
                    a(k01VarA, arrayList);
                }
            }
        }
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final String getName() {
        return "MetadataRenderer";
    }

    @Override
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        this.o.a((k01) message.obj);
        return true;
    }

    @Override
    public final void u() {
        this.w = null;
        this.v = C.TIME_UNSET;
        this.r = null;
    }

    @Override
    public final boolean a() {
        return this.t;
    }

    @Override
    public final void a(long j, boolean z) {
        this.w = null;
        this.v = C.TIME_UNSET;
        this.s = false;
        this.t = false;
    }

    @Override
    public final void a(jc0[] jc0VarArr, long j, long j2) {
        this.r = this.n.b(jc0VarArr[0]);
    }

    @Override
    public final void a(long j, long j2) {
        boolean z;
        do {
            z = false;
            if (!this.s && this.w == null) {
                this.q.b();
                kc0 kc0VarQ = q();
                int iA = a(kc0VarQ, this.q, 0);
                if (iA == -4) {
                    if (this.q.f()) {
                        this.s = true;
                    } else {
                        n01 n01Var = this.q;
                        n01Var.j = this.u;
                        n01Var.h();
                        l01 l01Var = this.r;
                        int i = f92.a;
                        k01 k01VarA = l01Var.a(this.q);
                        if (k01VarA != null) {
                            ArrayList arrayList = new ArrayList(k01VarA.c());
                            a(k01VarA, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.w = new k01(arrayList);
                                this.v = this.q.f;
                            }
                        }
                    }
                } else if (iA == -5) {
                    jc0 jc0Var = kc0VarQ.b;
                    jc0Var.getClass();
                    this.u = jc0Var.q;
                }
            }
            k01 k01Var = this.w;
            if (k01Var != null && this.v <= j) {
                Handler handler = this.p;
                if (handler != null) {
                    handler.obtainMessage(0, k01Var).sendToTarget();
                } else {
                    this.o.a(k01Var);
                }
                this.w = null;
                this.v = C.TIME_UNSET;
                z = true;
            }
            if (this.s && this.w == null) {
                this.t = true;
            }
        } while (z);
    }

    @Override
    public final int a(jc0 jc0Var) {
        if (this.n.a(jc0Var)) {
            return zo1.a(jc0Var.F == 0 ? 4 : 2, 0, 0);
        }
        return zo1.a(0, 0, 0);
    }
}
