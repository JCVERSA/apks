package defpackage;

public final class hci {
    public static final hci b = new hci("TINK");
    public static final hci c = new hci("CRUNCHY");
    public static final hci d = new hci("NO_PREFIX");
    public final String a;

    public hci(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
