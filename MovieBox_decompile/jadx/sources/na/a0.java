package na;

import android.os.SystemClock;
import com.google.android.exoplayer2.q3;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

public abstract class a0 {
    public static q3 a(u.a aVar, List[] listArr) {
        boolean z10;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            v9.y yVarF = aVar.f(i10);
            List list = listArr[i10];
            for (int i11 = 0; i11 < yVarF.f73561a; i11++) {
                v9.w wVarB = yVarF.b(i11);
                boolean z11 = aVar.a(i10, i11, false) != 0;
                int i12 = wVarB.f73554a;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < wVarB.f73554a; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        v vVar = (v) list.get(i14);
                        if (vVar.getTrackGroup().equals(wVarB) && vVar.indexOf(i13) != -1) {
                            z10 = true;
                            break;
                        }
                        i14++;
                    }
                    zArr[i13] = z10;
                }
                aVar2.a(new q3.a(wVarB, z11, iArr, zArr));
            }
        }
        v9.y yVarH = aVar.h();
        for (int i15 = 0; i15 < yVarH.f73561a; i15++) {
            v9.w wVarB2 = yVarH.b(i15);
            int[] iArr2 = new int[wVarB2.f73554a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new q3.a(wVarB2, false, iArr2, new boolean[wVarB2.f73554a]));
        }
        return new q3(aVar2.e());
    }

    public static q3 b(u.a aVar, v[] vVarArr) {
        List[] listArr = new List[vVarArr.length];
        for (int i10 = 0; i10 < vVarArr.length; i10++) {
            v vVar = vVarArr[i10];
            listArr[i10] = vVar != null ? ImmutableList.of(vVar) : ImmutableList.of();
        }
        return a(aVar, listArr);
    }

    public static com.google.android.exoplayer2.upstream.z.a c(s sVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = sVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (sVar.d(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        return new com.google.android.exoplayer2.upstream.z.a(1, 0, length, i10);
    }
}
