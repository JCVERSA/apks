package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.ae1;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;

public final class ae1 implements z70 {
    private b80 a;
    private y22 b;
    private boolean c;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return ae1.a();
            }
        };
    }

    @Override
    public final void a(b80 b80Var) {
        this.a = b80Var;
    }

    @Override
    public final void release() {
    }

    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        if (this.a == null) {
            throw new IllegalStateException();
        }
        if (this.b == null) {
            wz wzVar = (wz) a80Var;
            if (!a(wzVar)) {
                throw eg1.a("Failed to determine bitstream type", (Exception) null);
            }
            wzVar.c();
        }
        if (!this.c) {
            a62 a62VarA = this.a.a(0, 1);
            this.a.a();
            this.b.a(this.a, a62VarA);
            this.c = true;
        }
        return this.b.a((wz) a80Var, pj1Var);
    }

    @Override
    public final void a(long j, long j2) {
        y22 y22Var = this.b;
        if (y22Var != null) {
            y22Var.a(j, j2);
        }
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        try {
            return a((wz) a80Var);
        } catch (eg1 unused) {
            return false;
        }
    }

    public static z70[] a() {
        return new z70[]{new ae1()};
    }

    private boolean a(wz wzVar) throws IOException {
        ce1 ce1Var = new ce1();
        if (ce1Var.a(wzVar, true) && (ce1Var.a & 2) == 2) {
            int iMin = Math.min(ce1Var.e, 8);
            ag1 ag1Var = new ag1(iMin);
            wzVar.b(ag1Var.c(), 0, iMin, false);
            ag1Var.e(0);
            if (ag1Var.a() >= 5 && ag1Var.t() == 127 && ag1Var.v() == 1179402563) {
                this.b = new yb0();
            } else {
                ag1Var.e(0);
                try {
                    if (gj2.a(1, ag1Var, true)) {
                        this.b = new fj2();
                    } else {
                        ag1Var.e(0);
                        if (hf1.b(ag1Var)) {
                            this.b = new hf1();
                        }
                    }
                } catch (eg1 unused) {
                }
            }
            return true;
        }
        return false;
    }
}
