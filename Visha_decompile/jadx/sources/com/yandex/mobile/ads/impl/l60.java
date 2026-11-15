package com.yandex.mobile.ads.impl;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public interface l60 {

    public static final class a {
        private final byte[] a;
        private final String b;

        public a(String str, byte[] bArr) {
            this.a = bArr;
            this.b = str;
        }

        public final byte[] a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }
    }

    public interface b {
    }

    public interface c {
        l60 a(UUID uuid);
    }

    public static final class d {
        private final byte[] a;
        private final String b;

        public d(String str, byte[] bArr) {
            this.a = bArr;
            this.b = str;
        }

        public final byte[] a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }
    }

    a a(byte[] bArr, @Nullable List<f40.b> list, int i, @Nullable HashMap<String, String> map) throws NotProvisionedException;

    d a();

    Map<String, String> a(byte[] bArr);

    void a(@Nullable b bVar);

    default void a(byte[] bArr, mi1 mi1Var) {
    }

    void a(byte[] bArr, byte[] bArr2);

    boolean a(String str, byte[] bArr);

    int b();

    void b(byte[] bArr);

    @Nullable
    byte[] b(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException;

    void c(byte[] bArr) throws DeniedByServerException;

    byte[] c() throws MediaDrmException;

    fv d(byte[] bArr) throws MediaCryptoException;

    void release();
}
