package defpackage;

public class au9 {
    public final String a;
    public final long b;
    public final String c;

    public au9(String str, long j, String str2) {
        this.a = str;
        this.b = j;
        this.c = str2;
    }

    public String toString() {
        return "SourceInfo{url='" + this.a + "', length=" + this.b + ", mime='" + this.c + "'}";
    }
}
