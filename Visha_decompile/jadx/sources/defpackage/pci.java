package defpackage;

import java.util.Objects;

public final class pci extends jai {
    public final oci a;

    public pci(oci ociVar) {
        this.a = ociVar;
    }

    public static pci c(oci ociVar) {
        return new pci(ociVar);
    }

    @Override
    public final boolean a() {
        return this.a != oci.d;
    }

    public final oci b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof pci) && ((pci) obj).a == this.a;
    }

    public final int hashCode() {
        return Objects.hash(pci.class, this.a);
    }

    public final String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + this.a.toString() + ")";
    }
}
