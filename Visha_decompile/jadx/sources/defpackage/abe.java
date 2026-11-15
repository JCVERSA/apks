package defpackage;

public final class abe implements kae {
    public final long a;
    public final dbe b;

    public abe(dbe dbeVar, long j) {
        this.b = dbeVar;
        this.a = j;
    }

    @Override
    public final z9e a(long j) {
        dbe dbeVar = this.b;
        z9e z9eVarA = dbeVar.i[0].a(j);
        for (int i = 1; i < dbeVar.i.length; i++) {
            z9e z9eVarA2 = dbeVar.i[i].a(j);
            if (z9eVarA2.a.b < z9eVarA.a.b) {
                z9eVarA = z9eVarA2;
            }
        }
        return z9eVarA;
    }

    @Override
    public final long zza() {
        return this.a;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
