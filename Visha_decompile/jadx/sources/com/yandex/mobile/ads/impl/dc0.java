package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.dc0;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;

public final class dc0 implements z70 {
    private b80 f;
    private boolean h;
    private long i;
    private int j;
    private int k;
    private int l;
    private long m;
    private boolean n;
    private xh o;
    private ig2 p;
    private final ag1 a = new ag1(4);
    private final ag1 b = new ag1(9);
    private final ag1 c = new ag1(11);
    private final ag1 d = new ag1();
    private final st1 e = new st1();
    private int g = 1;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return dc0.a();
            }
        };
    }

    @Override
    public final void a(b80 b80Var) {
        this.f = b80Var;
    }

    @Override
    public final void release() {
    }

    private ag1 a(wz wzVar) throws IOException {
        if (this.l > this.d.b()) {
            ag1 ag1Var = this.d;
            ag1Var.a(0, new byte[Math.max(ag1Var.b() * 2, this.l)]);
        } else {
            this.d.e(0);
        }
        this.d.d(this.l);
        wzVar.a(this.d.c(), 0, this.l, false);
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0006 A[SYNTHETIC] */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        long j;
        boolean zA;
        boolean z;
        if (this.f == null) {
            throw new IllegalStateException();
        }
        while (true) {
            int i = this.g;
            if (i == 1) {
                if (!((wz) a80Var).a(this.b.c(), 0, 9, true)) {
                    return -1;
                }
                this.b.e(0);
                this.b.f(4);
                int iT = this.b.t();
                boolean z2 = (iT & 4) != 0;
                boolean z3 = (iT & 1) != 0;
                if (z2 && this.o == null) {
                    this.o = new xh(this.f.a(8, 1));
                }
                if (z3 && this.p == null) {
                    this.p = new ig2(this.f.a(9, 2));
                }
                this.f.a();
                this.j = this.b.h() - 5;
                this.g = 2;
            } else if (i == 2) {
                ((wz) a80Var).a(this.j);
                this.j = 0;
                this.g = 3;
            } else if (i == 3) {
                if (!((wz) a80Var).a(this.c.c(), 0, 11, true)) {
                    return -1;
                }
                this.c.e(0);
                this.k = this.c.t();
                this.l = this.c.w();
                this.m = this.c.w();
                this.m = (((long) (this.c.t() << 24)) | this.m) * 1000;
                this.c.f(3);
                this.g = 4;
            } else if (i == 4) {
                if (this.h) {
                    j = this.i + this.m;
                } else {
                    j = this.e.a() == C.TIME_UNSET ? 0L : this.m;
                }
                int i2 = this.k;
                if (i2 == 8 && this.o != null) {
                    if (!this.n) {
                        this.f.a(new ex1.b(C.TIME_UNSET, 0L));
                        this.n = true;
                    }
                    xh xhVar = this.o;
                    ag1 ag1VarA = a((wz) a80Var);
                    xhVar.a(ag1VarA);
                    zA = xhVar.a(j, ag1VarA);
                } else {
                    if (i2 == 9 && this.p != null) {
                        if (!this.n) {
                            this.f.a(new ex1.b(C.TIME_UNSET, 0L));
                            this.n = true;
                        }
                        ig2 ig2Var = this.p;
                        ag1 ag1VarA2 = a((wz) a80Var);
                        if (ig2Var.a(ag1VarA2) && ig2Var.a(j, ag1VarA2)) {
                            zA = true;
                            z = zA;
                        } else {
                            zA = false;
                        }
                    } else if (i2 == 18 && !this.n) {
                        st1 st1Var = this.e;
                        ag1 ag1VarA3 = a((wz) a80Var);
                        st1Var.getClass();
                        zA = st1Var.a(j, ag1VarA3);
                        long jA = this.e.a();
                        if (jA != C.TIME_UNSET) {
                            this.f.a(new zk0(jA, this.e.b(), this.e.c()));
                            this.n = true;
                        }
                    } else {
                        ((wz) a80Var).a(this.l);
                        zA = false;
                        z = zA;
                    }
                    if (!this.h && zA) {
                        this.h = true;
                        this.i = this.e.a() == C.TIME_UNSET ? -this.m : 0L;
                    }
                    this.j = 4;
                    this.g = 2;
                    if (z) {
                        return 0;
                    }
                }
                z = true;
                if (!this.h) {
                    this.h = true;
                    this.i = this.e.a() == C.TIME_UNSET ? -this.m : 0L;
                }
                this.j = 4;
                this.g = 2;
                if (z) {
                    return 0;
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override
    public final void a(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar = (wz) a80Var;
        wzVar.b(this.a.c(), 0, 3, false);
        this.a.e(0);
        if (this.a.w() != 4607062) {
            return false;
        }
        wzVar.b(this.a.c(), 0, 2, false);
        this.a.e(0);
        if ((this.a.z() & 250) != 0) {
            return false;
        }
        wzVar.b(this.a.c(), 0, 4, false);
        this.a.e(0);
        int iH = this.a.h();
        wzVar.c();
        wzVar.a(false, iH);
        wzVar.b(this.a.c(), 0, 4, false);
        this.a.e(0);
        return this.a.h() == 0;
    }

    public static z70[] a() {
        return new z70[]{new dc0()};
    }
}
