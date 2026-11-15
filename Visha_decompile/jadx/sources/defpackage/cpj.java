package defpackage;

import android.net.Uri;
import androidx.media3.common.C;

public final class cpj extends w4f {
    public static final Object g = new Object();
    public final long b;
    public final long c;
    public final boolean d;
    public final cme e;
    public final wfe f;

    static {
        v8e v8eVar = new v8e();
        v8eVar.a("SinglePeriodTimeline");
        v8eVar.b(Uri.EMPTY);
        v8eVar.c();
    }

    public cpj(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, cme cmeVar, wfe wfeVar) {
        this.b = j4;
        this.c = j5;
        this.d = z;
        cmeVar.getClass();
        this.e = cmeVar;
        this.f = wfeVar;
    }

    @Override
    public final int a(Object obj) {
        return g.equals(obj) ? 0 : -1;
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final int c() {
        return 1;
    }

    @Override
    public final y2f d(int i, y2f y2fVar, boolean z) {
        n7g.a(i, 0, 1);
        y2fVar.i(null, z ? g : null, 0, this.b, 0L, ewe.e, false);
        return y2fVar;
    }

    @Override
    public final e4f e(int i, e4f e4fVar, long j) {
        n7g.a(i, 0, 1);
        Object obj = e4f.o;
        cme cmeVar = this.e;
        long j2 = this.c;
        e4fVar.a(obj, cmeVar, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, this.d, false, this.f, 0L, j2, 0, 0, 0L);
        return e4fVar;
    }

    @Override
    public final Object f(int i) {
        n7g.a(i, 0, 1);
        return g;
    }
}
