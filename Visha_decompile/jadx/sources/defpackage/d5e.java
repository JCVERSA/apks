package defpackage;

import android.net.Uri;
import androidx.media3.common.C;
import java.util.Arrays;

public final class d5e {
    public final long a;
    public final int b;
    public final Uri[] c;
    public final cme[] d;
    public final int[] e;
    public final long[] f;
    public final String[] g;
    public final long h;
    public final boolean i;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
    }

    public d5e(long j) {
        this(0L, -1, -1, new int[0], new cme[0], new long[0], 0L, false, new String[0], false);
    }

    public final int a(int i) {
        int i2;
        int i3 = i + 1;
        while (true) {
            int[] iArr = this.e;
            if (i3 >= iArr.length || (i2 = iArr[i3]) == 0 || i2 == 1) {
                break;
            }
            i3++;
        }
        return i3;
    }

    public final d5e b(int i) {
        int[] iArr = this.e;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = this.f;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, C.TIME_UNSET);
        return new d5e(0L, 0, -1, iArrCopyOf, (cme[]) Arrays.copyOf(this.d, 0), jArrCopyOf, 0L, false, (String[]) Arrays.copyOf(this.g, 0), false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d5e.class == obj.getClass()) {
            d5e d5eVar = (d5e) obj;
            if (this.b == d5eVar.b && Arrays.equals(this.d, d5eVar.d) && Arrays.equals(this.e, d5eVar.e) && Arrays.equals(this.f, d5eVar.f) && Arrays.equals(this.g, d5eVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((this.b * 31) - 1) * 961) + Arrays.hashCode(this.d)) * 31) + Arrays.hashCode(this.e)) * 31) + Arrays.hashCode(this.f)) * 29791) + Arrays.hashCode(this.g)) * 31;
    }

    public d5e(long j, int i, int i2, int[] iArr, cme[] cmeVarArr, long[] jArr, long j2, boolean z, String[] strArr, boolean z2) {
        Uri uri;
        int length = iArr.length;
        int length2 = cmeVarArr.length;
        int i3 = 0;
        n7g.d(length == length2);
        this.a = 0L;
        this.b = i;
        this.e = iArr;
        this.d = cmeVarArr;
        this.f = jArr;
        this.h = 0L;
        this.i = false;
        this.c = new Uri[length2];
        while (true) {
            Uri[] uriArr = this.c;
            if (i3 >= uriArr.length) {
                this.g = strArr;
                return;
            }
            cme cmeVar = cmeVarArr[i3];
            if (cmeVar == null) {
                uri = null;
            } else {
                xge xgeVar = cmeVar.b;
                xgeVar.getClass();
                uri = xgeVar.a;
            }
            uriArr[i3] = uri;
            i3++;
        }
    }
}
