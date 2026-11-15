package i2;

import android.graphics.Point;
import android.os.SystemClock;
import androidx.media3.common.i0;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

public abstract class d0 {
    public static i0 a(b0.a aVar, c0[] c0VarArr) {
        List[] listArr = new List[c0VarArr.length];
        for (int i10 = 0; i10 < c0VarArr.length; i10++) {
            c0 c0Var = c0VarArr[i10];
            listArr[i10] = c0Var != null ? ImmutableList.of(c0Var) : ImmutableList.of();
        }
        return b(aVar, listArr);
    }

    public static i0 b(b0.a aVar, List[] listArr) {
        boolean z10;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            f2.z zVarF = aVar.f(i10);
            List list = listArr[i10];
            for (int i11 = 0; i11 < zVarF.f59968a; i11++) {
                androidx.media3.common.f0 f0VarB = zVarF.b(i11);
                boolean z11 = aVar.a(i10, i11, false) != 0;
                int i12 = f0VarB.f9659a;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < f0VarB.f9659a; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        c0 c0Var = (c0) list.get(i14);
                        if (c0Var.getTrackGroup().equals(f0VarB) && c0Var.indexOf(i13) != -1) {
                            z10 = true;
                            break;
                        }
                        i14++;
                    }
                    zArr[i13] = z10;
                }
                aVar2.a(new i0.a(f0VarB, z11, iArr, zArr));
            }
        }
        f2.z zVarH = aVar.h();
        for (int i15 = 0; i15 < zVarH.f59968a; i15++) {
            androidx.media3.common.f0 f0VarB2 = zVarH.b(i15);
            int[] iArr2 = new int[f0VarB2.f9659a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new i0.a(f0VarB2, false, iArr2, new boolean[f0VarB2.f9659a]));
        }
        return new i0(aVar2.e());
    }

    public static androidx.media3.exoplayer.upstream.m.a c(z zVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = zVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (zVar.d(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        return new androidx.media3.exoplayer.upstream.m.a(1, 0, length, i10);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    public static Point d(boolean z10, int i10, int i11, int i12, int i13) {
        if (z10) {
            if ((i12 > i13) == (i10 > i11)) {
                i11 = i10;
                i10 = i11;
            }
        } else {
            i11 = i10;
            i10 = i11;
        }
        int i14 = i12 * i10;
        int i15 = i13 * i11;
        return i14 >= i15 ? new Point(i11, a1.k(i15, i12)) : new Point(a1.k(i14, i13), i10);
    }
}
