package i2;

import android.util.Pair;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.x3;
import androidx.media3.exoplayer.y3;
import androidx.media3.exoplayer.z3;
import java.util.Arrays;
import java.util.Objects;

public abstract class b0 extends e0 {

    private a f61625c;

    public static final class a {

        private final int f61626a;

        private final String[] f61627b;

        private final int[] f61628c;

        private final f2.z[] f61629d;

        private final int[] f61630e;

        private final int[][][] f61631f;

        private final f2.z f61632g;

        a(String[] strArr, int[] iArr, f2.z[] zVarArr, int[] iArr2, int[][][] iArr3, f2.z zVar) {
            this.f61627b = strArr;
            this.f61628c = iArr;
            this.f61629d = zVarArr;
            this.f61631f = iArr3;
            this.f61630e = iArr2;
            this.f61632g = zVar;
            this.f61626a = iArr.length;
        }

        public int a(int i10, int i11, boolean z10) {
            int i12 = this.f61629d[i10].b(i11).f9659a;
            int[] iArr = new int[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                int iG = g(i10, i11, i14);
                if (iG == 4 || (z10 && iG == 3)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            return b(i10, i11, Arrays.copyOf(iArr, i13));
        }

        public int b(int i10, int i11, int[] iArr) {
            int i12 = 0;
            int iMin = 16;
            String str = null;
            boolean z10 = false;
            int i13 = 0;
            while (i12 < iArr.length) {
                String str2 = this.f61629d[i10].b(i11).a(iArr[i12]).f9849o;
                int i14 = i13 + 1;
                if (i13 == 0) {
                    str = str2;
                } else {
                    z10 |= !Objects.equals(str, str2);
                }
                iMin = Math.min(iMin, x3.f(this.f61631f[i10][i11][i12]));
                i12++;
                i13 = i14;
            }
            return z10 ? Math.min(iMin, this.f61630e[i10]) : iMin;
        }

        public int c(int i10, int i11, int i12) {
            return this.f61631f[i10][i11][i12];
        }

        public int d() {
            return this.f61626a;
        }

        public int e(int i10) {
            return this.f61628c[i10];
        }

        public f2.z f(int i10) {
            return this.f61629d[i10];
        }

        public int g(int i10, int i11, int i12) {
            return x3.i(c(i10, i11, i12));
        }

        public f2.z h() {
            return this.f61632g;
        }
    }

    private static int n(y3[] y3VarArr, androidx.media3.common.f0 f0Var, int[] iArr, boolean z10) {
        int length = y3VarArr.length;
        int i10 = 0;
        boolean z11 = true;
        for (int i11 = 0; i11 < y3VarArr.length; i11++) {
            y3 y3Var = y3VarArr[i11];
            int iMax = 0;
            for (int i12 = 0; i12 < f0Var.f9659a; i12++) {
                iMax = Math.max(iMax, x3.i(y3Var.a(f0Var.a(i12))));
            }
            boolean z12 = iArr[i11] == 0;
            if (iMax > i10 || (iMax == i10 && z10 && !z11 && z12)) {
                length = i11;
                z11 = z12;
                i10 = iMax;
            }
        }
        return length;
    }

    private static int[] o(y3 y3Var, androidx.media3.common.f0 f0Var) {
        int[] iArr = new int[f0Var.f9659a];
        for (int i10 = 0; i10 < f0Var.f9659a; i10++) {
            iArr[i10] = y3Var.a(f0Var.a(i10));
        }
        return iArr;
    }

    private static int[] p(y3[] y3VarArr) {
        int length = y3VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = y3VarArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override
    public final void i(Object obj) {
        this.f61625c = (a) obj;
    }

    @Override
    public final f0 k(y3[] y3VarArr, f2.z zVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
        int[] iArr = new int[y3VarArr.length + 1];
        int length = y3VarArr.length + 1;
        androidx.media3.common.f0[][] f0VarArr = new androidx.media3.common.f0[length][];
        int[][][] iArr2 = new int[y3VarArr.length + 1][][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = zVar.f59968a;
            f0VarArr[i10] = new androidx.media3.common.f0[i11];
            iArr2[i10] = new int[i11][];
        }
        int[] iArrP = p(y3VarArr);
        for (int i12 = 0; i12 < zVar.f59968a; i12++) {
            androidx.media3.common.f0 f0VarB = zVar.b(i12);
            int iN = n(y3VarArr, f0VarB, iArr, f0VarB.f9661c == 5);
            int[] iArrO = iN == y3VarArr.length ? new int[f0VarB.f9659a] : o(y3VarArr[iN], f0VarB);
            int i13 = iArr[iN];
            f0VarArr[iN][i13] = f0VarB;
            iArr2[iN][i13] = iArrO;
            iArr[iN] = i13 + 1;
        }
        f2.z[] zVarArr = new f2.z[y3VarArr.length];
        String[] strArr = new String[y3VarArr.length];
        int[] iArr3 = new int[y3VarArr.length];
        for (int i14 = 0; i14 < y3VarArr.length; i14++) {
            int i15 = iArr[i14];
            zVarArr[i14] = new f2.z((androidx.media3.common.f0[]) a1.X0(f0VarArr[i14], i15));
            iArr2[i14] = (int[][]) a1.X0(iArr2[i14], i15);
            strArr[i14] = y3VarArr[i14].getName();
            iArr3[i14] = y3VarArr[i14].getTrackType();
        }
        a aVar = new a(strArr, iArr3, zVarArr, iArrP, iArr2, new f2.z((androidx.media3.common.f0[]) a1.X0(f0VarArr[y3VarArr.length], iArr[y3VarArr.length])));
        Pair pairQ = q(aVar, iArr2, iArrP, bVar, e0Var);
        return new f0((z3[]) pairQ.first, (z[]) pairQ.second, d0.a(aVar, (c0[]) pairQ.second), aVar);
    }

    protected abstract Pair q(a aVar, int[][][] iArr, int[] iArr2, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var);
}
