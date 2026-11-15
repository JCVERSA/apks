package e0;

import androidx.compose.ui.input.pointer.e;
import androidx.compose.ui.input.pointer.p;
import androidx.compose.ui.input.pointer.w;
import java.util.List;
import kotlin.collections.ArraysKt;
import y.g;

public abstract class c {

    private static boolean f59228a = true;

    private static boolean f59229b;

    public static final void c(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (f59228a) {
            e(aVar, wVar);
        } else {
            d(aVar, wVar);
        }
    }

    private static final void d(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (p.b(wVar)) {
            aVar.f(wVar.h());
            aVar.e();
        }
        long jK = wVar.k();
        List listE = wVar.e();
        int size = listE.size();
        int i10 = 0;
        while (i10 < size) {
            e eVar = (e) listE.get(i10);
            long jQ = g.q(eVar.b(), jK);
            long jB = eVar.b();
            aVar.f(g.r(aVar.c(), jQ));
            aVar.a(eVar.c(), aVar.c());
            i10++;
            jK = jB;
        }
        aVar.f(g.r(aVar.c(), g.q(wVar.h(), jK)));
        aVar.a(wVar.o(), aVar.c());
    }

    private static final void e(androidx.compose.ui.input.pointer.util.a aVar, w wVar) {
        if (p.b(wVar)) {
            aVar.e();
        }
        if (!p.d(wVar)) {
            List listE = wVar.e();
            int size = listE.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = (e) listE.get(i10);
                aVar.a(eVar.c(), eVar.a());
            }
            aVar.a(wVar.o(), wVar.g());
        }
        if (p.d(wVar) && wVar.o() - aVar.d() > 40) {
            aVar.e();
        }
        aVar.g(wVar.o());
    }

    public static final float f(float[] fArr, float[] fArr2, int i10, boolean z10) {
        int i11 = i10 - 1;
        float f10 = fArr2[i11];
        float fSignum = 0.0f;
        int i12 = i11;
        while (i12 > 0) {
            int i13 = i12 - 1;
            float f11 = fArr2[i13];
            if (f10 != f11) {
                float f12 = (z10 ? -fArr[i13] : fArr[i12] - fArr[i13]) / (f10 - f11);
                fSignum += (f12 - (Math.signum(fSignum) * ((float) Math.sqrt(2 * Math.abs(fSignum))))) * Math.abs(f12);
                if (i12 == i11) {
                    fSignum *= 0.5f;
                }
            }
            i12--;
            f10 = f11;
        }
        return Math.signum(fSignum) * ((float) Math.sqrt(2 * Math.abs(fSignum)));
    }

    private static final float g(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < length; i10++) {
            f10 += fArr[i10] * fArr2[i10];
        }
        return f10;
    }

    public static final boolean h() {
        return f59229b;
    }

    public static final float[] i(float[] fArr, float[] fArr2, int i10, int i11, float[] fArr3) {
        int i12 = i11;
        if (i12 < 1) {
            g0.a.a("The degree must be at positive integer");
        }
        if (i10 == 0) {
            g0.a.a("At least one point must be provided");
        }
        if (i12 >= i10) {
            i12 = i10 - 1;
        }
        int i13 = i12 + 1;
        float[][] fArr4 = new float[i13][];
        for (int i14 = 0; i14 < i13; i14++) {
            fArr4[i14] = new float[i10];
        }
        for (int i15 = 0; i15 < i10; i15++) {
            fArr4[0][i15] = 1.0f;
            for (int i16 = 1; i16 < i13; i16++) {
                fArr4[i16][i15] = fArr4[i16 - 1][i15] * fArr[i15];
            }
        }
        float[][] fArr5 = new float[i13][];
        for (int i17 = 0; i17 < i13; i17++) {
            fArr5[i17] = new float[i10];
        }
        float[][] fArr6 = new float[i13][];
        for (int i18 = 0; i18 < i13; i18++) {
            fArr6[i18] = new float[i13];
        }
        int i19 = 0;
        while (i19 < i13) {
            float[] fArr7 = fArr5[i19];
            ArraysKt.i(fArr4[i19], fArr7, 0, 0, i10);
            for (int i20 = 0; i20 < i19; i20++) {
                float[] fArr8 = fArr5[i20];
                float fG = g(fArr7, fArr8);
                for (int i21 = 0; i21 < i10; i21++) {
                    fArr7[i21] = fArr7[i21] - (fArr8[i21] * fG);
                }
            }
            float fSqrt = (float) Math.sqrt(g(fArr7, fArr7));
            if (fSqrt < 1.0E-6f) {
                fSqrt = 1.0E-6f;
            }
            float f10 = 1.0f / fSqrt;
            for (int i22 = 0; i22 < i10; i22++) {
                fArr7[i22] = fArr7[i22] * f10;
            }
            float[] fArr9 = fArr6[i19];
            int i23 = 0;
            while (i23 < i13) {
                fArr9[i23] = i23 < i19 ? 0.0f : g(fArr7, fArr4[i23]);
                i23++;
            }
            i19++;
        }
        for (int i24 = i12; -1 < i24; i24--) {
            float fG2 = g(fArr5[i24], fArr2);
            float[] fArr10 = fArr6[i24];
            int i25 = i24 + 1;
            if (i25 <= i12) {
                int i26 = i12;
                while (true) {
                    fG2 -= fArr10[i26] * fArr3[i26];
                    if (i26 != i25) {
                        i26--;
                    }
                }
            }
            fArr3[i24] = fG2 / fArr10[i24];
        }
        return fArr3;
    }

    public static final void j(a[] aVarArr, int i10, long j10, float f10) {
        a aVar = aVarArr[i10];
        if (aVar == null) {
            aVarArr[i10] = new a(j10, f10);
        } else {
            aVar.d(j10);
            aVar.c(f10);
        }
    }
}
