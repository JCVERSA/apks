package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.ym1;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;

public final class ym1 implements z70 {
    private final p52 a;
    private boolean e;
    private boolean f;
    private boolean g;
    private long h;

    @Nullable
    private wm1 i;
    private b80 j;
    private boolean k;
    private final ag1 c = new ag1(4096);
    private final SparseArray<a> b = new SparseArray<>();
    private final xm1 d = new xm1();

    public static final class a {
        private final b50 a;
        private final p52 b;
        private final zf1 c = new zf1(new byte[64]);
        private boolean d;
        private boolean e;
        private boolean f;
        private long g;

        public a(b50 b50Var, p52 p52Var) {
            this.a = b50Var;
            this.b = p52Var;
        }
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return ym1.a();
            }
        };
    }

    public ym1(p52 p52Var) {
        this.a = p52Var;
    }

    @Override
    public final void a(b80 b80Var) {
        this.j = b80Var;
    }

    @Override
    public final void release() {
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0157  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        long j;
        long jD;
        b50 cf0Var;
        if (this.j == null) {
            throw new IllegalStateException();
        }
        wz wzVar = (wz) a80Var;
        long jB = wzVar.b();
        if (jB != -1 && !this.d.c()) {
            return this.d.a(wzVar, pj1Var);
        }
        if (!this.k) {
            this.k = true;
            if (this.d.a() != C.TIME_UNSET) {
                wm1 wm1Var = new wm1(this.d.b(), this.d.a(), jB);
                this.i = wm1Var;
                this.j.a(wm1Var.a());
            } else {
                this.j.a(new ex1.b(this.d.a(), 0L));
            }
        }
        wm1 wm1Var2 = this.i;
        if (wm1Var2 != null && wm1Var2.b()) {
            return this.i.a(wzVar, pj1Var);
        }
        wzVar.c();
        if (jB != -1) {
            jD = jB - wzVar.d();
            j = -1;
        } else {
            j = -1;
            jD = -1;
        }
        if ((jD != j && jD < 4) || !wzVar.b(this.c.c(), 0, 4, true)) {
            return -1;
        }
        this.c.e(0);
        int iH = this.c.h();
        if (iH == 441) {
            return -1;
        }
        if (iH == 442) {
            wzVar.b(this.c.c(), 0, 10, false);
            this.c.e(9);
            wzVar.a((this.c.t() & 7) + 14);
            return 0;
        }
        if (iH == 443) {
            wzVar.b(this.c.c(), 0, 2, false);
            this.c.e(0);
            wzVar.a(this.c.z() + 6);
            return 0;
        }
        if (((iH & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            wzVar.a(1);
            return 0;
        }
        int i = iH & 255;
        a aVar = this.b.get(i);
        if (!this.e) {
            if (aVar == null) {
                b50 b50Var = null;
                if (i == 189) {
                    cf0Var = new s(null);
                    this.f = true;
                    this.h = wzVar.a();
                } else if ((iH & 224) == 192) {
                    cf0Var = new e21(null);
                    this.f = true;
                    this.h = wzVar.a();
                } else if ((iH & 240) == 224) {
                    cf0Var = new cf0(null);
                    this.g = true;
                    this.h = wzVar.a();
                } else if (b50Var != null) {
                    b50Var.a(this.j, new p72.d(Integer.MIN_VALUE, i, 256));
                    aVar = new a(b50Var, this.a);
                    this.b.put(i, aVar);
                }
                b50Var = cf0Var;
                if (b50Var != null) {
                    b50Var.a(this.j, new p72.d(Integer.MIN_VALUE, i, 256));
                    aVar = new a(b50Var, this.a);
                    this.b.put(i, aVar);
                }
            }
            if (wzVar.a() > ((this.f && this.g) ? this.h + 8192 : 1048576L)) {
                this.e = true;
                this.j.a();
            }
        }
        wzVar.b(this.c.c(), 0, 2, false);
        this.c.e(0);
        int iZ = this.c.z() + 6;
        if (aVar == null) {
            wzVar.a(iZ);
        } else {
            this.c.c(iZ);
            wzVar.a(this.c.c(), 0, iZ, false);
            this.c.e(6);
            ag1 ag1Var = this.c;
            ag1Var.a(aVar.c.a, 0, 3);
            aVar.c.c(0);
            aVar.c.d(8);
            aVar.d = aVar.c.f();
            aVar.e = aVar.c.f();
            aVar.c.d(6);
            ag1Var.a(aVar.c.a, 0, aVar.c.b(8));
            aVar.c.c(0);
            aVar.g = 0L;
            if (aVar.d) {
                aVar.c.d(4);
                long jB2 = ((long) aVar.c.b(3)) << 30;
                aVar.c.d(1);
                long jB3 = jB2 | ((long) (aVar.c.b(15) << 15));
                aVar.c.d(1);
                long jB4 = jB3 | ((long) aVar.c.b(15));
                aVar.c.d(1);
                if (!aVar.f && aVar.e) {
                    aVar.c.d(4);
                    long jB5 = ((long) aVar.c.b(3)) << 30;
                    aVar.c.d(1);
                    long jB6 = jB5 | ((long) (aVar.c.b(15) << 15));
                    aVar.c.d(1);
                    long jB7 = jB6 | ((long) aVar.c.b(15));
                    aVar.c.d(1);
                    aVar.b.b(jB7);
                    aVar.f = true;
                }
                aVar.g = aVar.b.b(jB4);
            }
            aVar.a.a(4, aVar.g);
            aVar.a.a(ag1Var);
            aVar.a.b();
            ag1 ag1Var2 = this.c;
            ag1Var2.d(ag1Var2.b());
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    @Override
    public final void a(long j, long j2) {
        boolean z = this.a.c() == C.TIME_UNSET;
        if (!z) {
            long jA = this.a.a();
            if (jA != C.TIME_UNSET && jA != 0 && jA != j2) {
                this.a.c(j2);
            }
        } else if (z) {
            this.a.c(j2);
        }
        wm1 wm1Var = this.i;
        if (wm1Var != null) {
            wm1Var.a(j2);
        }
        for (int i = 0; i < this.b.size(); i++) {
            a aVarValueAt = this.b.valueAt(i);
            aVarValueAt.f = false;
            aVarValueAt.a.a();
        }
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        byte[] bArr = new byte[14];
        wz wzVar = (wz) a80Var;
        wzVar.b(bArr, 0, 14, false);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        wzVar.a(false, bArr[13] & 7);
        wzVar.b(bArr, 0, 3, false);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    public static z70[] a() {
        return new z70[]{new ym1(new p52(0L))};
    }
}
