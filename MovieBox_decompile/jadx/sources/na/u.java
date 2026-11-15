package na;

import android.util.Pair;
import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.b3;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.z2;
import java.util.Arrays;

public abstract class u extends b0 {

    private a f67099c;

    public static final class a {

        private final int f67100a;

        private final String[] f67101b;

        private final int[] f67102c;

        private final v9.y[] f67103d;

        private final int[] f67104e;

        private final int[][][] f67105f;

        private final v9.y f67106g;

        a(String[] strArr, int[] iArr, v9.y[] yVarArr, int[] iArr2, int[][][] iArr3, v9.y yVar) {
            this.f67101b = strArr;
            this.f67102c = iArr;
            this.f67103d = yVarArr;
            this.f67105f = iArr3;
            this.f67104e = iArr2;
            this.f67106g = yVar;
            this.f67100a = iArr.length;
        }

        public int a(int i10, int i11, boolean z10) {
            int i12 = this.f67103d[i10].b(i11).f73554a;
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
                String str2 = this.f67103d[i10].b(i11).c(iArr[i12]).f24901l;
                int i14 = i13 + 1;
                if (i13 == 0) {
                    str = str2;
                } else {
                    z10 |= !p0.c(str, str2);
                }
                iMin = Math.min(iMin, z2.d(this.f67105f[i10][i11][i12]));
                i12++;
                i13 = i14;
            }
            return z10 ? Math.min(iMin, this.f67104e[i10]) : iMin;
        }

        public int c(int i10, int i11, int i12) {
            return this.f67105f[i10][i11][i12];
        }

        public int d() {
            return this.f67100a;
        }

        public int e(int i10) {
            return this.f67102c[i10];
        }

        public v9.y f(int i10) {
            return this.f67103d[i10];
        }

        public int g(int i10, int i11, int i12) {
            return z2.f(c(i10, i11, i12));
        }

        public v9.y h() {
            return this.f67106g;
        }
    }

    private static int k(a3[] a3VarArr, v9.w wVar, int[] iArr, boolean z10) {
        int length = a3VarArr.length;
        int i10 = 0;
        boolean z11 = true;
        for (int i11 = 0; i11 < a3VarArr.length; i11++) {
            a3 a3Var = a3VarArr[i11];
            int iMax = 0;
            for (int i12 = 0; i12 < wVar.f73554a; i12++) {
                iMax = Math.max(iMax, z2.f(a3Var.a(wVar.c(i12))));
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

    private static int[] l(a3 a3Var, v9.w wVar) {
        int[] iArr = new int[wVar.f73554a];
        for (int i10 = 0; i10 < wVar.f73554a; i10++) {
            iArr[i10] = a3Var.a(wVar.c(i10));
        }
        return iArr;
    }

    private static int[] m(a3[] a3VarArr) {
        int length = a3VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = a3VarArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override
    public final void f(Object obj) {
        this.f67099c = (a) obj;
    }

    @Override
    public final c0 h(a3[] a3VarArr, v9.y yVar, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var) {
        int[] iArr = new int[a3VarArr.length + 1];
        int length = a3VarArr.length + 1;
        v9.w[][] wVarArr = new v9.w[length][];
        int[][][] iArr2 = new int[a3VarArr.length + 1][][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = yVar.f73561a;
            wVarArr[i10] = new v9.w[i11];
            iArr2[i10] = new int[i11][];
        }
        int[] iArrM = m(a3VarArr);
        for (int i12 = 0; i12 < yVar.f73561a; i12++) {
            v9.w wVarB = yVar.b(i12);
            int iK = k(a3VarArr, wVarB, iArr, wVarB.f73556c == 5);
            int[] iArrL = iK == a3VarArr.length ? new int[wVarB.f73554a] : l(a3VarArr[iK], wVarB);
            int i13 = iArr[iK];
            wVarArr[iK][i13] = wVarB;
            iArr2[iK][i13] = iArrL;
            iArr[iK] = i13 + 1;
        }
        v9.y[] yVarArr = new v9.y[a3VarArr.length];
        String[] strArr = new String[a3VarArr.length];
        int[] iArr3 = new int[a3VarArr.length];
        for (int i14 = 0; i14 < a3VarArr.length; i14++) {
            int i15 = iArr[i14];
            yVarArr[i14] = new v9.y((v9.w[]) p0.G0(wVarArr[i14], i15));
            iArr2[i14] = (int[][]) p0.G0(iArr2[i14], i15);
            strArr[i14] = a3VarArr[i14].getName();
            iArr3[i14] = a3VarArr[i14].getTrackType();
        }
        a aVar = new a(strArr, iArr3, yVarArr, iArrM, iArr2, new v9.y((v9.w[]) p0.G0(wVarArr[a3VarArr.length], iArr[a3VarArr.length])));
        Pair pairN = n(aVar, iArr2, iArrM, bVar, l3Var);
        return new c0((b3[]) pairN.first, (s[]) pairN.second, a0.b(aVar, (v[]) pairN.second), aVar);
    }

    protected abstract Pair n(a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var);
}
