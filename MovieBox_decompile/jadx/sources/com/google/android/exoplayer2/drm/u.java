package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.p1;
import g9.u1;

public interface u {

    public static final u f24376a;

    public static final u f24377b;

    public interface b {

        public static final b f24378a = new b() {
            @Override
            public final void release() {
                w.a();
            }
        };

        void release();
    }

    static {
        a aVar = new a();
        f24376a = aVar;
        f24377b = aVar;
    }

    int a(p1 p1Var);

    void b(Looper looper, u1 u1Var);

    DrmSession c(s.a aVar, p1 p1Var);

    b d(s.a aVar, p1 p1Var);

    void prepare();

    void release();

    class a implements u {
        a() {
        }

        @Override
        public int a(p1 p1Var) {
            return p1Var.f24904o != null ? 1 : 0;
        }

        @Override
        public DrmSession c(s.a aVar, p1 p1Var) {
            if (p1Var.f24904o == null) {
                return null;
            }
            return new a0(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override
        public b d(s.a aVar, p1 p1Var) {
            return t.a(this, aVar, p1Var);
        }

        @Override
        public void prepare() {
            t.b(this);
        }

        @Override
        public void release() {
            t.c(this);
        }

        @Override
        public void b(Looper looper, u1 u1Var) {
        }
    }
}
