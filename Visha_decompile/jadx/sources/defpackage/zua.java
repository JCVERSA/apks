package defpackage;

import android.os.Bundle;
import androidx.media3.common.C;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Arrays;

public final class zua implements e {
    public static final e.a g = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return zua.f(bundle);
        }
    };
    public final int b;
    public final String c;
    public final int d;
    public final k[] e;
    public int f;

    public zua(k... kVarArr) {
        this("", kVarArr);
    }

    private static String e(int i) {
        return Integer.toString(i, 36);
    }

    public static zua f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new zua(bundle.getString(e(1), ""), (k[]) (parcelableArrayList == null ? ImmutableList.of() : xn0.b(k.I, parcelableArrayList)).toArray(new k[0]));
    }

    public static void g(String str, String str2, String str3, int i) {
        op5.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    public static String h(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    public static int i(int i) {
        return i | 16384;
    }

    public zua b(String str) {
        return new zua(str, this.e);
    }

    public k c(int i) {
        return this.e[i];
    }

    public int d(k kVar) {
        int i = 0;
        while (true) {
            k[] kVarArr = this.e;
            if (i >= kVarArr.length) {
                return -1;
            }
            if (kVar == kVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zua.class != obj.getClass()) {
            return false;
        }
        zua zuaVar = (zua) obj;
        return this.c.equals(zuaVar.c) && Arrays.equals(this.e, zuaVar.e);
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = ((527 + this.c.hashCode()) * 31) + Arrays.hashCode(this.e);
        }
        return this.f;
    }

    public final void j() {
        String strH = h(this.e[0].d);
        int i = i(this.e[0].f);
        int i2 = 1;
        while (true) {
            k[] kVarArr = this.e;
            if (i2 >= kVarArr.length) {
                return;
            }
            if (!strH.equals(h(kVarArr[i2].d))) {
                k[] kVarArr2 = this.e;
                g("languages", kVarArr2[0].d, kVarArr2[i2].d, i2);
                return;
            } else {
                if (i != i(this.e[i2].f)) {
                    g("role flags", Integer.toBinaryString(this.e[0].f), Integer.toBinaryString(this.e[i2].f), i2);
                    return;
                }
                i2++;
            }
        }
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(e(0), xn0.d(Lists.l(this.e)));
        bundle.putString(e(1), this.c);
        return bundle;
    }

    public zua(String str, k... kVarArr) {
        zi.a(kVarArr.length > 0);
        this.c = str;
        this.e = kVarArr;
        this.b = kVarArr.length;
        int iF = qp6.f(kVarArr[0].m);
        this.d = iF == -1 ? qp6.f(kVarArr[0].l) : iF;
        j();
    }
}
