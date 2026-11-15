package androidx.media3.exoplayer.source;

import android.os.Handler;
import x1.f4;

public interface r {

    public interface a {
        a a(h3.s.a aVar);

        a b(int i10);

        a c(boolean z10);

        r d(androidx.media3.common.t tVar);

        a e(androidx.media3.exoplayer.drm.w wVar);

        a f(androidx.media3.exoplayer.upstream.m mVar);
    }

    public static final class b {

        public final Object f12571a;

        public final int f12572b;

        public final int f12573c;

        public final long f12574d;

        public final int f12575e;

        public b(Object obj) {
            this(obj, -1L);
        }

        public b a(Object obj) {
            return this.f12571a.equals(obj) ? this : new b(obj, this.f12572b, this.f12573c, this.f12574d, this.f12575e);
        }

        public boolean b() {
            return this.f12572b != -1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f12571a.equals(bVar.f12571a) && this.f12572b == bVar.f12572b && this.f12573c == bVar.f12573c && this.f12574d == bVar.f12574d && this.f12575e == bVar.f12575e;
        }

        public int hashCode() {
            return ((((((((527 + this.f12571a.hashCode()) * 31) + this.f12572b) * 31) + this.f12573c) * 31) + ((int) this.f12574d)) * 31) + this.f12575e;
        }

        public b(Object obj, long j10) {
            this(obj, -1, -1, j10, -1);
        }

        public b(Object obj, long j10, int i10) {
            this(obj, -1, -1, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            this(obj, i10, i11, j10, -1);
        }

        private b(Object obj, int i10, int i11, long j10, int i12) {
            this.f12571a = obj;
            this.f12572b = i10;
            this.f12573c = i11;
            this.f12574d = j10;
            this.f12575e = i12;
        }
    }

    public interface c {
        void a(r rVar, androidx.media3.common.e0 e0Var);
    }

    androidx.media3.common.t a();

    boolean b();

    androidx.media3.common.e0 c();

    void d(Handler handler, s sVar);

    void e(s sVar);

    q g(b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10);

    void i(Handler handler, androidx.media3.exoplayer.drm.r rVar);

    void j(androidx.media3.exoplayer.drm.r rVar);

    void k(q qVar);

    void l(c cVar, w1.n nVar, f4 f4Var);

    void m(c cVar);

    void maybeThrowSourceInfoRefreshError();

    void n(androidx.media3.common.t tVar);

    void o(c cVar);

    void p(c cVar);

    boolean q(androidx.media3.common.t tVar);
}
