package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.u;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;

public final class u implements z70 {
    private final v a = new v();
    private final ag1 b = new ag1(16384);
    private boolean c;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return u.a();
            }
        };
    }

    @Override
    public final void a(b80 b80Var) {
        this.a.a(b80Var, new p72.d(Integer.MIN_VALUE, 0, 1));
        b80Var.a();
        b80Var.a(new ex1.b(C.TIME_UNSET, 0L));
    }

    @Override
    public final void release() {
    }

    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i = ((wz) a80Var).read(this.b.c(), 0, 16384);
        if (i == -1) {
            return -1;
        }
        this.b.e(0);
        this.b.d(i);
        if (!this.c) {
            this.a.a(4, 0L);
            this.c = true;
        }
        this.a.a(this.b);
        return 0;
    }

    @Override
    public final void a(long j, long j2) {
        this.c = false;
        this.a.a();
    }

    public static z70[] a() {
        return new z70[]{new u()};
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar;
        int i;
        ag1 ag1Var = new ag1(10);
        int i2 = 0;
        while (true) {
            wzVar = (wz) a80Var;
            wzVar.b(ag1Var.c(), 0, 10, false);
            ag1Var.e(0);
            if (ag1Var.w() != 4801587) {
                break;
            }
            ag1Var.f(3);
            int iS = ag1Var.s();
            i2 += iS + 10;
            wzVar.a(false, iS);
        }
        wzVar.c();
        wzVar.a(false, i2);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            wzVar.b(ag1Var.c(), 0, 7, false);
            ag1Var.e(0);
            int iZ = ag1Var.z();
            if (iZ == 44096 || iZ == 44097) {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] bArrC = ag1Var.c();
                if (bArrC.length < 7) {
                    i = -1;
                } else {
                    int i6 = ((bArrC[2] & 255) << 8) | (bArrC[3] & 255);
                    if (i6 == 65535) {
                        i6 = ((bArrC[4] & 255) << 16) | ((bArrC[5] & 255) << 8) | (bArrC[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (iZ == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    return false;
                }
                wzVar.a(false, i - 7);
            } else {
                wzVar.c();
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                wzVar.a(false, i4);
                i3 = 0;
            }
        }
    }
}
