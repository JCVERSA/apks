package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;

public interface vw0 {

    public interface a {
    }

    public static final class b extends rw0 {
        public b(int i, long j, Object obj) {
            super(i, j, obj);
        }

        public b(rw0 rw0Var) {
            super(rw0Var);
        }

        public b(Object obj) {
            super(obj);
        }

        public b(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public b(Object obj, long j) {
            super(obj, j);
        }
    }

    public interface c {
        void a(vw0 vw0Var, i52 i52Var);
    }

    pw0 a(b bVar, cd cdVar, long j);

    void a(Handler handler, h40 h40Var);

    void a(Handler handler, ww0 ww0Var);

    void a(h40 h40Var);

    void a(pw0 pw0Var);

    void a(c cVar);

    void a(c cVar, @Nullable d72 d72Var, mi1 mi1Var);

    void a(ww0 ww0Var);

    void b(c cVar);

    void c(c cVar);

    jw0 getMediaItem();

    void maybeThrowSourceInfoRefreshError() throws IOException;
}
