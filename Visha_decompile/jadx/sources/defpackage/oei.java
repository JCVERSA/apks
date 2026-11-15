package defpackage;

import java.util.Objects;

public final class oei extends jai {
    public final nei a;

    public oei(nei neiVar) {
        this.a = neiVar;
    }

    public static oei c(nei neiVar) {
        return new oei(neiVar);
    }

    @Override
    public final boolean a() {
        return this.a != nei.d;
    }

    public final nei b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof oei) && ((oei) obj).a == this.a;
    }

    public final int hashCode() {
        return Objects.hash(oei.class, this.a);
    }

    public final String toString() {
        return "XChaCha20Poly1305 Parameters (variant: " + this.a.toString() + ")";
    }
}
