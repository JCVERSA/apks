package defpackage;

public final class zai {
    public static final zai b = new zai("TINK");
    public static final zai c = new zai("CRUNCHY");
    public static final zai d = new zai("NO_PREFIX");
    public final String a;

    public zai(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
