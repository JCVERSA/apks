package com.google.android.exoplayer2.drm;

import g9.u1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public interface c0 {

    public static final class a {

        private final byte[] f24328a;

        private final String f24329b;

        private final int f24330c;

        public a(byte[] bArr, String str, int i10) {
            this.f24328a = bArr;
            this.f24329b = str;
            this.f24330c = i10;
        }

        public byte[] a() {
            return this.f24328a;
        }

        public String b() {
            return this.f24329b;
        }
    }

    public interface b {
        void a(c0 c0Var, byte[] bArr, int i10, int i11, byte[] bArr2);
    }

    public interface c {
        c0 a(UUID uuid);
    }

    public static final class d {

        private final byte[] f24331a;

        private final String f24332b;

        public d(byte[] bArr, String str) {
            this.f24331a = bArr;
            this.f24332b = str;
        }

        public byte[] a() {
            return this.f24331a;
        }

        public String b() {
            return this.f24332b;
        }
    }

    int a();

    com.google.android.exoplayer2.decoder.b b(byte[] bArr);

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, List list, int i10, HashMap map);

    void e(b bVar);

    void f(byte[] bArr, u1 u1Var);

    d getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);
}
