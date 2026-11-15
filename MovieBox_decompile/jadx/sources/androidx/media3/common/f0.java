package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

public final class f0 {

    private static final String f9657f = a1.C0(0);

    private static final String f9658g = a1.C0(1);

    public final int f9659a;

    public final String f9660b;

    public final int f9661c;

    private final r[] f9662d;

    private int f9663e;

    public f0(r... rVarArr) {
        this("", rVarArr);
    }

    private static void c(String str, String str2, String str3, int i10) {
        androidx.media3.common.util.u.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String d(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int e(int i10) {
        return i10 | 16384;
    }

    private void f() {
        String strD = d(this.f9662d[0].f9838d);
        int iE = e(this.f9662d[0].f9840f);
        int i10 = 1;
        while (true) {
            r[] rVarArr = this.f9662d;
            if (i10 >= rVarArr.length) {
                return;
            }
            if (!strD.equals(d(rVarArr[i10].f9838d))) {
                r[] rVarArr2 = this.f9662d;
                c("languages", rVarArr2[0].f9838d, rVarArr2[i10].f9838d, i10);
                return;
            } else {
                if (iE != e(this.f9662d[i10].f9840f)) {
                    c("role flags", Integer.toBinaryString(this.f9662d[0].f9840f), Integer.toBinaryString(this.f9662d[i10].f9840f), i10);
                    return;
                }
                i10++;
            }
        }
    }

    public r a(int i10) {
        return this.f9662d[i10];
    }

    public int b(r rVar) {
        int i10 = 0;
        while (true) {
            r[] rVarArr = this.f9662d;
            if (i10 >= rVarArr.length) {
                return -1;
            }
            if (rVar == rVarArr[i10]) {
                return i10;
            }
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return this.f9660b.equals(f0Var.f9660b) && Arrays.equals(this.f9662d, f0Var.f9662d);
    }

    public int hashCode() {
        if (this.f9663e == 0) {
            this.f9663e = ((527 + this.f9660b.hashCode()) * 31) + Arrays.hashCode(this.f9662d);
        }
        return this.f9663e;
    }

    public String toString() {
        return this.f9660b + ": " + Arrays.toString(this.f9662d);
    }

    public f0(String str, r... rVarArr) {
        androidx.media3.common.util.a.a(rVarArr.length > 0);
        this.f9660b = str;
        this.f9662d = rVarArr;
        this.f9659a = rVarArr.length;
        int iK = y.k(rVarArr[0].f9849o);
        this.f9661c = iK == -1 ? y.k(rVarArr[0].f9848n) : iK;
        f();
    }
}
