package defpackage;

import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzfyh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class spj extends tpj {
    public spj(n5f n5fVar, int[] iArr, int i, mrj mrjVar, long j, long j2, long j3, int i2, int i3, float f, float f2, List list, tbg tbgVar) {
        super(n5fVar, iArr, 0);
        zzfww.zzl(list);
    }

    public static zzfww b(sqj[] sqjVarArr) {
        long j;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            sqj sqjVar = sqjVarArr[i2];
            if (sqjVar == null || sqjVar.b.length <= 1) {
                arrayList.add(null);
            } else {
                int i3 = zzfww.zzd;
                l4i l4iVar = new l4i();
                l4iVar.g(new qpj(0L, 0L));
                arrayList.add(l4iVar);
            }
        }
        long[][] jArr = new long[2][];
        int i4 = 0;
        while (true) {
            j = -1;
            if (i4 >= 2) {
                break;
            }
            sqj sqjVar2 = sqjVarArr[i4];
            if (sqjVar2 == null) {
                jArr[i4] = new long[0];
            } else {
                int[] iArr = sqjVar2.b;
                jArr[i4] = new long[iArr.length];
                for (int i5 = 0; i5 < iArr.length; i5++) {
                    long j2 = sqjVar2.a.b(iArr[i5]).j;
                    long[] jArr2 = jArr[i4];
                    if (j2 == -1) {
                        j2 = 0;
                    }
                    jArr2[i5] = j2;
                }
                Arrays.sort(jArr[i4]);
            }
            i4++;
        }
        int[] iArr2 = new int[2];
        long[] jArr3 = new long[2];
        for (int i6 = 0; i6 < 2; i6++) {
            long[] jArr4 = jArr[i6];
            jArr3[i6] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        c(arrayList, jArr3);
        u4i u4iVarC = i5i.b(zzfyh.zzc()).b(2).c();
        int i7 = 0;
        while (i7 < 2) {
            int length = jArr[i7].length;
            if (length > 1) {
                double[] dArr = new double[length];
                int i8 = i;
                while (true) {
                    long[] jArr5 = jArr[i7];
                    double dLog = 0.0d;
                    if (i8 >= jArr5.length) {
                        break;
                    }
                    long j3 = jArr5[i8];
                    if (j3 != j) {
                        dLog = Math.log(j3);
                    }
                    dArr[i8] = dLog;
                    i8++;
                }
                int i9 = length - 1;
                double d = dArr[i9] - dArr[i];
                int i10 = i;
                while (i10 < i9) {
                    double d2 = dArr[i10];
                    i10++;
                    u4iVarC.zzq(Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i10]) * 0.5d) - dArr[i]) / d), Integer.valueOf(i7));
                    i = 0;
                }
            }
            i7++;
            i = 0;
            j = -1;
        }
        zzfww zzfwwVarZzl = zzfww.zzl(u4iVarC.zzr());
        for (int i11 = 0; i11 < zzfwwVarZzl.size(); i11++) {
            int iIntValue = ((Integer) zzfwwVarZzl.get(i11)).intValue();
            int i12 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i12;
            jArr3[iIntValue] = jArr[iIntValue][i12];
            c(arrayList, jArr3);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            if (arrayList.get(i13) != null) {
                long j4 = jArr3[i13];
                jArr3[i13] = j4 + j4;
            }
        }
        c(arrayList, jArr3);
        l4i l4iVar2 = new l4i();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            l4i l4iVar3 = (l4i) arrayList.get(i14);
            l4iVar2.g(l4iVar3 == null ? zzfww.zzn() : l4iVar3.j());
        }
        return l4iVar2.j();
    }

    public static void c(List list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            l4i l4iVar = (l4i) list.get(i2);
            if (l4iVar != null) {
                l4iVar.g(new qpj(j, jArr[i2]));
            }
        }
    }
}
