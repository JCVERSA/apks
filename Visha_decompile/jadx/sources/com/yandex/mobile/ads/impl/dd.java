package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import com.transsion.socket.pkgdata.SocketData;
import com.yandex.mobile.ads.impl.dd;
import com.yandex.mobile.ads.impl.z70;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

public final class dd implements z70 {
    private static final int[] p;
    private static final int[] q;
    private static final byte[] r;
    private static final byte[] s;
    private static final int t;
    private boolean c;
    private long d;
    private int e;
    private int f;
    private boolean g;
    private long h;
    private int j;
    private long k;
    private b80 l;
    private a62 m;
    private ex1 n;
    private boolean o;
    private final int b = 0;
    private final byte[] a = new byte[1];
    private int i = -1;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return dd.a();
            }
        };
        p = new int[]{13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        q = iArr;
        r = f92.c("#!AMR\n");
        s = f92.c("#!AMR-WB\n");
        t = iArr[8];
    }

    @Override
    public final void a(b80 b80Var) {
        this.l = b80Var;
        this.m = b80Var.a(0, 1);
        b80Var.a();
    }

    @Override
    public final void release() {
    }

    private int a(wz wzVar) throws IOException {
        boolean z;
        wzVar.c();
        wzVar.b(this.a, 0, 1, false);
        byte b = this.a[0];
        if ((b & SocketData.CLAZZ_TYPE_CONNECT_CHECK) > 0) {
            throw eg1.a("Invalid padding bits for frame header " + ((int) b), (Exception) null);
        }
        int i = (b >> 3) & 15;
        if (i >= 0 && i <= 15 && (((z = this.c) && (i < 10 || i > 13)) || (!z && (i < 12 || i > 14)))) {
            return z ? q[i] : p[i];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.c ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw eg1.a(sb.toString(), (Exception) null);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        int i2;
        int iB;
        int i3;
        if (this.m != null) {
            int i4 = f92.a;
            wz wzVar = (wz) a80Var;
            if (wzVar.a() == 0) {
                byte[] bArr = r;
                wzVar.c();
                byte[] bArr2 = new byte[bArr.length];
                wzVar.b(bArr2, 0, bArr.length, false);
                if (Arrays.equals(bArr2, bArr)) {
                    this.c = false;
                    wzVar.a(bArr.length);
                } else {
                    byte[] bArr3 = s;
                    wzVar.c();
                    byte[] bArr4 = new byte[bArr3.length];
                    wzVar.b(bArr4, 0, bArr3.length, false);
                    if (Arrays.equals(bArr4, bArr3)) {
                        this.c = true;
                        wzVar.a(bArr3.length);
                    } else {
                        throw eg1.a("Could not find AMR header.", (Exception) null);
                    }
                }
            }
            if (!this.o) {
                this.o = true;
                boolean z = this.c;
                this.m.a(new jc0.a().e(z ? "audio/amr-wb" : "audio/3gpp").h(t).c(1).l(z ? AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND : 8000).a());
            }
            if (this.f == 0) {
                try {
                    int iA = a((wz) a80Var);
                    this.e = iA;
                    this.f = iA;
                    if (this.i == -1) {
                        this.h = wzVar.a();
                        this.i = this.e;
                    }
                    if (this.i == this.e) {
                        this.j++;
                    }
                    iB = this.m.b(a80Var, this.f, true);
                    if (iB == -1) {
                        i = -1;
                    } else {
                        i3 = this.f - iB;
                        this.f = i3;
                        if (i3 <= 0) {
                            this.m.a(this.k + this.d, 1, this.e, 0, null);
                            this.d += 20000;
                        }
                        i = 0;
                    }
                } catch (EOFException unused) {
                }
            } else {
                iB = this.m.b(a80Var, this.f, true);
                if (iB == -1) {
                    i = -1;
                } else {
                    i3 = this.f - iB;
                    this.f = i3;
                    if (i3 <= 0) {
                        this.m.a(this.k + this.d, 1, this.e, 0, null);
                        this.d += 20000;
                    }
                    i = 0;
                }
            }
            long jB = wzVar.b();
            if (!this.g) {
                int i5 = this.b;
                if ((i5 & 1) != 0 && jB != -1 && ((i2 = this.i) == -1 || i2 == this.e)) {
                    if (this.j >= 20 || i == -1) {
                        wr wrVar = new wr((int) ((((long) i2) * 8000000) / 20000), i2, jB, this.h, (i5 & 2) != 0);
                        this.n = wrVar;
                        this.l.a(wrVar);
                        this.g = true;
                    }
                } else {
                    ex1.b bVar = new ex1.b(C.TIME_UNSET, 0L);
                    this.n = bVar;
                    this.l.a(bVar);
                    this.g = true;
                }
            }
            return i;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j, long j2) {
        this.d = 0L;
        this.e = 0;
        this.f = 0;
        if (j != 0) {
            ex1 ex1Var = this.n;
            if (ex1Var instanceof wr) {
                this.k = ((wr) ex1Var).c(j);
                return;
            }
        }
        this.k = 0L;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar = (wz) a80Var;
        byte[] bArr = r;
        wzVar.c();
        byte[] bArr2 = new byte[bArr.length];
        wzVar.b(bArr2, 0, bArr.length, false);
        if (Arrays.equals(bArr2, bArr)) {
            this.c = false;
            wzVar.a(bArr.length);
        } else {
            byte[] bArr3 = s;
            wzVar.c();
            byte[] bArr4 = new byte[bArr3.length];
            wzVar.b(bArr4, 0, bArr3.length, false);
            if (!Arrays.equals(bArr4, bArr3)) {
                return false;
            }
            this.c = true;
            wzVar.a(bArr3.length);
        }
        return true;
    }

    public static z70[] a() {
        return new z70[]{new dd()};
    }
}
