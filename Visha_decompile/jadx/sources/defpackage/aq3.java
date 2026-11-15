package defpackage;

public final class aq3 {
    public String a;
    public String b;
    public String c;
    public int d = -1;

    public aq3(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof aq3)) {
            return false;
        }
        aq3 aq3Var = (aq3) obj;
        return this.a.equals(aq3Var.a) && this.b.equals(aq3Var.b) && this.c.equals(aq3Var.c);
    }

    public int hashCode() {
        if (this.d == -1) {
            this.d = (this.a.hashCode() ^ this.b.hashCode()) ^ this.c.hashCode();
        }
        return this.d;
    }
}
