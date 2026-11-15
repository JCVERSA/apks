package defpackage;

public final class emj implements yoj {
    public final yoj a;
    public boolean b;
    public final fmj c;

    public emj(fmj fmjVar, yoj yojVar) {
        this.c = fmjVar;
        this.a = yojVar;
    }

    @Override
    public final int a(long j) {
        if (this.c.j()) {
            return -3;
        }
        return this.a.a(j);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0039  */
    @Override
    public final int b(p7j p7jVar, xzi xziVar, int i) {
        fmj fmjVar = this.c;
        if (fmjVar.j()) {
            return -3;
        }
        if (this.b) {
            xziVar.c(4);
            return -4;
        }
        long jZzb = fmjVar.zzb();
        int iB = this.a.b(p7jVar, xziVar, i);
        if (iB != -5) {
            long j = fmjVar.f;
            if (j == Long.MIN_VALUE || ((iB != -4 || xziVar.f < j) && !(iB == -3 && jZzb == Long.MIN_VALUE && !xziVar.e))) {
                return iB;
            }
            xziVar.b();
            xziVar.c(4);
            this.b = true;
            return -4;
        }
        erj erjVar = p7jVar.a;
        erjVar.getClass();
        int i2 = erjVar.H;
        if (i2 != 0) {
            int i3 = fmjVar.f == Long.MIN_VALUE ? erjVar.I : 0;
            gpj gpjVarB = erjVar.b();
            gpjVarB.i(i2);
            gpjVarB.j(i3);
            p7jVar.a = gpjVarB.K();
        } else if (erjVar.I != 0) {
            i2 = 0;
            if (fmjVar.f == Long.MIN_VALUE) {
            }
            gpj gpjVarB2 = erjVar.b();
            gpjVarB2.i(i2);
            gpjVarB2.j(i3);
            p7jVar.a = gpjVarB2.K();
        }
        return -5;
    }

    public final void c() {
        this.b = false;
    }

    @Override
    public final void zzd() {
        this.a.zzd();
    }

    @Override
    public final boolean zze() {
        return !this.c.j() && this.a.zze();
    }
}
