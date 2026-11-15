package androidx.media3.exoplayer.drm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import x1.f4;

public interface b0 {

    public static final class a {

        private final byte[] f11251a;

        private final String f11252b;

        private final int f11253c;

        public a(byte[] bArr, String str, int i10) {
            this.f11251a = bArr;
            this.f11252b = str;
            this.f11253c = i10;
        }

        public byte[] a() {
            return this.f11251a;
        }

        public String b() {
            return this.f11252b;
        }
    }

    public interface b {
        void a(b0 b0Var, byte[] bArr, int i10, int i11, byte[] bArr2);
    }

    public interface c {
        b0 a(UUID uuid);
    }

    public static final class d {

        private final byte[] f11254a;

        private final String f11255b;

        public d(byte[] bArr, String str) {
            this.f11254a = bArr;
            this.f11255b = str;
        }

        public byte[] a() {
            return this.f11254a;
        }

        public String b() {
            return this.f11255b;
        }
    }

    int a();

    androidx.media3.decoder.b b(byte[] bArr);

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, List list, int i10, HashMap map);

    void e(b bVar);

    void f(byte[] bArr, f4 f4Var);

    d getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);
}
