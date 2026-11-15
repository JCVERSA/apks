package androidx.media3.exoplayer.drm;

import android.os.Looper;
import x1.f4;

public interface t {

    public static final t f11300a = new a();

    public interface b {

        public static final b f11301a = new b() {
            @Override
            public final void release() {
                v.a();
            }
        };

        void release();
    }

    DrmSession a(r.a aVar, androidx.media3.common.r rVar);

    int b(androidx.media3.common.r rVar);

    b c(r.a aVar, androidx.media3.common.r rVar);

    void d(Looper looper, f4 f4Var);

    void prepare();

    void release();

    class a implements t {
        a() {
        }

        @Override
        public DrmSession a(r.a aVar, androidx.media3.common.r rVar) {
            if (rVar.f9853s == null) {
                return null;
            }
            return new z(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override
        public int b(androidx.media3.common.r rVar) {
            return rVar.f9853s != null ? 1 : 0;
        }

        @Override
        public b c(r.a aVar, androidx.media3.common.r rVar) {
            return s.a(this, aVar, rVar);
        }

        @Override
        public void prepare() {
            s.b(this);
        }

        @Override
        public void release() {
            s.c(this);
        }

        @Override
        public void d(Looper looper, f4 f4Var) {
        }
    }
}
