package defpackage;

public class ct8 {
    public u2d a = new u2d();
    public fkd b;
    public final hnd c;

    public ct8(jhd jhdVar) {
        this.c = jhdVar.c();
    }

    public void a(dv4 dv4Var) {
        this.a.a(this, dv4Var);
    }

    public fkd b() {
        if (this.c.e() != null) {
            z7d z7dVar = new z7d(this.c.e());
            int i = es4.b;
            long j = i <= 0 ? 104857600L : i * 1048576;
            int i2 = es4.a;
            this.b = z7dVar.a(j, i2 <= 0 ? 864000000L : i2 * 3600000);
        }
        return this.b;
    }

    public hnd c() {
        return this.c;
    }

    public kod d() {
        return new kod(this.c);
    }
}
