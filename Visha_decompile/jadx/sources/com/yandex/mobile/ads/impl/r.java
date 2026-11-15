package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.r;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;

public final class r implements z70 {
    private final s a = new s();
    private final ag1 b = new ag1(2786);
    private boolean c;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return r.a();
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
        int i = ((wz) a80Var).read(this.b.c(), 0, 2786);
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
        return new z70[]{new r()};
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar;
        ag1 ag1Var = new ag1(10);
        int i = 0;
        while (true) {
            wzVar = (wz) a80Var;
            wzVar.b(ag1Var.c(), 0, 10, false);
            ag1Var.e(0);
            if (ag1Var.w() != 4801587) {
                break;
            }
            ag1Var.f(3);
            int iS = ag1Var.s();
            i += iS + 10;
            wzVar.a(false, iS);
        }
        wzVar.c();
        wzVar.a(false, i);
        int i2 = 0;
        int i3 = i;
        while (true) {
            wzVar.b(ag1Var.c(), 0, 6, false);
            ag1Var.e(0);
            if (ag1Var.z() != 2935) {
                wzVar.c();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                wzVar.a(false, i3);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int iA = t.a(ag1Var.c());
                if (iA == -1) {
                    return false;
                }
                wzVar.a(false, iA - 6);
            }
        }
    }
}
