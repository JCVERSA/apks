package androidx.media3.exoplayer;

import android.os.SystemClock;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

final class r3 {

    private static final androidx.media3.exoplayer.source.r.b f12230u = new androidx.media3.exoplayer.source.r.b(new Object());

    public final androidx.media3.common.e0 f12231a;

    public final androidx.media3.exoplayer.source.r.b f12232b;

    public final long f12233c;

    public final long f12234d;

    public final int f12235e;

    public final ExoPlaybackException f12236f;

    public final boolean f12237g;

    public final f2.z f12238h;

    public final i2.f0 f12239i;

    public final List f12240j;

    public final androidx.media3.exoplayer.source.r.b f12241k;

    public final boolean f12242l;

    public final int f12243m;

    public final int f12244n;

    public final androidx.media3.common.z f12245o;

    public final boolean f12246p;

    public volatile long f12247q;

    public volatile long f12248r;

    public volatile long f12249s;

    public volatile long f12250t;

    public r3(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, int i10, ExoPlaybackException exoPlaybackException, boolean z10, f2.z zVar, i2.f0 f0Var, List list, androidx.media3.exoplayer.source.r.b bVar2, boolean z11, int i11, int i12, androidx.media3.common.z zVar2, long j12, long j13, long j14, long j15, boolean z12) {
        this.f12231a = e0Var;
        this.f12232b = bVar;
        this.f12233c = j10;
        this.f12234d = j11;
        this.f12235e = i10;
        this.f12236f = exoPlaybackException;
        this.f12237g = z10;
        this.f12238h = zVar;
        this.f12239i = f0Var;
        this.f12240j = list;
        this.f12241k = bVar2;
        this.f12242l = z11;
        this.f12243m = i11;
        this.f12244n = i12;
        this.f12245o = zVar2;
        this.f12247q = j12;
        this.f12248r = j13;
        this.f12249s = j14;
        this.f12250t = j15;
        this.f12246p = z12;
    }

    public static r3 k(i2.f0 f0Var) {
        androidx.media3.common.e0 e0Var = androidx.media3.common.e0.f9613a;
        androidx.media3.exoplayer.source.r.b bVar = f12230u;
        return new r3(e0Var, bVar, C.TIME_UNSET, 0L, 1, null, false, f2.z.f59966d, f0Var, ImmutableList.of(), bVar, false, 1, 0, androidx.media3.common.z.f10251d, 0L, 0L, 0L, 0L, false);
    }

    public static androidx.media3.exoplayer.source.r.b l() {
        return f12230u;
    }

    public r3 a() {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, m(), SystemClock.elapsedRealtime(), this.f12246p);
    }

    public r3 b(boolean z10) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, z10, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 c(androidx.media3.exoplayer.source.r.b bVar) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, bVar, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 d(androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, long j12, long j13, f2.z zVar, i2.f0 f0Var, List list) {
        return new r3(this.f12231a, bVar, j11, j12, this.f12235e, this.f12236f, this.f12237g, zVar, f0Var, list, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, j13, j10, SystemClock.elapsedRealtime(), this.f12246p);
    }

    public r3 e(boolean z10, int i10, int i11) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, z10, i10, i11, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 f(ExoPlaybackException exoPlaybackException) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, exoPlaybackException, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 g(androidx.media3.common.z zVar) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, zVar, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 h(int i10) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, i10, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public r3 i(boolean z10) {
        return new r3(this.f12231a, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, z10);
    }

    public r3 j(androidx.media3.common.e0 e0Var) {
        return new r3(e0Var, this.f12232b, this.f12233c, this.f12234d, this.f12235e, this.f12236f, this.f12237g, this.f12238h, this.f12239i, this.f12240j, this.f12241k, this.f12242l, this.f12243m, this.f12244n, this.f12245o, this.f12247q, this.f12248r, this.f12249s, this.f12250t, this.f12246p);
    }

    public long m() {
        long j10;
        long j11;
        if (!n()) {
            return this.f12249s;
        }
        do {
            j10 = this.f12250t;
            j11 = this.f12249s;
        } while (j10 != this.f12250t);
        return androidx.media3.common.util.a1.R0(androidx.media3.common.util.a1.y1(j11) + ((long) ((SystemClock.elapsedRealtime() - j10) * this.f12245o.f10254a)));
    }

    public boolean n() {
        return this.f12235e == 3 && this.f12242l && this.f12244n == 0;
    }

    public void o(long j10) {
        this.f12249s = j10;
        this.f12250t = SystemClock.elapsedRealtime();
    }
}
