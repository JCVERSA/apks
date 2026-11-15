package defpackage;

public class t44 {
    public static t44 d = new t44(null);
    public String a;
    public Throwable b;
    public Object[] c;

    public t44(String str) {
        this(str, null, null);
    }

    public String a() {
        return this.a;
    }

    public Throwable b() {
        return this.b;
    }

    public t44(String str, Object[] objArr, Throwable th) {
        this.a = str;
        this.b = th;
        this.c = objArr;
    }
}
