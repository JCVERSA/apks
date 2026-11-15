package com.vungle.ads.internal.util;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {
    public static final a Companion = new a(null);
    private static final long OPERATION_TIMEOUT = TimeUnit.SECONDS.toMillis(4);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final long getTimeout() {
        if (u.INSTANCE.isMainThread()) {
            return OPERATION_TIMEOUT;
        }
        return Long.MAX_VALUE;
    }
}
