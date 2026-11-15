package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;

public final class df0 implements b50 {
    private static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    @Nullable
    private final e92 a;
    private b f;
    private long g;
    private String h;
    private a62 i;
    private boolean j;
    private final boolean[] c = new boolean[4];
    private final a d = new a();
    private long k = C.TIME_UNSET;

    @Nullable
    private final d41 e = new d41(178);

    @Nullable
    private final ag1 b = new ag1();

    public static final class a {
        private static final byte[] f = {0, 0, 1};
        private boolean a;
        private int b;
        public int c;
        public int d;
        public byte[] e = new byte[128];

        public final void a(byte[] bArr, int i, int i2) {
            if (this.a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i4 = this.c + i3;
                if (length < i4) {
                    this.e = Arrays.copyOf(bArr2, i4 * 2);
                }
                System.arraycopy(bArr, i, this.e, this.c, i3);
                this.c += i3;
            }
        }
    }

    public static final class b {
        private final a62 a;
        private boolean b;
        private boolean c;
        private boolean d;
        private int e;
        private int f;
        private long g;
        private long h;

        public b(a62 a62Var) {
            this.a = a62Var;
        }
    }

    public df0(@Nullable e92 e92Var) {
        this.a = e92Var;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x02b1  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(ag1 ag1Var) {
        char c;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int i5 = 2;
        char c2 = 3;
        boolean z = true;
        if (this.f == null) {
            throw new IllegalStateException();
        }
        if (this.i == null) {
            throw new IllegalStateException();
        }
        int iD = ag1Var.d();
        int iE = ag1Var.e();
        byte[] bArrC = ag1Var.c();
        this.g += (long) ag1Var.a();
        this.i.a(ag1Var.a(), ag1Var);
        while (true) {
            int iA = e41.a(bArrC, iD, iE, this.c);
            if (iA == iE) {
                if (!this.j) {
                    this.d.a(bArrC, iD, iE);
                }
                b bVar = this.f;
                if (bVar.c) {
                    int i6 = bVar.f;
                    int i7 = (iD + 1) - i6;
                    if (i7 < iE) {
                        if (((bArrC[i7] & 192) >> 6) != 0) {
                            z = false;
                        }
                        bVar.d = z;
                        bVar.c = false;
                    } else {
                        bVar.f = (iE - iD) + i6;
                    }
                }
                d41 d41Var = this.e;
                if (d41Var != null) {
                    d41Var.a(bArrC, iD, iE);
                    return;
                }
                return;
            }
            int i8 = iA + 3;
            byte b2 = ag1Var.c()[i8];
            int i9 = b2 & 255;
            int i10 = iA - iD;
            if (this.j) {
                c = c2;
                i = i8;
            } else {
                if (i10 > 0) {
                    this.d.a(bArrC, iD, iA);
                }
                int i11 = i10 < 0 ? -i10 : 0;
                a aVar = this.d;
                int i12 = aVar.b;
                if (i12 == 0) {
                    i = i8;
                    i4 = 0;
                    if (i9 == 176) {
                        aVar.b = 1;
                        aVar.a = true;
                    }
                    c = 3;
                    aVar.a(a.f, i4, 3);
                } else if (i12 == z) {
                    i = i8;
                    i4 = 0;
                    if (i9 != 181) {
                        et0.d("H263Reader", "Unexpected start code value");
                        aVar.a = false;
                        aVar.c = 0;
                        aVar.b = 0;
                    } else {
                        aVar.b = 2;
                    }
                } else if (i12 == i5) {
                    i = i8;
                    i4 = 0;
                    if (i9 > 31) {
                        et0.d("H263Reader", "Unexpected start code value");
                        aVar.a = false;
                        aVar.c = 0;
                        aVar.b = 0;
                    } else {
                        aVar.b = 3;
                    }
                } else if (i12 == 3) {
                    i = i8;
                    if ((b2 & 240) != 32) {
                        et0.d("H263Reader", "Unexpected start code value");
                        i4 = 0;
                        aVar.a = false;
                        aVar.c = 0;
                        aVar.b = 0;
                    } else {
                        i4 = 0;
                        aVar.d = aVar.c;
                        aVar.b = 4;
                    }
                } else {
                    if (i12 != 4) {
                        throw new IllegalStateException();
                    }
                    if (i9 == 179 || i9 == 181) {
                        aVar.c -= i11;
                        aVar.a = false;
                        a62 a62Var = this.i;
                        int i13 = aVar.d;
                        String str = this.h;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(aVar.e, aVar.c);
                        zf1 zf1Var = new zf1(bArrCopyOf.length, bArrCopyOf);
                        zf1Var.e(i13);
                        zf1Var.e(4);
                        zf1Var.h();
                        zf1Var.d(8);
                        if (zf1Var.f()) {
                            zf1Var.d(4);
                            zf1Var.d(3);
                        }
                        int iB = zf1Var.b(4);
                        i = i8;
                        if (iB == 15) {
                            int iB2 = zf1Var.b(8);
                            int iB3 = zf1Var.b(8);
                            if (iB3 == 0) {
                                et0.d("H263Reader", "Invalid aspect ratio");
                                f = 1.0f;
                            } else {
                                f = iB2 / iB3;
                            }
                        } else {
                            float[] fArr = l;
                            if (iB < 7) {
                                f = fArr[iB];
                            } else {
                                et0.d("H263Reader", "Invalid aspect ratio");
                                f = 1.0f;
                            }
                        }
                        if (zf1Var.f()) {
                            zf1Var.d(2);
                            zf1Var.d(1);
                            if (zf1Var.f()) {
                                zf1Var.d(15);
                                zf1Var.h();
                                zf1Var.d(15);
                                zf1Var.h();
                                zf1Var.d(15);
                                zf1Var.h();
                                zf1Var.d(3);
                                zf1Var.d(11);
                                zf1Var.h();
                                zf1Var.d(15);
                                zf1Var.h();
                            }
                        }
                        if (zf1Var.b(2) != 0) {
                            et0.d("H263Reader", "Unhandled video object layer shape");
                        }
                        zf1Var.h();
                        int iB4 = zf1Var.b(16);
                        zf1Var.h();
                        if (zf1Var.f()) {
                            if (iB4 == 0) {
                                et0.d("H263Reader", "Invalid vop_increment_time_resolution");
                            } else {
                                int i14 = 0;
                                for (int i15 = iB4 - 1; i15 > 0; i15 >>= 1) {
                                    i14++;
                                }
                                zf1Var.d(i14);
                            }
                        }
                        zf1Var.h();
                        int iB5 = zf1Var.b(13);
                        zf1Var.h();
                        int iB6 = zf1Var.b(13);
                        zf1Var.h();
                        zf1Var.h();
                        a62Var.a(new jc0.a().b(str).e("video/mp4v-es").o(iB5).f(iB6).b(f).a(Collections.singletonList(bArrCopyOf)).a());
                        this.j = true;
                        c = 3;
                    } else {
                        i = i8;
                        i4 = 0;
                    }
                }
                c = 3;
                aVar.a(a.f, i4, 3);
            }
            b bVar2 = this.f;
            if (bVar2.c) {
                int i16 = bVar2.f;
                int i17 = (iD + 1) - i16;
                if (i17 < iA) {
                    bVar2.d = ((bArrC[i17] & 192) >> 6) == 0;
                    bVar2.c = false;
                } else {
                    bVar2.f = i16 + i10;
                }
            }
            d41 d41Var2 = this.e;
            if (d41Var2 == null) {
                i2 = 2;
                z = true;
            } else {
                if (i10 > 0) {
                    d41Var2.a(bArrC, iD, iA);
                    i3 = 0;
                } else {
                    i3 = -i10;
                }
                if (this.e.a(i3)) {
                    d41 d41Var3 = this.e;
                    int iA2 = e41.a(d41Var3.e, d41Var3.d);
                    ag1 ag1Var2 = this.b;
                    int i18 = f92.a;
                    ag1Var2.a(iA2, this.e.d);
                    this.a.a(this.k, this.b);
                }
                if (i9 == 178) {
                    i2 = 2;
                    z = true;
                    if (ag1Var.c()[iA + 2] == 1) {
                        this.e.b(i9);
                    }
                } else {
                    i2 = 2;
                    z = true;
                }
            }
            int i19 = iE - iA;
            long j = this.g - ((long) i19);
            b bVar3 = this.f;
            boolean z2 = this.j;
            if (bVar3.e == 182 && z2 && bVar3.b) {
                long j2 = bVar3.h;
                if (j2 != C.TIME_UNSET) {
                    bVar3.a.a(j2, bVar3.d ? 1 : 0, (int) (j - bVar3.g), i19, null);
                }
            }
            if (bVar3.e != 179) {
                bVar3.g = j;
            }
            b bVar4 = this.f;
            long j3 = this.k;
            bVar4.e = i9;
            bVar4.d = false;
            bVar4.b = (i9 == 182 || i9 == 179) ? z : false;
            bVar4.c = i9 == 182 ? z : false;
            bVar4.f = 0;
            bVar4.h = j3;
            i5 = i2;
            c2 = c;
            iD = i;
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.h = dVar.b();
        a62 a62VarA = b80Var.a(dVar.c(), 2);
        this.i = a62VarA;
        this.f = new b(a62VarA);
        e92 e92Var = this.a;
        if (e92Var != null) {
            e92Var.a(b80Var, dVar);
        }
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override
    public final void a() {
        e41.a(this.c);
        a aVar = this.d;
        aVar.a = false;
        aVar.c = 0;
        aVar.b = 0;
        b bVar = this.f;
        if (bVar != null) {
            bVar.b = false;
            bVar.c = false;
            bVar.d = false;
            bVar.e = -1;
        }
        d41 d41Var = this.e;
        if (d41Var != null) {
            d41Var.b();
        }
        this.g = 0L;
        this.k = C.TIME_UNSET;
    }
}
