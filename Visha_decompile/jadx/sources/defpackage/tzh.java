package defpackage;

public final class tzh {
    public final String a;
    public final long b;

    public tzh() {
        this.a = null;
        this.b = -1L;
    }

    public final long a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean c() {
        return this.a != null && this.b > 0;
    }

    public tzh(String str, long j) {
        this.a = str;
        this.b = j;
    }
}
