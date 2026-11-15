package defpackage;

public final class ypg {
    public final Object a;
    public ukj b = new ukj();
    public boolean c;
    public boolean d;

    public ypg(Object obj) {
        this.a = obj;
    }

    public final void a(int i, iog iogVar) {
        if (this.d) {
            return;
        }
        if (i != -1) {
            this.b.a(i);
        }
        this.c = true;
        iogVar.zza(this.a);
    }

    public final void b(yog yogVar) {
        if (this.d || !this.c) {
            return;
        }
        enj enjVarB = this.b.b();
        this.b = new ukj();
        this.c = false;
        yogVar.a(this.a, enjVarB);
    }

    public final void c(yog yogVar) {
        this.d = true;
        if (this.c) {
            this.c = false;
            yogVar.a(this.a, this.b.b());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ypg.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((ypg) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
