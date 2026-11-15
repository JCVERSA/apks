package defpackage;

import androidx.media3.common.C;
import com.hunantv.media.drm.IDrmSession;
import java.util.Objects;

public final class y2f {
    public Object a;
    public Object b;
    public int c;
    public long d;
    public long e;
    public boolean f;
    public ewe g = ewe.e;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public final int a(int i) {
        return this.g.a(i).b;
    }

    public final int b() {
        int i = this.g.a;
        return 0;
    }

    public final int c(long j) {
        return -1;
    }

    public final int d(long j) {
        this.g.b(-1);
        return -1;
    }

    public final int e(int i) {
        return this.g.a(i).a(-1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && y2f.class.equals(obj.getClass())) {
            y2f y2fVar = (y2f) obj;
            if (Objects.equals(this.a, y2fVar.a) && Objects.equals(this.b, y2fVar.b) && this.c == y2fVar.c && this.d == y2fVar.d && this.f == y2fVar.f && Objects.equals(this.g, y2fVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final long f(int i, int i2) {
        d5e d5eVarA = this.g.a(i);
        return d5eVarA.b != -1 ? d5eVarA.f[i2] : C.TIME_UNSET;
    }

    public final long g(int i) {
        long j = this.g.a(i).a;
        return 0L;
    }

    public final long h() {
        long j = this.g.b;
        return 0L;
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.b;
        int iHashCode2 = ((((iHashCode + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31) + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.c;
        long j = this.d;
        return (((((iHashCode2 * 31) + ((int) (j ^ (j >>> 32)))) * 961) + (this.f ? 1 : 0)) * 31) + this.g.hashCode();
    }

    public final y2f i(Object obj, Object obj2, int i, long j, long j2, ewe eweVar, boolean z) {
        this.a = obj;
        this.b = obj2;
        this.c = i;
        this.d = j;
        this.e = 0L;
        this.g = eweVar;
        this.f = z;
        return this;
    }

    public final boolean j(int i) {
        b();
        if (i != -1) {
            return false;
        }
        this.g.b(-1);
        return false;
    }

    public final boolean k(int i) {
        boolean z = this.g.a(i).i;
        return false;
    }
}
