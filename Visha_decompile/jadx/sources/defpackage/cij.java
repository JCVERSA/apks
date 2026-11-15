package defpackage;

public final class cij {
    public final vqf[] a;
    public final fjj b;
    public final utf c;

    public cij(vqf... vqfVarArr) {
        fjj fjjVar = new fjj();
        utf utfVar = new utf();
        vqf[] vqfVarArr2 = {fjjVar, utfVar};
        this.a = vqfVarArr2;
        System.arraycopy(vqfVarArr, 0, vqfVarArr2, 0, 0);
        this.b = fjjVar;
        this.c = utfVar;
    }

    public final long a(long j) {
        utf utfVar = this.c;
        return utfVar.zzg() ? utfVar.c(j) : j;
    }

    public final long b() {
        return this.b.i();
    }

    public final vwe c(vwe vweVar) {
        utf utfVar = this.c;
        utfVar.e(vweVar.a);
        utfVar.d(vweVar.b);
        return vweVar;
    }

    public final boolean d(boolean z) {
        this.b.j(z);
        return z;
    }

    public final vqf[] e() {
        return this.a;
    }
}
