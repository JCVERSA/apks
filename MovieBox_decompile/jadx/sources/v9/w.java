package v9;

import android.os.Bundle;
import com.google.android.exoplayer2.p1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

public final class w implements com.google.android.exoplayer2.k {

    public static final com.google.android.exoplayer2.k.a f73553f = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return w.f(bundle);
        }
    };

    public final int f73554a;

    public final String f73555b;

    public final int f73556c;

    private final p1[] f73557d;

    private int f73558e;

    public w(p1... p1VarArr) {
        this("", p1VarArr);
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public static w f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new w(bundle.getString(e(1), ""), (p1[]) (parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(p1.H, parcelableArrayList)).toArray(new p1[0]));
    }

    private static void g(String str, String str2, String str3, int i10) {
        com.google.android.exoplayer2.util.s.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String h(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int i(int i10) {
        return i10 | 16384;
    }

    private void j() {
        String strH = h(this.f73557d[0].f24892c);
        int i10 = i(this.f73557d[0].f24894e);
        int i11 = 1;
        while (true) {
            p1[] p1VarArr = this.f73557d;
            if (i11 >= p1VarArr.length) {
                return;
            }
            if (!strH.equals(h(p1VarArr[i11].f24892c))) {
                p1[] p1VarArr2 = this.f73557d;
                g("languages", p1VarArr2[0].f24892c, p1VarArr2[i11].f24892c, i11);
                return;
            } else {
                if (i10 != i(this.f73557d[i11].f24894e)) {
                    g("role flags", Integer.toBinaryString(this.f73557d[0].f24894e), Integer.toBinaryString(this.f73557d[i11].f24894e), i11);
                    return;
                }
                i11++;
            }
        }
    }

    public w b(String str) {
        return new w(str, this.f73557d);
    }

    public p1 c(int i10) {
        return this.f73557d[i10];
    }

    public int d(p1 p1Var) {
        int i10 = 0;
        while (true) {
            p1[] p1VarArr = this.f73557d;
            if (i10 >= p1VarArr.length) {
                return -1;
            }
            if (p1Var == p1VarArr[i10]) {
                return i10;
            }
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w.class != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        return this.f73555b.equals(wVar.f73555b) && Arrays.equals(this.f73557d, wVar.f73557d);
    }

    public int hashCode() {
        if (this.f73558e == 0) {
            this.f73558e = ((527 + this.f73555b.hashCode()) * 31) + Arrays.hashCode(this.f73557d);
        }
        return this.f73558e;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), com.google.android.exoplayer2.util.d.d(Lists.l(this.f73557d)));
        bundle.putString(e(1), this.f73555b);
        return bundle;
    }

    public w(String str, p1... p1VarArr) {
        com.google.android.exoplayer2.util.a.a(p1VarArr.length > 0);
        this.f73555b = str;
        this.f73557d = p1VarArr;
        this.f73554a = p1VarArr.length;
        int iK = com.google.android.exoplayer2.util.w.k(p1VarArr[0].f24901l);
        this.f73556c = iK == -1 ? com.google.android.exoplayer2.util.w.k(p1VarArr[0].f24900k) : iK;
        j();
    }
}
