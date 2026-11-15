package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import java.io.IOException;

abstract class y22 {
    private a62 b;
    private b80 c;
    private de1 d;
    private long e;
    private long f;
    private long g;
    private int h;
    private int i;
    private long k;
    private boolean l;
    private boolean m;
    private final be1 a = new be1();
    private a j = new a();

    public static class a {
        jc0 a;
        yb0.a b;
    }

    public static final class b implements de1 {
        @Override
        public final long a(wz wzVar) {
            return -1L;
        }

        private b() {
        }

        @Override
        public final void a(long j) {
        }

        @Override
        public final ex1 a() {
            return new ex1.b(C.TIME_UNSET, 0L);
        }
    }

    public final long a(long j) {
        return (j * 1000000) / ((long) this.i);
    }

    public abstract long a(ag1 ag1Var);

    public abstract boolean a(ag1 ag1Var, long j, a aVar) throws IOException;

    public final long b(long j) {
        return (((long) this.i) * j) / 1000000;
    }

    public void c(long j) {
        this.g = j;
    }

    public final void a(b80 b80Var, a62 a62Var) {
        this.c = b80Var;
        this.b = a62Var;
        a(true);
    }

    public final int a(wz wzVar, pj1 pj1Var) throws IOException {
        if (this.b != null) {
            int i = f92.a;
            int i2 = this.h;
            if (i2 == 0) {
                while (this.a.a(wzVar)) {
                    this.k = wzVar.a() - this.f;
                    if (a(this.a.b(), this.f, this.j)) {
                        this.f = wzVar.a();
                    } else {
                        jc0 jc0Var = this.j.a;
                        this.i = jc0Var.A;
                        if (!this.m) {
                            this.b.a(jc0Var);
                            this.m = true;
                        }
                        yb0.a aVar = this.j.b;
                        if (aVar != null) {
                            this.d = aVar;
                        } else if (wzVar.b() == -1) {
                            this.d = new b();
                        } else {
                            ce1 ce1VarA = this.a.a();
                            this.d = new j00(this, this.f, wzVar.b(), ce1VarA.d + ce1VarA.e, ce1VarA.b, (ce1VarA.a & 4) != 0);
                        }
                        this.h = 2;
                        this.a.d();
                        return 0;
                    }
                }
                this.h = 3;
                return -1;
            }
            if (i2 == 1) {
                wzVar.a((int) this.f);
                this.h = 2;
                return 0;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    return -1;
                }
                throw new IllegalStateException();
            }
            long jA = this.d.a(wzVar);
            if (jA >= 0) {
                pj1Var.a = jA;
                return 1;
            }
            if (jA < -1) {
                c(-(jA + 2));
            }
            if (!this.l) {
                ex1 ex1VarA = this.d.a();
                if (ex1VarA != null) {
                    this.c.a(ex1VarA);
                    this.l = true;
                } else {
                    throw new IllegalStateException();
                }
            }
            if (this.k <= 0 && !this.a.a(wzVar)) {
                this.h = 3;
                return -1;
            }
            this.k = 0L;
            ag1 ag1VarB = this.a.b();
            long jA2 = a(ag1VarB);
            if (jA2 >= 0) {
                long j = this.g;
                if (j + jA2 >= this.e) {
                    long jA3 = a(j);
                    this.b.a(ag1VarB.e(), ag1VarB);
                    this.b.a(jA3, 1, ag1VarB.e(), 0, null);
                    this.e = -1L;
                }
            }
            this.g += jA2;
            return 0;
        }
        throw new IllegalStateException();
    }

    public void a(boolean z) {
        if (z) {
            this.j = new a();
            this.f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.e = -1L;
        this.g = 0L;
    }

    public final void a(long j, long j2) {
        this.a.c();
        if (j == 0) {
            a(!this.l);
            return;
        }
        if (this.h != 0) {
            long jB = b(j2);
            this.e = jB;
            de1 de1Var = this.d;
            int i = f92.a;
            de1Var.a(jB);
            this.h = 2;
        }
    }
}
