package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.w1;
import g9.u1;

public interface o {

    public interface a {
        o a(w1 w1Var);

        a b(com.google.android.exoplayer2.drm.x xVar);

        a c(com.google.android.exoplayer2.upstream.z zVar);
    }

    public static final class b extends v9.j {
        public b(Object obj) {
            super(obj);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j10) {
            super(obj, j10);
        }

        public b(Object obj, long j10, int i10) {
            super(obj, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            super(obj, i10, i11, j10);
        }

        public b(v9.j jVar) {
            super(jVar);
        }
    }

    public interface c {
        void a(o oVar, l3 l3Var);
    }

    w1 a();

    boolean b();

    l3 c();

    n d(b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10);

    void e(c cVar);

    void g(Handler handler, p pVar);

    void h(p pVar);

    void i(n nVar);

    void k(c cVar);

    void m(c cVar, k0 k0Var, u1 u1Var);

    void maybeThrowSourceInfoRefreshError();

    void o(c cVar);

    void q(Handler handler, com.google.android.exoplayer2.drm.s sVar);

    void r(com.google.android.exoplayer2.drm.s sVar);
}
