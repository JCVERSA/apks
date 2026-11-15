package defpackage;

import com.google.android.exoplayer2.b0;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

public abstract class qva {
    public static b0 a(hy5.a aVar, hva[] hvaVarArr) {
        List[] listArr = new List[hvaVarArr.length];
        for (int i = 0; i < hvaVarArr.length; i++) {
            hva hvaVar = hvaVarArr[i];
            listArr[i] = hvaVar != null ? ImmutableList.of(hvaVar) : ImmutableList.of();
        }
        return b(aVar, listArr);
    }

    public static b0 b(hy5.a aVar, List[] listArr) {
        boolean z;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i = 0; i < aVar.d(); i++) {
            eva evaVarF = aVar.f(i);
            List list = listArr[i];
            for (int i2 = 0; i2 < evaVarF.b; i2++) {
                zua zuaVarB = evaVarF.b(i2);
                boolean z2 = aVar.a(i, i2, false) != 0;
                int i3 = zuaVarB.b;
                int[] iArr = new int[i3];
                boolean[] zArr = new boolean[i3];
                for (int i4 = 0; i4 < zuaVarB.b; i4++) {
                    iArr[i4] = aVar.g(i, i2, i4);
                    int i5 = 0;
                    while (true) {
                        if (i5 >= list.size()) {
                            z = false;
                            break;
                        }
                        hva hvaVar = (hva) list.get(i5);
                        if (hvaVar.getTrackGroup().equals(zuaVarB) && hvaVar.indexOf(i4) != -1) {
                            z = true;
                            break;
                        }
                        i5++;
                    }
                    zArr[i4] = z;
                }
                aVar2.a(new b0.a(zuaVarB, z2, iArr, zArr));
            }
        }
        eva evaVarH = aVar.h();
        for (int i6 = 0; i6 < evaVarH.b; i6++) {
            zua zuaVarB2 = evaVarH.b(i6);
            int[] iArr2 = new int[zuaVarB2.b];
            Arrays.fill(iArr2, 0);
            aVar2.a(new b0.a(zuaVarB2, false, iArr2, new boolean[zuaVarB2.b]));
        }
        return new b0(aVar2.e());
    }
}
