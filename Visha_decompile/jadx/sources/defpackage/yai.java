package defpackage;

public final class yai {
    public static final yai b = new yai("SHA1");
    public static final yai c = new yai("SHA224");
    public static final yai d = new yai("SHA256");
    public static final yai e = new yai("SHA384");
    public static final yai f = new yai("SHA512");
    public final String a;

    public yai(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
