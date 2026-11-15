package defpackage;

import androidx.media3.common.C;
import java.util.Arrays;

public final class ewe {
    public static final ewe e = new ewe(null, new d5e[0], 0, C.TIME_UNSET, 0);
    public static final d5e f = new d5e(0).b(0);
    public final d5e[] d;
    public final long b = 0;
    public final int a = 0;
    public final int c = 0;

    static {
        int i = kfh.a;
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public ewe(Object obj, d5e[] d5eVarArr, long j, long j2, int i) {
        this.d = d5eVarArr;
    }

    public final d5e a(int i) {
        return i < 0 ? f : this.d[i];
    }

    public final boolean b(int i) {
        a(-1);
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ewe.class == obj.getClass() && Arrays.equals(this.d, ((ewe) obj).d);
    }

    public final int hashCode() {
        return (((int) C.TIME_UNSET) * 961) + Arrays.hashCode(this.d);
    }

    public final String toString() {
        return "AdPlaybackState(adsId=" + ((Object) null) + ", adResumePositionUs=0, adGroups=[])";
    }
}
