package defpackage;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Arrays;
import java.util.List;

public abstract class wqj extends zqj {
    @Override
    public final arj f(aaj[] aajVarArr, npj npjVar, bnj bnjVar, w4f w4fVar) {
        List[] listArr;
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        n5f[][] n5fVarArr = new n5f[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = npjVar.a;
            n5fVarArr[i] = new n5f[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = aajVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < npjVar.a) {
            n5f n5fVarB = npjVar.b(i5);
            int i6 = n5fVarB.c;
            int i7 = i3;
            int i8 = 0;
            int i9 = 0;
            boolean z2 = true;
            while (i8 < i3) {
                aaj aajVar = aajVarArr[i8];
                int iMax = 0;
                for (int i10 = 0; i10 < n5fVarB.a; i10++) {
                    iMax = Math.max(iMax, aajVar.g(n5fVarB.b(i10)) & 7);
                }
                boolean z3 = iArr2[i8] == 0;
                if (iMax > i9) {
                    z2 = z3;
                    i7 = i8;
                    i9 = iMax;
                } else if (iMax == i9 && i6 == 5 && !z2 && z3) {
                    i7 = i8;
                    i9 = iMax;
                    z2 = true;
                }
                i8++;
                i3 = 2;
            }
            if (i7 == i3) {
                iArr = new int[n5fVarB.a];
            } else {
                aaj aajVar2 = aajVarArr[i7];
                int i11 = n5fVarB.a;
                int[] iArr5 = new int[i11];
                for (int i12 = 0; i12 < i11; i12++) {
                    iArr5[i12] = aajVar2.g(n5fVarB.b(i12));
                }
                iArr = iArr5;
            }
            int i13 = iArr2[i7];
            n5fVarArr[i7][i13] = n5fVarB;
            iArr3[i7][i13] = iArr;
            iArr2[i7] = i13 + 1;
            i5++;
            i3 = 2;
        }
        int i14 = i3;
        boolean z4 = true;
        npj[] npjVarArr = new npj[i14];
        String[] strArr = new String[i14];
        int[] iArr6 = new int[i14];
        int i15 = 0;
        while (i15 < i14) {
            int i16 = iArr2[i15];
            npjVarArr[i15] = new npj((n5f[]) kfh.q(n5fVarArr[i15], i16));
            iArr3[i15] = (int[][]) kfh.q(iArr3[i15], i16);
            strArr[i15] = aajVarArr[i15].zzU();
            iArr6[i15] = aajVarArr[i15].zzb();
            i15++;
            i14 = 2;
        }
        int i17 = i14;
        vqj vqjVar = new vqj(strArr, iArr6, npjVarArr, iArr4, iArr3, new npj((n5f[]) kfh.q(n5fVarArr[i17], iArr2[i17])));
        Pair pairK = k(vqjVar, iArr3, iArr4, bnjVar, w4fVar);
        xqj[] xqjVarArr = (xqj[]) pairK.second;
        List[] listArr2 = new List[xqjVarArr.length];
        for (int i18 = 0; i18 < xqjVarArr.length; i18++) {
            xqj xqjVar = xqjVarArr[i18];
            listArr2[i18] = xqjVar != null ? zzfww.zzo(xqjVar) : zzfww.zzn();
        }
        l4i l4iVar = new l4i();
        int i19 = 0;
        for (int i20 = 2; i19 < i20; i20 = 2) {
            npj npjVarD = vqjVar.d(i19);
            List list = listArr2[i19];
            int i21 = 0;
            while (i21 < npjVarD.a) {
                n5f n5fVarB2 = npjVarD.b(i21);
                boolean z5 = vqjVar.a(i19, i21, false) != 0 ? z4 : false;
                int i22 = n5fVarB2.a;
                int[] iArr7 = new int[i22];
                boolean[] zArr = new boolean[i22];
                int i23 = 0;
                while (i23 < i22) {
                    iArr7[i23] = vqjVar.b(i19, i21, i23) & 7;
                    int i24 = 0;
                    while (true) {
                        if (i24 >= list.size()) {
                            listArr = listArr2;
                            z = false;
                            break;
                        }
                        xqj xqjVar2 = (xqj) list.get(i24);
                        listArr = listArr2;
                        if (xqjVar2.zzg().equals(n5fVarB2) && xqjVar2.a(i23) != -1) {
                            z = true;
                            break;
                        }
                        i24++;
                        listArr2 = listArr;
                    }
                    zArr[i23] = z;
                    i23++;
                    listArr2 = listArr;
                }
                l4iVar.g(new x9f(n5fVarB2, z5, iArr7, zArr));
                i21++;
                z4 = true;
            }
            i19++;
            z4 = true;
        }
        npj npjVarE = vqjVar.e();
        for (int i25 = 0; i25 < npjVarE.a; i25++) {
            n5f n5fVarB3 = npjVarE.b(i25);
            int i26 = n5fVarB3.a;
            int[] iArr8 = new int[i26];
            Arrays.fill(iArr8, 0);
            l4iVar.g(new x9f(n5fVarB3, false, iArr8, new boolean[i26]));
        }
        return new arj((baj[]) pairK.first, (tqj[]) pairK.second, new naf(l4iVar.j()), vqjVar);
    }

    @Override
    public final void g(Object obj) {
    }

    public abstract Pair k(vqj vqjVar, int[][][] iArr, int[] iArr2, bnj bnjVar, w4f w4fVar);
}
