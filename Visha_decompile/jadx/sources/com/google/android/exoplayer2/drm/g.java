package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import defpackage.ta8;
import defpackage.ul1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public interface g {

    public static final class a {
        public final byte[] a;
        public final String b;
        public final int c;

        public a(byte[] bArr, String str, int i) {
            this.a = bArr;
            this.b = str;
            this.c = i;
        }

        public byte[] a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }
    }

    public static final class b {
        public final int a;
        public final byte[] b;

        public b(int i, byte[] bArr) {
            this.a = i;
            this.b = bArr;
        }
    }

    public interface c {
        void a(g gVar, byte[] bArr, int i, int i2, byte[] bArr2);
    }

    public interface d {
        void a(g gVar, byte[] bArr, long j);
    }

    public interface e {
        void a(g gVar, byte[] bArr, List list, boolean z);
    }

    public interface f {
        g acquireExoMediaDrm(UUID uuid);
    }

    public static final class C0079g {
        public final byte[] a;
        public final String b;

        public C0079g(byte[] bArr, String str) {
            this.a = bArr;
            this.b = str;
        }

        public byte[] a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }
    }

    default void a(byte[] bArr, ta8 ta8Var) {
    }

    void closeSession(byte[] bArr);

    ul1 createCryptoConfig(byte[] bArr);

    int getCryptoType();

    a getKeyRequest(byte[] bArr, List list, int i, HashMap map);

    C0079g getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map queryKeyStatus(byte[] bArr);

    void release();

    boolean requiresSecureDecoder(byte[] bArr, String str);

    void restoreKeys(byte[] bArr, byte[] bArr2);

    void setOnEventListener(@Nullable c cVar);

    void setOnExpirationUpdateListener(@Nullable d dVar);

    void setOnKeyStatusChangeListener(@Nullable e eVar);
}
