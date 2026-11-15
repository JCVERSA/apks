package com.yandex.mobile.ads.impl;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public final class za extends uk {
    private final wi f;
    private final jp g;

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public final int hashCode() {
            return (((int) this.a) * 31) + ((int) this.b);
        }
    }

    public static class b implements h70.b {
        public b(int i) {
            this((Object) null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final h70[] a(h70.a[] aVarArr, wi wiVar) {
            kk0 kk0VarA = za.a(aVarArr);
            h70[] h70VarArr = new h70[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                h70.a aVar = aVarArr[i];
                if (aVar != null) {
                    int[] iArr = aVar.b;
                    if (iArr.length != 0) {
                        h70VarArr[i] = iArr.length == 1 ? new tb0(iArr[0], aVar.c, aVar.a) : new za(aVar.a, iArr, aVar.c, wiVar, 10000, 25000, (kk0) kk0VarA.get(i), jp.a);
                    }
                }
            }
            return h70VarArr;
        }

        public b(Object obj) {
        }
    }

    public za(y52 y52Var, int[] iArr, int i, wi wiVar, long j, long j2, kk0 kk0Var, jp jpVar) {
        super(y52Var, iArr);
        if (j2 < j) {
            et0.d("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
        }
        this.f = wiVar;
        kk0.a((Collection) kk0Var);
        this.g = jpVar;
    }

    @Override
    public final void a(float f) {
    }

    @Override
    @CallSuper
    public final void c() {
    }

    @Override
    @CallSuper
    public final void d() {
    }

    private static void a(ArrayList arrayList, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            kk0.a aVar = (kk0.a) arrayList.get(i);
            if (aVar != null) {
                aVar.b(new a(j, jArr[i]));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static kk0<kk0<a>> a(h70.a[] aVarArr) {
        double dLog;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (h70.a aVar : aVarArr) {
            if (aVar != null && aVar.b.length > 1) {
                kk0.a aVarG = kk0.g();
                aVarG.b(new a(0L, 0L));
                arrayList.add(aVarG);
            } else {
                arrayList.add(null);
            }
        }
        int length = aVarArr.length;
        long[][] jArr = new long[length][];
        for (int i2 = 0; i2 < aVarArr.length; i2++) {
            h70.a aVar2 = aVarArr[i2];
            if (aVar2 == null) {
                jArr[i2] = new long[0];
            } else {
                jArr[i2] = new long[aVar2.b.length];
                int i3 = 0;
                while (true) {
                    int[] iArr = aVar2.b;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    jArr[i2][i3] = aVar2.a.a(iArr[i3]).i;
                    i3++;
                }
                Arrays.sort(jArr[i2]);
            }
        }
        int[] iArr2 = new int[length];
        long[] jArr2 = new long[length];
        for (int i4 = 0; i4 < length; i4++) {
            long[] jArr3 = jArr[i4];
            jArr2[i4] = jArr3.length == 0 ? 0L : jArr3[0];
        }
        a(arrayList, jArr2);
        t31 t31VarB = v31.a().a().b();
        int i5 = 0;
        while (i5 < length) {
            long[] jArr4 = jArr[i5];
            if (jArr4.length > 1) {
                int length2 = jArr4.length;
                double[] dArr = new double[length2];
                int i6 = i;
                while (true) {
                    long[] jArr5 = jArr[i5];
                    dLog = 0.0d;
                    if (i6 >= jArr5.length) {
                        break;
                    }
                    long j = jArr5[i6];
                    if (j != -1) {
                        dLog = Math.log(j);
                    }
                    dArr[i6] = dLog;
                    i6++;
                }
                int i7 = length2 - 1;
                double d = dArr[i7] - dArr[i];
                int i8 = i;
                while (i8 < i7) {
                    double d2 = dArr[i8];
                    i8++;
                    t31VarB.put(Double.valueOf(d == dLog ? 1.0d : (((d2 + dArr[i8]) * 0.5d) - dArr[i]) / d), Integer.valueOf(i5));
                    i = 0;
                    dLog = 0.0d;
                }
            }
            i5++;
            i = 0;
        }
        kk0 kk0VarA = kk0.a(t31VarB.values());
        for (int i9 = 0; i9 < kk0VarA.size(); i9++) {
            int iIntValue = ((Integer) kk0VarA.get(i9)).intValue();
            int i10 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i10;
            jArr2[iIntValue] = jArr[iIntValue][i10];
            a(arrayList, jArr2);
        }
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            if (arrayList.get(i11) != null) {
                jArr2[i11] = jArr2[i11] * 2;
            }
        }
        a(arrayList, jArr2);
        kk0.a aVarG2 = kk0.g();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            kk0.a aVar3 = (kk0.a) arrayList.get(i12);
            aVarG2.b((Object) (aVar3 == null ? kk0.h() : aVar3.a()));
        }
        return aVarG2.a();
    }
}
