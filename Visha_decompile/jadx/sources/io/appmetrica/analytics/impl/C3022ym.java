package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class C3022ym extends X2 {
    public C3022ym(int i, @NonNull String str) {
        this(i, str, PublicLogger.getAnonymousInstance());
    }

    @VisibleForTesting(otherwise = 3)
    public final int b() {
        return this.a;
    }

    public C3022ym(int i, @NonNull String str, @NonNull PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }

    @Override
    @Nullable
    public final String a(@Nullable String str) {
        if (str != null) {
            int length = str.length();
            int i = this.a;
            if (length > i) {
                String strSubstring = str.substring(0, i);
                this.c.warning("\"%s\" %s size exceeded limit of %d characters", this.b, str, Integer.valueOf(this.a));
                return strSubstring;
            }
        }
        return str;
    }

    @NonNull
    @VisibleForTesting(otherwise = 3)
    public final String a() {
        return this.b;
    }
}
