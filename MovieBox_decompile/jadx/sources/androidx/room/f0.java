package androidx.room;

import kotlin.jvm.internal.Intrinsics;

public abstract class f0 implements g0 {

    private final int f14342a;

    private final String f14343b;

    private final String f14344c;

    public static final class a {

        public final boolean f14345a;

        public final String f14346b;

        public a(boolean z10, String str) {
            this.f14345a = z10;
            this.f14346b = str;
        }
    }

    public f0(int i10, String identityHash, String legacyIdentityHash) {
        Intrinsics.h(identityHash, "identityHash");
        Intrinsics.h(legacyIdentityHash, "legacyIdentityHash");
        this.f14342a = i10;
        this.f14343b = identityHash;
        this.f14344c = legacyIdentityHash;
    }

    public abstract void a(y3.b bVar);

    public abstract void b(y3.b bVar);

    public final String c() {
        return this.f14343b;
    }

    public final String d() {
        return this.f14344c;
    }

    public final int e() {
        return this.f14342a;
    }

    public abstract void f(y3.b bVar);

    public abstract void g(y3.b bVar);

    public abstract void h(y3.b bVar);

    public abstract void i(y3.b bVar);

    public abstract a j(y3.b bVar);
}
