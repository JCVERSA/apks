package defpackage;

import java.util.Objects;

public final class lbi extends jai {
    public final int a;
    public final int b;
    public final int c = 16;
    public final jbi d;

    public lbi(int i, int i2, int i3, jbi jbiVar, kbi kbiVar) {
        this.a = i;
        this.b = i2;
        this.d = jbiVar;
    }

    public static ibi d() {
        return new ibi(null);
    }

    @Override
    public final boolean a() {
        return this.d != jbi.d;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final jbi e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lbi)) {
            return false;
        }
        lbi lbiVar = (lbi) obj;
        return lbiVar.a == this.a && lbiVar.b == this.b && lbiVar.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(lbi.class, Integer.valueOf(this.a), Integer.valueOf(this.b), 16, this.d);
    }

    public final String toString() {
        return "AesEax Parameters (variant: " + String.valueOf(this.d) + ", " + this.b + "-byte IV, 16-byte tag, and " + this.a + "-byte key)";
    }
}
