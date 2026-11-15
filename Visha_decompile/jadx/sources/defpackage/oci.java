package defpackage;

public final class oci {
    public static final oci b = new oci("TINK");
    public static final oci c = new oci("CRUNCHY");
    public static final oci d = new oci("NO_PREFIX");
    public final String a;

    public oci(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
