package defpackage;

import java.util.Objects;

public final class jli extends oli {
    public final int a;
    public final int b;
    public final hli c;
    public final gli d;

    public jli(int i, int i2, hli hliVar, gli gliVar, ili iliVar) {
        this.a = i;
        this.b = i2;
        this.c = hliVar;
        this.d = gliVar;
    }

    public static fli e() {
        return new fli(null);
    }

    @Override
    public final boolean a() {
        return this.c != hli.e;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final int d() {
        hli hliVar = this.c;
        if (hliVar == hli.e) {
            return this.b;
        }
        if (hliVar == hli.b || hliVar == hli.c || hliVar == hli.d) {
            return this.b + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof jli)) {
            return false;
        }
        jli jliVar = (jli) obj;
        return jliVar.a == this.a && jliVar.d() == d() && jliVar.c == this.c && jliVar.d == this.d;
    }

    public final gli f() {
        return this.d;
    }

    public final hli g() {
        return this.c;
    }

    public final int hashCode() {
        return Objects.hash(jli.class, Integer.valueOf(this.a), Integer.valueOf(this.b), this.c, this.d);
    }

    public final String toString() {
        gli gliVar = this.d;
        return "HMAC Parameters (variant: " + String.valueOf(this.c) + ", hashType: " + String.valueOf(gliVar) + ", " + this.b + "-byte tags, and " + this.a + "-byte key)";
    }
}
