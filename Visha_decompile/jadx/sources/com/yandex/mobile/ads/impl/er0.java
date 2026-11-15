package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.Collections;

public final class er0 implements b50 {

    @Nullable
    private final String a;
    private final ag1 b;
    private final zf1 c;
    private a62 d;
    private String e;
    private jc0 f;
    private int g;
    private int h;
    private int i;
    private int j;
    private long k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private int t;

    @Nullable
    private String u;

    public er0(@Nullable String str) {
        this.a = str;
        ag1 ag1Var = new ag1(1024);
        this.b = ag1Var;
        this.c = new zf1(ag1Var.c());
        this.k = C.TIME_UNSET;
    }

    @Override
    public final void a(ag1 ag1Var) throws eg1 {
        int i;
        boolean zF;
        if (this.d == null) {
            throw new IllegalStateException();
        }
        while (ag1Var.a() > 0) {
            int i2 = this.g;
            if (i2 != 0) {
                if (i2 == 1) {
                    int iT = ag1Var.t();
                    if ((iT & 224) == 224) {
                        this.j = iT;
                        this.g = 2;
                    } else if (iT != 86) {
                        this.g = 0;
                    }
                } else if (i2 == 2) {
                    int iT2 = ((this.j & (-225)) << 8) | ag1Var.t();
                    this.i = iT2;
                    if (iT2 > this.b.c().length) {
                        this.b.c(this.i);
                        zf1 zf1Var = this.c;
                        byte[] bArrC = this.b.c();
                        zf1Var.getClass();
                        zf1Var.a(bArrC.length, bArrC);
                    }
                    this.h = 0;
                    this.g = 3;
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(ag1Var.a(), this.i - this.h);
                    ag1Var.a(this.c.a, this.h, iMin);
                    int i3 = this.h + iMin;
                    this.h = i3;
                    if (i3 == this.i) {
                        this.c.c(0);
                        zf1 zf1Var2 = this.c;
                        if (zf1Var2.f()) {
                            if (this.l) {
                            }
                            this.g = 0;
                        } else {
                            this.l = true;
                            int iB = zf1Var2.b(1);
                            int iB2 = iB == 1 ? zf1Var2.b(1) : 0;
                            this.m = iB2;
                            if (iB2 != 0) {
                                throw eg1.a((String) null, (Exception) null);
                            }
                            if (iB == 1) {
                                zf1Var2.b((zf1Var2.b(2) + 1) * 8);
                            }
                            if (!zf1Var2.f()) {
                                throw eg1.a((String) null, (Exception) null);
                            }
                            this.n = zf1Var2.b(6);
                            int iB3 = zf1Var2.b(4);
                            int iB4 = zf1Var2.b(3);
                            if (iB3 != 0 || iB4 != 0) {
                                throw eg1.a((String) null, (Exception) null);
                            }
                            if (iB == 0) {
                                int iE = zf1Var2.e();
                                int iB5 = zf1Var2.b();
                                e.a aVarA = e.a(zf1Var2, true);
                                this.u = aVarA.c;
                                this.r = aVarA.a;
                                this.t = aVarA.b;
                                int iB6 = iB5 - zf1Var2.b();
                                zf1Var2.c(iE);
                                byte[] bArr = new byte[(iB6 + 7) / 8];
                                zf1Var2.a(bArr, iB6);
                                jc0 jc0VarA = new jc0.a().b(this.e).e("audio/mp4a-latm").a(this.u).c(this.t).l(this.r).a(Collections.singletonList(bArr)).d(this.a).a();
                                if (!jc0VarA.equals(this.f)) {
                                    this.f = jc0VarA;
                                    this.s = 1024000000 / ((long) jc0VarA.A);
                                    this.d.a(jc0VarA);
                                }
                            } else {
                                int iB7 = zf1Var2.b((zf1Var2.b(2) + 1) * 8);
                                int iB8 = zf1Var2.b();
                                e.a aVarA2 = e.a(zf1Var2, true);
                                this.u = aVarA2.c;
                                this.r = aVarA2.a;
                                this.t = aVarA2.b;
                                zf1Var2.d(iB7 - (iB8 - zf1Var2.b()));
                            }
                            int iB9 = zf1Var2.b(3);
                            this.o = iB9;
                            if (iB9 == 0) {
                                zf1Var2.d(8);
                            } else if (iB9 == 1) {
                                zf1Var2.d(9);
                            } else if (iB9 == 3 || iB9 == 4 || iB9 == 5) {
                                zf1Var2.d(6);
                            } else {
                                if (iB9 != 6 && iB9 != 7) {
                                    throw new IllegalStateException();
                                }
                                zf1Var2.d(1);
                            }
                            boolean zF2 = zf1Var2.f();
                            this.p = zF2;
                            this.q = 0L;
                            if (zF2) {
                                if (iB == 1) {
                                    this.q = zf1Var2.b((zf1Var2.b(2) + 1) * 8);
                                } else {
                                    do {
                                        zF = zf1Var2.f();
                                        this.q = (this.q << 8) + ((long) zf1Var2.b(8));
                                    } while (zF);
                                }
                            }
                            if (zf1Var2.f()) {
                                zf1Var2.d(8);
                            }
                        }
                        if (this.m != 0) {
                            throw eg1.a((String) null, (Exception) null);
                        }
                        if (this.n != 0) {
                            throw eg1.a((String) null, (Exception) null);
                        }
                        if (this.o != 0) {
                            throw eg1.a((String) null, (Exception) null);
                        }
                        int i4 = 0;
                        while (true) {
                            int iB10 = zf1Var2.b(8);
                            i = i4 + iB10;
                            if (iB10 != 255) {
                                break;
                            } else {
                                i4 = i;
                            }
                        }
                        int iE2 = zf1Var2.e();
                        if ((iE2 & 7) == 0) {
                            this.b.e(iE2 >> 3);
                        } else {
                            zf1Var2.a(this.b.c(), i * 8);
                            this.b.e(0);
                        }
                        this.d.a(i, this.b);
                        long j = this.k;
                        if (j != C.TIME_UNSET) {
                            this.d.a(j, 1, i, 0, null);
                            this.k += this.s;
                        }
                        if (this.p) {
                            zf1Var2.d((int) this.q);
                        }
                        this.g = 0;
                    } else {
                        continue;
                    }
                }
            } else if (ag1Var.t() == 86) {
                this.g = 1;
            }
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.d = b80Var.a(dVar.c(), 1);
        this.e = dVar.b();
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override
    public final void a() {
        this.g = 0;
        this.k = C.TIME_UNSET;
        this.l = false;
    }
}
