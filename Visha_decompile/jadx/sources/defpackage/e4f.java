package defpackage;

import android.net.Uri;
import androidx.media3.common.C;
import com.hunantv.media.drm.IDrmSession;
import java.util.Objects;

public final class e4f {
    public static final Object o = new Object();
    public static final cme p;
    public Object b;
    public long d;
    public long e;
    public long f;
    public boolean g;
    public boolean h;
    public wfe i;
    public boolean j;
    public long k;
    public long l;
    public int m;
    public int n;
    public Object a = o;
    public cme c = p;

    static {
        v8e v8eVar = new v8e();
        v8eVar.a("androidx.media3.common.Timeline");
        v8eVar.b(Uri.EMPTY);
        p = v8eVar.c();
        int i = kfh.a;
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
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
    }

    public final e4f a(Object obj, cme cmeVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, wfe wfeVar, long j4, long j5, int i, int i2, long j6) {
        this.a = obj;
        this.c = cmeVar == null ? p : cmeVar;
        this.b = null;
        this.d = C.TIME_UNSET;
        this.e = C.TIME_UNSET;
        this.f = C.TIME_UNSET;
        this.g = z;
        this.h = z2;
        this.i = wfeVar;
        this.k = 0L;
        this.l = j5;
        this.m = 0;
        this.n = 0;
        this.j = false;
        return this;
    }

    public final boolean b() {
        return this.i != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e4f.class.equals(obj.getClass())) {
            e4f e4fVar = (e4f) obj;
            if (Objects.equals(this.a, e4fVar.a) && Objects.equals(this.c, e4fVar.c) && Objects.equals(this.i, e4fVar.i) && this.d == e4fVar.d && this.e == e4fVar.e && this.f == e4fVar.f && this.g == e4fVar.g && this.h == e4fVar.h && this.j == e4fVar.j && this.l == e4fVar.l && this.m == e4fVar.m && this.n == e4fVar.n) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.a.hashCode() + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31) + this.c.hashCode();
        wfe wfeVar = this.i;
        int iHashCode2 = ((iHashCode * 961) + (wfeVar == null ? 0 : wfeVar.hashCode())) * 31;
        long j = this.d;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.e;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f;
        int i3 = ((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.j ? 1 : 0);
        long j4 = this.l;
        return ((((((i3 * 961) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.m) * 31) + this.n) * 31;
    }
}
