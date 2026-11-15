package defpackage;

public class aa1 {
    public String a;
    public String b;
    public String[] c;
    public boolean d;
    public boolean e;
    public boolean f;

    public aa1(String... strArr) {
        this.c = strArr;
    }

    public aa1(String str, String str2) {
        this(str, str2, false, false, false);
    }

    public aa1(String str, String str2, boolean z, boolean z2) {
        this(str, str2, z, z2, false);
    }

    public aa1(String str, String str2, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = str2;
        this.d = z;
        this.e = z2;
        this.f = z3;
    }
}
