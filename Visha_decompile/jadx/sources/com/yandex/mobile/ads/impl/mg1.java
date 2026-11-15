package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public interface mg1 {
    public static final int a = 0;

    public static final class a {
        static final a a = new a();

        private a() {
        }

        public static mg1 a(boolean z) {
            Handler handler = new Handler(Looper.getMainLooper());
            y45.j(handler, "handler");
            return new ng1(z, handler);
        }
    }

    void a(long j, og1 og1Var);

    void a(m52 m52Var);

    void invalidate();

    void pause();

    void resume();

    void stop();
}
