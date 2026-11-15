package defpackage;

import androidx.media3.common.C;
import java.util.Arrays;

public final class n5f {
    public final int a;
    public final String b;
    public final int c;
    public final erj[] d;
    public int e;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public n5f(String str, erj... erjVarArr) {
        int length = erjVarArr.length;
        int i = 1;
        n7g.d(length > 0);
        this.b = str;
        this.d = erjVarArr;
        this.a = length;
        int iB = bue.b(erjVarArr[0].o);
        this.c = iB == -1 ? bue.b(erjVarArr[0].n) : iB;
        String strC = c(erjVarArr[0].d);
        int i2 = erjVarArr[0].f | 16384;
        while (true) {
            erj[] erjVarArr2 = this.d;
            if (i >= erjVarArr2.length) {
                return;
            }
            if (!strC.equals(c(erjVarArr2[i].d))) {
                erj[] erjVarArr3 = this.d;
                d("languages", erjVarArr3[0].d, erjVarArr3[i].d, i);
                return;
            } else {
                erj[] erjVarArr4 = this.d;
                if (i2 != (erjVarArr4[i].f | 16384)) {
                    d("role flags", Integer.toBinaryString(erjVarArr4[0].f), Integer.toBinaryString(this.d[i].f), i);
                    return;
                }
                i++;
            }
        }
    }

    public static String c(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    public static void d(String str, String str2, String str3, int i) {
        zrg.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    public final int a(erj erjVar) {
        int i = 0;
        while (true) {
            erj[] erjVarArr = this.d;
            if (i >= erjVarArr.length) {
                return -1;
            }
            if (erjVar == erjVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public final erj b(int i) {
        return this.d[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n5f.class == obj.getClass()) {
            n5f n5fVar = (n5f) obj;
            if (this.b.equals(n5fVar.b) && Arrays.equals(this.d, n5fVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.e;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((this.b.hashCode() + 527) * 31) + Arrays.hashCode(this.d);
        this.e = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        return this.b + ": " + Arrays.toString(this.d);
    }
}
