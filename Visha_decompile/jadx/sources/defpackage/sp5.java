package defpackage;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;

public abstract class sp5 {

    public static abstract class a {
        public abstract sp5 a();

        public abstract a b(Integer num);

        public abstract a c(long j);

        public abstract a d(long j);

        public abstract a e(NetworkConnectionInfo networkConnectionInfo);

        public abstract a f(byte[] bArr);

        public abstract a g(String str);

        public abstract a h(long j);
    }

    public static a a() {
        return new i30.b();
    }

    public static a i(String str) {
        return a().g(str);
    }

    public static a j(byte[] bArr) {
        return a().f(bArr);
    }

    public abstract Integer b();

    public abstract long c();

    public abstract long d();

    public abstract NetworkConnectionInfo e();

    public abstract byte[] f();

    public abstract String g();

    public abstract long h();
}
