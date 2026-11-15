package defpackage;

import android.util.Pair;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;
import java.util.Arrays;

public abstract class hy5 extends rva {
    public a c;

    public static final class a {
        public final int a;
        public final String[] b;
        public final int[] c;
        public final eva[] d;
        public final int[] e;
        public final int[][][] f;
        public final eva g;

        public a(String[] strArr, int[] iArr, eva[] evaVarArr, int[] iArr2, int[][][] iArr3, eva evaVar) {
            this.b = strArr;
            this.c = iArr;
            this.d = evaVarArr;
            this.f = iArr3;
            this.e = iArr2;
            this.g = evaVar;
            this.a = iArr.length;
        }

        public int a(int i, int i2, boolean z) {
            int i3 = this.d[i].b(i2).b;
            int[] iArr = new int[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int iG = g(i, i2, i5);
                if (iG == 4 || (z && iG == 3)) {
                    iArr[i4] = i5;
                    i4++;
                }
            }
            return b(i, i2, Arrays.copyOf(iArr, i4));
        }

        public int b(int i, int i2, int[] iArr) {
            int i3 = 0;
            int iMin = 16;
            String str = null;
            boolean z = false;
            int i4 = 0;
            while (i3 < iArr.length) {
                String str2 = this.d[i].b(i2).c(iArr[i3]).m;
                int i5 = i4 + 1;
                if (i4 == 0) {
                    str = str2;
                } else {
                    z |= !blb.c(str, str2);
                }
                iMin = Math.min(iMin, ks8.getAdaptiveSupport(this.f[i][i2][i3]));
                i3++;
                i4 = i5;
            }
            return z ? Math.min(iMin, this.e[i]) : iMin;
        }

        public int c(int i, int i2, int i3) {
            return this.f[i][i2][i3];
        }

        public int d() {
            return this.a;
        }

        public int e(int i) {
            return this.c[i];
        }

        public eva f(int i) {
            return this.d[i];
        }

        public int g(int i, int i2, int i3) {
            return ks8.getFormatSupport(c(i, i2, i3));
        }

        public eva h() {
            return this.g;
        }
    }

    public static int i(ks8[] ks8VarArr, zua zuaVar, int[] iArr, boolean z) {
        int length = ks8VarArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < ks8VarArr.length; i2++) {
            ks8 ks8Var = ks8VarArr[i2];
            int iMax = 0;
            for (int i3 = 0; i3 < zuaVar.b; i3++) {
                iMax = Math.max(iMax, ks8.getFormatSupport(ks8Var.a(zuaVar.c(i3))));
            }
            boolean z3 = iArr[i2] == 0;
            if (iMax > i || (iMax == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = iMax;
            }
        }
        return length;
    }

    public static int[] j(ks8 ks8Var, zua zuaVar) {
        int[] iArr = new int[zuaVar.b];
        for (int i = 0; i < zuaVar.b; i++) {
            iArr[i] = ks8Var.a(zuaVar.c(i));
        }
        return iArr;
    }

    public static int[] k(ks8[] ks8VarArr) {
        int length = ks8VarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ks8VarArr[i].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override
    public final void e(Object obj) {
        this.c = (a) obj;
    }

    @Override
    public final sva g(ks8[] ks8VarArr, eva evaVar, i.b bVar, a0 a0Var) {
        int[] iArr = new int[ks8VarArr.length + 1];
        int length = ks8VarArr.length + 1;
        zua[][] zuaVarArr = new zua[length][];
        int[][][] iArr2 = new int[ks8VarArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = evaVar.b;
            zuaVarArr[i] = new zua[i2];
            iArr2[i] = new int[i2][];
        }
        int[] iArrK = k(ks8VarArr);
        for (int i3 = 0; i3 < evaVar.b; i3++) {
            zua zuaVarB = evaVar.b(i3);
            int i4 = i(ks8VarArr, zuaVarB, iArr, zuaVarB.d == 5);
            int[] iArrJ = i4 == ks8VarArr.length ? new int[zuaVarB.b] : j(ks8VarArr[i4], zuaVarB);
            int i5 = iArr[i4];
            zuaVarArr[i4][i5] = zuaVarB;
            iArr2[i4][i5] = iArrJ;
            iArr[i4] = i5 + 1;
        }
        eva[] evaVarArr = new eva[ks8VarArr.length];
        String[] strArr = new String[ks8VarArr.length];
        int[] iArr3 = new int[ks8VarArr.length];
        for (int i6 = 0; i6 < ks8VarArr.length; i6++) {
            int i7 = iArr[i6];
            evaVarArr[i6] = new eva((zua[]) blb.x0(zuaVarArr[i6], i7));
            iArr2[i6] = (int[][]) blb.x0(iArr2[i6], i7);
            strArr[i6] = ks8VarArr[i6].getName();
            iArr3[i6] = ks8VarArr[i6].getTrackType();
        }
        a aVar = new a(strArr, iArr3, evaVarArr, iArrK, iArr2, new eva((zua[]) blb.x0(zuaVarArr[ks8VarArr.length], iArr[ks8VarArr.length])));
        Pair pairL = l(aVar, iArr2, iArrK, bVar, a0Var);
        return new sva((ls8[]) pairL.first, (qi3[]) pairL.second, qva.a(aVar, (hva[]) pairL.second), aVar);
    }

    public abstract Pair l(a aVar, int[][][] iArr, int[] iArr2, i.b bVar, a0 a0Var);
}
