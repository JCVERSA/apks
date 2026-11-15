package defpackage;

public final class epj implements yoj {
    public final yoj a;
    public final long b;

    public epj(yoj yojVar, long j) {
        this.a = yojVar;
        this.b = j;
    }

    @Override
    public final int a(long j) {
        return this.a.a(j - this.b);
    }

    @Override
    public final int b(p7j p7jVar, xzi xziVar, int i) {
        int iB = this.a.b(p7jVar, xziVar, i);
        if (iB != -4) {
            return iB;
        }
        xziVar.f += this.b;
        return -4;
    }

    public final yoj c() {
        return this.a;
    }

    @Override
    public final void zzd() {
        this.a.zzd();
    }

    @Override
    public final boolean zze() {
        return this.a.zze();
    }
}
