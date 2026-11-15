package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public interface g40 {

    public static class a extends IOException {
        public final int b;

        public a(Throwable th, int i) {
            super(th);
            this.b = i;
        }
    }

    static void a(@Nullable g40 g40Var, @Nullable g40 g40Var2) {
        if (g40Var == g40Var2) {
            return;
        }
        if (g40Var2 != null) {
            g40Var2.b(null);
        }
        if (g40Var != null) {
            g40Var.a(null);
        }
    }

    void a(@Nullable h40.a aVar);

    void b(@Nullable h40.a aVar);

    @Nullable
    fv getCryptoConfig();

    @Nullable
    a getError();

    UUID getSchemeUuid();

    int getState();

    default boolean playClearSamplesWithoutKeys() {
        return false;
    }

    @Nullable
    Map<String, String> queryKeyStatus();

    boolean requiresSecureDecoder(String str);
}
