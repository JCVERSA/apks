package com.yandex.mobile.ads.impl;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public final class mi1 {

    @Nullable
    private final a a;

    @RequiresApi(31)
    public static final class a {
        public static final int b = 0;
        public final LogSessionId a;

        static {
            LogSessionId unused = LogSessionId.LOG_SESSION_ID_NONE;
        }

        public a(LogSessionId logSessionId) {
            this.a = logSessionId;
        }
    }

    static {
        if (f92.a < 31) {
            new mi1();
        } else {
            int i = a.b;
        }
    }

    public mi1() {
        this((a) null);
        hg.b(f92.a < 31);
    }

    @RequiresApi(31)
    public final LogSessionId a() {
        a aVar = this.a;
        aVar.getClass();
        return aVar.a;
    }

    @RequiresApi(31)
    public mi1(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private mi1(@Nullable a aVar) {
        this.a = aVar;
    }
}
