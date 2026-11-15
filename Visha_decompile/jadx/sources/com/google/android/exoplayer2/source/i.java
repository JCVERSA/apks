package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.a0;
import defpackage.cb;
import defpackage.j33;
import defpackage.ta8;
import defpackage.u5b;
import defpackage.xk6;

public interface i {

    public interface a {
        a a(com.google.android.exoplayer2.upstream.f fVar);

        i b(com.google.android.exoplayer2.n nVar);

        a c(j33 j33Var);
    }

    public static final class b extends xk6 {
        public b(Object obj) {
            super(obj);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j) {
            super(obj, j);
        }

        public b(Object obj, long j, int i) {
            super(obj, j, i);
        }

        public b(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public b(xk6 xk6Var) {
            super(xk6Var);
        }
    }

    public interface c {
        void a(i iVar, a0 a0Var);
    }

    void a(c cVar);

    void b(j jVar);

    h c(b bVar, cb cbVar, long j);

    void d(Handler handler, j jVar);

    void e(h hVar);

    void f(c cVar);

    void g(c cVar);

    default a0 getInitialTimeline() {
        return null;
    }

    com.google.android.exoplayer2.n getMediaItem();

    void i(Handler handler, com.google.android.exoplayer2.drm.b bVar);

    default boolean isSingleWindow() {
        return true;
    }

    void j(com.google.android.exoplayer2.drm.b bVar);

    void k(c cVar, u5b u5bVar, ta8 ta8Var);

    void maybeThrowSourceInfoRefreshError();
}
