package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import com.hunantv.media.drm.IDrmSession;

public abstract class w4f {
    public static final w4f a = new s1f();

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public abstract int a(Object obj);

    public abstract int b();

    public abstract int c();

    public abstract y2f d(int i, y2f y2fVar, boolean z);

    public abstract e4f e(int i, e4f e4fVar, long j);

    public final boolean equals(Object obj) {
        int iH;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w4f)) {
            return false;
        }
        w4f w4fVar = (w4f) obj;
        if (w4fVar.c() == c() && w4fVar.b() == b()) {
            e4f e4fVar = new e4f();
            y2f y2fVar = new y2f();
            e4f e4fVar2 = new e4f();
            y2f y2fVar2 = new y2f();
            for (int i = 0; i < c(); i++) {
                if (!e(i, e4fVar, 0L).equals(w4fVar.e(i, e4fVar2, 0L))) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < b(); i2++) {
                if (!d(i2, y2fVar, true).equals(w4fVar.d(i2, y2fVar2, true))) {
                    return false;
                }
            }
            int iG = g(true);
            if (iG == w4fVar.g(true) && (iH = h(true)) == w4fVar.h(true)) {
                while (iG != iH) {
                    int iJ = j(iG, 0, true);
                    if (iJ != w4fVar.j(iG, 0, true)) {
                        return false;
                    }
                    iG = iJ;
                }
                return true;
            }
        }
        return false;
    }

    public abstract Object f(int i);

    public int g(boolean z) {
        return o() ? -1 : 0;
    }

    public int h(boolean z) {
        if (o()) {
            return -1;
        }
        return c() - 1;
    }

    public final int hashCode() {
        int i;
        e4f e4fVar = new e4f();
        y2f y2fVar = new y2f();
        int iC = c() + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY;
        int i2 = 0;
        while (true) {
            i = iC * 31;
            if (i2 >= c()) {
                break;
            }
            iC = i + e(i2, e4fVar, 0L).hashCode();
            i2++;
        }
        int iB = i + b();
        for (int i3 = 0; i3 < b(); i3++) {
            iB = (iB * 31) + d(i3, y2fVar, true).hashCode();
        }
        int iG = g(true);
        while (iG != -1) {
            iB = (iB * 31) + iG;
            iG = j(iG, 0, true);
        }
        return iB;
    }

    public final int i(int i, y2f y2fVar, e4f e4fVar, int i2, boolean z) {
        int i3 = d(i, y2fVar, false).c;
        if (e(i3, e4fVar, 0L).n != i) {
            return i + 1;
        }
        int iJ = j(i3, i2, z);
        if (iJ == -1) {
            return -1;
        }
        return e(iJ, e4fVar, 0L).m;
    }

    public int j(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == h(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == h(z) ? g(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public int k(int i, int i2, boolean z) {
        if (i == g(false)) {
            return -1;
        }
        return i - 1;
    }

    public final Pair l(e4f e4fVar, y2f y2fVar, int i, long j) {
        Pair pairM = m(e4fVar, y2fVar, i, j, 0L);
        pairM.getClass();
        return pairM;
    }

    public final Pair m(e4f e4fVar, y2f y2fVar, int i, long j, long j2) {
        n7g.a(i, 0, c());
        e(i, e4fVar, j2);
        if (j == C.TIME_UNSET) {
            long j3 = e4fVar.k;
            j = 0;
        }
        int i2 = e4fVar.m;
        d(i2, y2fVar, false);
        while (i2 < e4fVar.n) {
            long j4 = y2fVar.e;
            if (j == 0) {
                break;
            }
            int i3 = i2 + 1;
            long j5 = d(i3, y2fVar, false).e;
            if (j < 0) {
                break;
            }
            i2 = i3;
        }
        d(i2, y2fVar, true);
        long j6 = y2fVar.e;
        long j7 = y2fVar.d;
        if (j7 != C.TIME_UNSET) {
            j = Math.min(j, j7 - 1);
        }
        long jMax = Math.max(0L, j);
        Object obj = y2fVar.b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public y2f n(Object obj, y2f y2fVar) {
        return d(a(obj), y2fVar, true);
    }

    public final boolean o() {
        return c() == 0;
    }
}
