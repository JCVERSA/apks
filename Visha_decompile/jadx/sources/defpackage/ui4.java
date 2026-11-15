package defpackage;

public final class ui4 {
    public final String a;
    public final String b;

    public ui4(String str) {
        this(str, null);
    }

    public ui4(String str, String str2) {
        wd8.m(str, "log tag cannot be null");
        wd8.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.a = str;
        this.b = (str2 == null || str2.length() <= 0) ? null : str2;
    }
}
