package defpackage;

public final class gli {
    public static final gli b = new gli("SHA1");
    public static final gli c = new gli("SHA224");
    public static final gli d = new gli("SHA256");
    public static final gli e = new gli("SHA384");
    public static final gli f = new gli("SHA512");
    public final String a;

    public gli(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
