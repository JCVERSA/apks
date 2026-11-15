package ob;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;

public final class r {

    private final b0 f67782a;

    private final int f67783b;

    private final int f67784c;

    private r(Class cls, int i10, int i11) {
        this(b0.b(cls), i10, i11);
    }

    public static r a(Class cls) {
        return new r(cls, 0, 2);
    }

    private static String b(int i10) {
        if (i10 == 0) {
            return DevicePublicKeyStringDef.DIRECT;
        }
        if (i10 == 1) {
            return "provider";
        }
        if (i10 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i10);
    }

    public static r h(Class cls) {
        return new r(cls, 0, 0);
    }

    public static r i(Class cls) {
        return new r(cls, 0, 1);
    }

    public static r j(b0 b0Var) {
        return new r(b0Var, 0, 1);
    }

    public static r k(Class cls) {
        return new r(cls, 1, 0);
    }

    public static r l(b0 b0Var) {
        return new r(b0Var, 1, 0);
    }

    public static r m(Class cls) {
        return new r(cls, 1, 1);
    }

    public static r n(b0 b0Var) {
        return new r(b0Var, 1, 1);
    }

    public static r o(Class cls) {
        return new r(cls, 2, 0);
    }

    public b0 c() {
        return this.f67782a;
    }

    public boolean d() {
        return this.f67784c == 2;
    }

    public boolean e() {
        return this.f67784c == 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f67782a.equals(rVar.f67782a) && this.f67783b == rVar.f67783b && this.f67784c == rVar.f67784c;
    }

    public boolean f() {
        return this.f67783b == 1;
    }

    public boolean g() {
        return this.f67783b == 2;
    }

    public int hashCode() {
        return ((((this.f67782a.hashCode() ^ 1000003) * 1000003) ^ this.f67783b) * 1000003) ^ this.f67784c;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f67782a);
        sb2.append(", type=");
        int i10 = this.f67783b;
        if (i10 == 1) {
            str = "required";
        } else {
            str = i10 == 0 ? "optional" : "set";
        }
        sb2.append(str);
        sb2.append(", injection=");
        sb2.append(b(this.f67784c));
        sb2.append("}");
        return sb2.toString();
    }

    private r(b0 b0Var, int i10, int i11) {
        this.f67782a = (b0) a0.c(b0Var, "Null dependency anInterface.");
        this.f67783b = i10;
        this.f67784c = i11;
    }
}
