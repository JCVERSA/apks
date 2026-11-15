package x9;

import android.net.Uri;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import java.util.Map;

public abstract class f implements Loader.d {

    public final long f75184a = v9.h.a();

    public final com.google.android.exoplayer2.upstream.n f75185b;

    public final int f75186c;

    public final p1 f75187d;

    public final int f75188e;

    public final Object f75189f;

    public final long f75190g;

    public final long f75191h;

    protected final i0 f75192i;

    public f(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, int i10, p1 p1Var, int i11, Object obj, long j10, long j11) {
        this.f75192i = new i0(kVar);
        this.f75185b = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(nVar);
        this.f75186c = i10;
        this.f75187d = p1Var;
        this.f75188e = i11;
        this.f75189f = obj;
        this.f75190g = j10;
        this.f75191h = j11;
    }

    public final long a() {
        return this.f75192i.f();
    }

    public final long b() {
        return this.f75191h - this.f75190g;
    }

    public final Map c() {
        return this.f75192i.i();
    }

    public final Uri d() {
        return this.f75192i.h();
    }
}
