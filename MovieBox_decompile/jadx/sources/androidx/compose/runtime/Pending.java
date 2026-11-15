package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

final class Pending {

    private final List f3310a;

    private final int f3311b;

    private int f3312c;

    private final List f3313d;

    private final androidx.collection.e0 f3314e;

    private final Lazy f3315f;

    public Pending(List list, int i10) {
        this.f3310a = list;
        this.f3311b = i10;
        if (!(i10 >= 0)) {
            o1.a("Invalid start index");
        }
        this.f3313d = new ArrayList();
        androidx.collection.e0 e0Var = new androidx.collection.e0(0, 1, null);
        int size = list.size();
        int iC = 0;
        for (int i11 = 0; i11 < size; i11++) {
            q0 q0Var = (q0) this.f3310a.get(i11);
            e0Var.t(q0Var.b(), new i0(i11, iC, q0Var.c()));
            iC += q0Var.c();
        }
        this.f3314e = e0Var;
        this.f3315f = LazyKt.b(new Function0<h1>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                return h1.a(m84invokeSAeQiB4());
            }

            public final androidx.collection.n0 m84invokeSAeQiB4() {
                androidx.collection.n0 n0VarI = k.I(this.this$0.b().size());
                Pending pending = this.this$0;
                int size2 = pending.b().size();
                for (int i12 = 0; i12 < size2; i12++) {
                    q0 q0Var2 = (q0) pending.b().get(i12);
                    h1.f(n0VarI, k.A(q0Var2), q0Var2);
                }
                return n0VarI;
            }
        });
    }

    public final int a() {
        return this.f3312c;
    }

    public final List b() {
        return this.f3310a;
    }

    public final androidx.collection.n0 c() {
        return ((h1) this.f3315f.getValue()).h();
    }

    public final q0 d(int i10, Object obj) {
        return (q0) h1.e(c(), obj != null ? new p0(Integer.valueOf(i10), obj) : Integer.valueOf(i10));
    }

    public final int e() {
        return this.f3311b;
    }

    public final List f() {
        return this.f3313d;
    }

    public final int g(q0 q0Var) {
        i0 i0Var = (i0) this.f3314e.c(q0Var.b());
        if (i0Var != null) {
            return i0Var.b();
        }
        return -1;
    }

    public final boolean h(q0 q0Var) {
        return this.f3313d.add(q0Var);
    }

    public final void i(q0 q0Var, int i10) {
        this.f3314e.t(q0Var.b(), new i0(-1, i10, 0));
    }

    public final void j(int i10, int i11, int i12) {
        char c10 = 7;
        long j10 = -9187201950435737472L;
        if (i10 > i11) {
            androidx.collection.e0 e0Var = this.f3314e;
            Object[] objArr = e0Var.f1996c;
            long[] jArr = e0Var.f1994a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i13 = 0;
            while (true) {
                long j11 = jArr[i13];
                if ((((~j11) << 7) & j11 & j10) != j10) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j11 & 255) < 128) {
                            i0 i0Var = (i0) objArr[(i13 << 3) + i15];
                            int iB = i0Var.b();
                            if (i10 <= iB && iB < i10 + i12) {
                                i0Var.e((iB - i10) + i11);
                            } else if (i11 <= iB && iB < i10) {
                                i0Var.e(iB + i12);
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i14 != 8) {
                        return;
                    }
                }
                if (i13 == length) {
                    return;
                }
                i13++;
                j10 = -9187201950435737472L;
            }
        } else {
            if (i11 <= i10) {
                return;
            }
            androidx.collection.e0 e0Var2 = this.f3314e;
            Object[] objArr2 = e0Var2.f1996c;
            long[] jArr2 = e0Var2.f1994a;
            int length2 = jArr2.length - 2;
            if (length2 < 0) {
                return;
            }
            int i16 = 0;
            while (true) {
                long j12 = jArr2[i16];
                if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i17 = 8 - ((~(i16 - length2)) >>> 31);
                    for (int i18 = 0; i18 < i17; i18++) {
                        if ((j12 & 255) < 128) {
                            i0 i0Var2 = (i0) objArr2[(i16 << 3) + i18];
                            int iB2 = i0Var2.b();
                            if (i10 <= iB2 && iB2 < i10 + i12) {
                                i0Var2.e((iB2 - i10) + i11);
                            } else if (i10 + 1 <= iB2 && iB2 < i11) {
                                i0Var2.e(iB2 - i12);
                            }
                        }
                        j12 >>= 8;
                    }
                    if (i17 != 8) {
                        return;
                    }
                }
                if (i16 == length2) {
                    return;
                }
                i16++;
                c10 = 7;
            }
        }
    }

    public final void k(int i10, int i11) {
        char c10 = 7;
        long j10 = -9187201950435737472L;
        if (i10 > i11) {
            androidx.collection.e0 e0Var = this.f3314e;
            Object[] objArr = e0Var.f1996c;
            long[] jArr = e0Var.f1994a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i12 = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & j10) != j10) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((j11 & 255) < 128) {
                            i0 i0Var = (i0) objArr[(i12 << 3) + i14];
                            int iC = i0Var.c();
                            if (iC == i10) {
                                i0Var.f(i11);
                            } else if (i11 <= iC && iC < i10) {
                                i0Var.f(iC + 1);
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        return;
                    }
                }
                if (i12 == length) {
                    return;
                }
                i12++;
                j10 = -9187201950435737472L;
            }
        } else {
            if (i11 <= i10) {
                return;
            }
            androidx.collection.e0 e0Var2 = this.f3314e;
            Object[] objArr2 = e0Var2.f1996c;
            long[] jArr2 = e0Var2.f1994a;
            int length2 = jArr2.length - 2;
            if (length2 < 0) {
                return;
            }
            int i15 = 0;
            while (true) {
                long j12 = jArr2[i15];
                if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i16 = 8 - ((~(i15 - length2)) >>> 31);
                    for (int i17 = 0; i17 < i16; i17++) {
                        if ((j12 & 255) < 128) {
                            i0 i0Var2 = (i0) objArr2[(i15 << 3) + i17];
                            int iC2 = i0Var2.c();
                            if (iC2 == i10) {
                                i0Var2.f(i11);
                            } else if (i10 + 1 <= iC2 && iC2 < i11) {
                                i0Var2.f(iC2 - 1);
                            }
                        }
                        j12 >>= 8;
                    }
                    if (i16 != 8) {
                        return;
                    }
                }
                if (i15 == length2) {
                    return;
                }
                i15++;
                c10 = 7;
            }
        }
    }

    public final void l(int i10) {
        this.f3312c = i10;
    }

    public final int m(q0 q0Var) {
        i0 i0Var = (i0) this.f3314e.c(q0Var.b());
        if (i0Var != null) {
            return i0Var.c();
        }
        return -1;
    }

    public final boolean n(int i10, int i11) {
        int iB;
        i0 i0Var = (i0) this.f3314e.c(i10);
        if (i0Var == null) {
            return false;
        }
        int iB2 = i0Var.b();
        int iA = i11 - i0Var.a();
        i0Var.d(i11);
        if (iA == 0) {
            return true;
        }
        androidx.collection.e0 e0Var = this.f3314e;
        Object[] objArr = e0Var.f1996c;
        long[] jArr = e0Var.f1994a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i12 = 0;
        while (true) {
            long j10 = jArr[i12];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8 - ((~(i12 - length)) >>> 31);
                for (int i14 = 0; i14 < i13; i14++) {
                    if ((255 & j10) < 128) {
                        i0 i0Var2 = (i0) objArr[(i12 << 3) + i14];
                        if (i0Var2.b() >= iB2 && !Intrinsics.c(i0Var2, i0Var) && (iB = i0Var2.b() + iA) >= 0) {
                            i0Var2.e(iB);
                        }
                    }
                    j10 >>= 8;
                }
                if (i13 != 8) {
                    return true;
                }
            }
            if (i12 == length) {
                return true;
            }
            i12++;
        }
    }

    public final int o(q0 q0Var) {
        i0 i0Var = (i0) this.f3314e.c(q0Var.b());
        return i0Var != null ? i0Var.a() : q0Var.c();
    }
}
