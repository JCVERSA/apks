package defpackage;

import java.util.Objects;

public final class ski extends oli {
    public final int a;
    public final int b;
    public final qki c;

    public ski(int i, int i2, qki qkiVar, rki rkiVar) {
        this.a = i;
        this.b = i2;
        this.c = qkiVar;
    }

    public static pki e() {
        return new pki(null);
    }

    @Override
    public final boolean a() {
        return this.c != qki.e;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final int d() {
        qki qkiVar = this.c;
        if (qkiVar == qki.e) {
            return this.b;
        }
        if (qkiVar == qki.b || qkiVar == qki.c || qkiVar == qki.d) {
            return this.b + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ski)) {
            return false;
        }
        ski skiVar = (ski) obj;
        return skiVar.a == this.a && skiVar.d() == d() && skiVar.c == this.c;
    }

    public final qki f() {
        return this.c;
    }

    public final int hashCode() {
        return Objects.hash(ski.class, Integer.valueOf(this.a), Integer.valueOf(this.b), this.c);
    }

    public final String toString() {
        return "AES-CMAC Parameters (variant: " + String.valueOf(this.c) + ", " + this.b + "-byte tags, and " + this.a + "-byte key)";
    }
}
