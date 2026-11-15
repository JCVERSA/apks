package defpackage;

import java.security.GeneralSecurityException;
import java.util.Objects;

public final class hei extends jai {
    public final gei a;
    public final int b;

    public hei(gei geiVar, int i) {
        this.a = geiVar;
        this.b = i;
    }

    public static hei d(gei geiVar, int i) throws GeneralSecurityException {
        if (i < 8 || i > 12) {
            throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
        }
        return new hei(geiVar, i);
    }

    @Override
    public final boolean a() {
        return this.a != gei.c;
    }

    public final int b() {
        return this.b;
    }

    public final gei c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof hei)) {
            return false;
        }
        hei heiVar = (hei) obj;
        return heiVar.a == this.a && heiVar.b == this.b;
    }

    public final int hashCode() {
        return Objects.hash(hei.class, this.a, Integer.valueOf(this.b));
    }

    public final String toString() {
        return "X-AES-GCM Parameters (variant: " + this.a.toString() + "salt_size_bytes: " + this.b + ")";
    }
}
