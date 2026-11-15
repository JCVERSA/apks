package defpackage;

public final class xoh {
    public final woh a = new woh();
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;

    public final woh a() {
        woh wohVar = this.a;
        woh wohVarClone = wohVar.clone();
        wohVar.b = false;
        wohVar.c = false;
        return wohVarClone;
    }

    public final String b() {
        return "\n\tPool does not exist: " + this.d + "\n\tNew pools created: " + this.b + "\n\tPools removed: " + this.c + "\n\tEntries added: " + this.f + "\n\tNo entries retrieved: " + this.e + "\n";
    }

    public final void c() {
        this.f++;
    }

    public final void d() {
        this.b++;
        this.a.b = true;
    }

    public final void e() {
        this.e++;
    }

    public final void f() {
        this.d++;
    }

    public final void g() {
        this.c++;
        this.a.c = true;
    }
}
