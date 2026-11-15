package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.k;
import defpackage.ta8;

public interface c {
    public static final c a;
    public static final c b;

    public class a implements c {
        @Override
        public void a(Looper looper, ta8 ta8Var) {
        }

        @Override
        public DrmSession b(com.google.android.exoplayer2.drm.b.a aVar, k kVar) {
            if (kVar.p == null) {
                return null;
            }
            return new f(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override
        public int d(k kVar) {
            return kVar.p != null ? 1 : 0;
        }
    }

    public interface b {
        public static final b a = new b() {
            @Override
            public final void release() {
                c.b.lambda$static$0();
            }
        };

        static void lambda$static$0() {
        }

        void release();
    }

    static {
        a aVar = new a();
        a = aVar;
        b = aVar;
    }

    void a(Looper looper, ta8 ta8Var);

    DrmSession b(com.google.android.exoplayer2.drm.b.a aVar, k kVar);

    default b c(com.google.android.exoplayer2.drm.b.a aVar, k kVar) {
        return b.a;
    }

    int d(k kVar);

    default void prepare() {
    }

    default void release() {
    }
}
