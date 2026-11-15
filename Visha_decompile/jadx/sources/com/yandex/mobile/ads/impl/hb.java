package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.hb;
import com.yandex.mobile.ads.impl.z70;
import java.io.EOFException;
import java.io.IOException;

public final class hb implements z70 {
    private final ag1 d;
    private final zf1 e;
    private b80 f;
    private long g;
    private boolean j;
    private boolean k;
    private boolean l;
    private final int a = 0;
    private final ib b = new ib();
    private final ag1 c = new ag1(2048);
    private int i = -1;
    private long h = -1;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return hb.a();
            }
        };
    }

    public hb() {
        ag1 ag1Var = new ag1(10);
        this.d = ag1Var;
        this.e = new zf1(ag1Var.c());
    }

    @Override
    public final void a(b80 b80Var) {
        this.f = b80Var;
        this.b.a(b80Var, new p72.d(Integer.MIN_VALUE, 0, 1));
        b80Var.a();
    }

    @Override
    public final void release() {
    }

    private int a(wz wzVar) throws IOException {
        int i = 0;
        while (true) {
            wzVar.b(this.d.c(), 0, 10, false);
            this.d.e(0);
            if (this.d.w() != 4801587) {
                break;
            }
            this.d.f(3);
            int iS = this.d.s();
            i += iS + 10;
            wzVar.a(false, iS);
        }
        wzVar.c();
        wzVar.a(false, i);
        if (this.h == -1) {
            this.h = i;
        }
        return i;
    }

    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        if (this.f != null) {
            wz wzVar = (wz) a80Var;
            long jB = wzVar.b();
            int i = this.a;
            if (((i & 2) != 0 || ((i & 1) != 0 && jB != -1)) && !this.j) {
                this.i = -1;
                wzVar.c();
                if (wzVar.a() == 0) {
                    a(wzVar);
                }
                long j = 0;
                int i2 = 0;
                while (wzVar.b(this.d.c(), 0, 2, true)) {
                    try {
                        this.d.e(0);
                        if ((this.d.z() & 65526) != 65520) {
                            i2 = 0;
                            break;
                        }
                        if (!wzVar.b(this.d.c(), 0, 4, true)) {
                            break;
                        }
                        this.e.c(14);
                        int iB = this.e.b(13);
                        if (iB > 6) {
                            j += (long) iB;
                            i2++;
                            if (i2 == 1000 || !wzVar.a(true, iB - 6)) {
                                break;
                                break;
                            }
                        } else {
                            this.j = true;
                            throw eg1.a("Malformed ADTS stream", (Exception) null);
                        }
                    } catch (EOFException unused) {
                    }
                }
                wzVar.c();
                if (i2 > 0) {
                    this.i = (int) (j / ((long) i2));
                } else {
                    this.i = -1;
                }
                this.j = true;
            }
            int i3 = wzVar.read(this.c.c(), 0, 2048);
            boolean z = i3 == -1;
            if (!this.l) {
                boolean z2 = (this.a & 1) != 0 && this.i > 0;
                if (!z2 || this.b.c() != C.TIME_UNSET || z) {
                    if (z2 && this.b.c() != C.TIME_UNSET) {
                        this.f.a(new wr((int) ((((long) this.i) * 8000000) / this.b.c()), this.i, jB, this.h, (this.a & 2) != 0));
                    } else {
                        this.f.a(new ex1.b(C.TIME_UNSET, 0L));
                    }
                    this.l = true;
                }
            }
            if (z) {
                return -1;
            }
            this.c.e(0);
            this.c.d(i3);
            if (!this.k) {
                this.b.a(4, this.g);
                this.k = true;
            }
            this.b.a(this.c);
            return 0;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j, long j2) {
        this.k = false;
        this.b.a();
        this.g = j2;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar = (wz) a80Var;
        int iA = a(wzVar);
        int i = iA;
        int i2 = 0;
        int i3 = 0;
        do {
            wzVar.b(this.d.c(), 0, 2, false);
            this.d.e(0);
            if ((this.d.z() & 65526) == 65520) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                wzVar.b(this.d.c(), 0, 4, false);
                this.e.c(14);
                int iB = this.e.b(13);
                if (iB <= 6) {
                    i++;
                    wzVar.c();
                    wzVar.a(false, i);
                } else {
                    wzVar.a(false, iB - 6);
                    i3 += iB;
                }
            } else {
                i++;
                wzVar.c();
                wzVar.a(false, i);
            }
            i2 = 0;
            i3 = 0;
        } while (i - iA < 8192);
        return false;
    }

    public static z70[] a() {
        return new z70[]{new hb()};
    }
}
