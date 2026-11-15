package defpackage;

public final class xci {
    public static final xci b = new xci("TINK");
    public static final xci c = new xci("NO_PREFIX");
    public final String a;

    public xci(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
