package defpackage;

public class yn4 {
    public int a = 1;

    public yn4 a(Object obj) {
        this.a = (this.a * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int b() {
        return this.a;
    }

    public final yn4 c(boolean z) {
        this.a = (this.a * 31) + (z ? 1 : 0);
        return this;
    }
}
