package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.List;

public abstract class cu0 extends f62 {

    public static final class a {
        private final int a;
        private final int[] b;
        private final z52[] c;
        private final int[] d;
        private final int[][][] e;
        private final z52 f;

        @VisibleForTesting
        public a(int[] iArr, z52[] z52VarArr, int[] iArr2, int[][][] iArr3, z52 z52Var) {
            this.b = iArr;
            this.c = z52VarArr;
            this.e = iArr3;
            this.d = iArr2;
            this.f = z52Var;
            this.a = iArr.length;
        }

        public final int a(int i, int i2) {
            int i3 = this.c[i].a(i2).b;
            int[] iArr = new int[i3];
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                if (a(i, i2, i6) == 4) {
                    iArr[i5] = i6;
                    i5++;
                }
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i5);
            int iMin = 16;
            int i7 = 0;
            String str = null;
            boolean z = false;
            while (i4 < iArrCopyOf.length) {
                String str2 = this.c[i].a(i2).a(iArrCopyOf[i4]).m;
                int i8 = i7 + 1;
                if (i7 == 0) {
                    str = str2;
                } else {
                    z |= !f92.a(str, str2);
                }
                iMin = Math.min(iMin, this.e[i][i2][i4] & 24);
                i4++;
                i7 = i8;
            }
            return z ? Math.min(iMin, this.d[i]) : iMin;
        }

        public final z52 b(int i) {
            return this.c[i];
        }

        public final z52 b() {
            return this.f;
        }

        public final int a() {
            return this.a;
        }

        public final int a(int i) {
            return this.b[i];
        }

        public final int a(int i, int i2, int i3) {
            return this.e[i][i2][i3] & 7;
        }
    }

    public abstract Pair<ap1[], h70[]> a(a aVar, int[][][] iArr, int[] iArr2, vw0.b bVar, i52 i52Var) throws m60;

    @Override
    public final void a(@Nullable Object obj) {
    }

    @Override
    public final g62 a(zo1[] zo1VarArr, z52 z52Var, vw0.b bVar, i52 i52Var) throws m60 {
        boolean z;
        int[] iArr;
        z52 z52Var2 = z52Var;
        boolean z2 = true;
        int[] iArr2 = new int[zo1VarArr.length + 1];
        int length = zo1VarArr.length + 1;
        y52[][] y52VarArr = new y52[length][];
        int[][][] iArr3 = new int[zo1VarArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = z52Var2.b;
            y52VarArr[i] = new y52[i2];
            iArr3[i] = new int[i2][];
        }
        int length2 = zo1VarArr.length;
        int[] iArr4 = new int[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            iArr4[i3] = zo1VarArr[i3].f();
        }
        int i4 = 0;
        while (i4 < z52Var2.b) {
            y52 y52VarA = z52Var2.a(i4);
            boolean z3 = y52VarA.d == 5 ? z2 : false;
            int length3 = zo1VarArr.length;
            boolean z4 = z2;
            int i5 = 0;
            for (int i6 = 0; i6 < zo1VarArr.length; i6++) {
                zo1 zo1Var = zo1VarArr[i6];
                int iMax = 0;
                for (int i7 = 0; i7 < y52VarA.b; i7++) {
                    iMax = Math.max(iMax, zo1Var.a(y52VarA.a(i7)) & 7);
                }
                boolean z5 = iArr2[i6] == 0;
                if (iMax > i5 || (iMax == i5 && z3 && !z4 && z5)) {
                    z4 = z5;
                    i5 = iMax;
                    length3 = i6;
                }
            }
            if (length3 == zo1VarArr.length) {
                iArr = new int[y52VarA.b];
            } else {
                zo1 zo1Var2 = zo1VarArr[length3];
                int[] iArr5 = new int[y52VarA.b];
                for (int i8 = 0; i8 < y52VarA.b; i8++) {
                    iArr5[i8] = zo1Var2.a(y52VarA.a(i8));
                }
                iArr = iArr5;
            }
            int i9 = iArr2[length3];
            y52VarArr[length3][i9] = y52VarA;
            iArr3[length3][i9] = iArr;
            iArr2[length3] = i9 + 1;
            i4++;
            z2 = true;
            z52Var2 = z52Var;
        }
        boolean z6 = z2;
        z52[] z52VarArr = new z52[zo1VarArr.length];
        String[] strArr = new String[zo1VarArr.length];
        int[] iArr6 = new int[zo1VarArr.length];
        for (int i10 = 0; i10 < zo1VarArr.length; i10++) {
            int i11 = iArr2[i10];
            z52VarArr[i10] = new z52((y52[]) f92.a(i11, y52VarArr[i10]));
            iArr3[i10] = (int[][]) f92.a(i11, iArr3[i10]);
            strArr[i10] = zo1VarArr[i10].getName();
            iArr6[i10] = ((sk) zo1VarArr[i10]).m();
        }
        a aVar = new a(iArr6, z52VarArr, iArr4, iArr3, new z52((y52[]) f92.a(iArr2[zo1VarArr.length], y52VarArr[zo1VarArr.length])));
        Pair<ap1[], h70[]> pairA = a(aVar, iArr3, iArr4, bVar, i52Var);
        c62[] c62VarArr = (c62[]) pairA.second;
        List[] listArr = new List[c62VarArr.length];
        for (int i12 = 0; i12 < c62VarArr.length; i12++) {
            c62 c62Var = c62VarArr[i12];
            listArr[i12] = c62Var != null ? kk0.a(c62Var) : kk0.h();
        }
        kk0.a aVar2 = new kk0.a();
        int i13 = 0;
        while (i13 < aVar.a) {
            z52 z52Var3 = aVar.c[i13];
            List list = listArr[i13];
            int i14 = 0;
            while (i14 < z52Var3.b) {
                y52 y52VarA2 = z52Var3.a(i14);
                boolean z7 = aVar.a(i13, i14) != 0 ? z6 : false;
                int i15 = y52VarA2.b;
                int[] iArr7 = new int[i15];
                boolean[] zArr = new boolean[i15];
                for (int i16 = 0; i16 < y52VarA2.b; i16++) {
                    iArr7[i16] = aVar.a(i13, i14, i16);
                    int i17 = 0;
                    while (true) {
                        if (i17 >= list.size()) {
                            z = false;
                            break;
                        }
                        c62 c62Var2 = (c62) list.get(i17);
                        if (c62Var2.a().equals(y52VarA2) && c62Var2.c(i16) != -1) {
                            z = true;
                            break;
                        }
                        i17++;
                    }
                    zArr[i16] = z;
                }
                aVar2.b(new b72.a(y52VarA2, z7, iArr7, zArr));
                i14++;
                z6 = true;
            }
            i13++;
            z6 = true;
        }
        z52 z52Var4 = aVar.f;
        for (int i18 = 0; i18 < z52Var4.b; i18++) {
            y52 y52VarA3 = z52Var4.a(i18);
            int[] iArr8 = new int[y52VarA3.b];
            Arrays.fill(iArr8, 0);
            aVar2.b(new b72.a(y52VarA3, false, iArr8, new boolean[y52VarA3.b]));
        }
        return new g62((ap1[]) pairA.first, (h70[]) pairA.second, new b72(aVar2.a()), aVar);
    }
}
