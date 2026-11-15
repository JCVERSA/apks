package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.UnsupportedEncodingException;

public final class C2972wm extends X2 {
    public C2972wm(int i, @NonNull String str) {
        this(i, str, PublicLogger.getAnonymousInstance());
    }

    @VisibleForTesting(otherwise = 3)
    public final int b() {
        return this.a;
    }

    public C2972wm(int i, @NonNull String str, @NonNull PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }

    @NonNull
    @VisibleForTesting(otherwise = 3)
    public final String a() {
        return this.b;
    }

    @Override
    @Nullable
    public final String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            int i = this.a;
            if (length <= i) {
                return str;
            }
            String str2 = new String(bytes, 0, i, "UTF-8");
            try {
                this.c.warning("\"%s\" %s exceeded limit of %d bytes", this.b, str, Integer.valueOf(this.a));
            } catch (UnsupportedEncodingException unused) {
            }
            return str2;
        } catch (UnsupportedEncodingException unused2) {
            return str;
        }
    }
}
