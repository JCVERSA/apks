package defpackage;

public final class zzg implements v7i {
    public final hmh a;
    public final a0h b;

    public zzg(a0h a0hVar, hmh hmhVar) {
        this.a = hmhVar;
        this.b = a0hVar;
    }

    @Override
    public final void zza(Throwable th) {
        a0h a0hVar = this.b;
        synchronized (a0hVar) {
            try {
                b0h b0hVar = a0hVar.h;
                hmh hmhVar = this.a;
                b0hVar.b(th, hmhVar);
                hmh hmhVarA = a0hVar.h.a();
                if (hmhVar.v0) {
                    while (hmhVarA != null) {
                        a0hVar.e(hmhVarA);
                        hmhVarA = a0hVar.h.a();
                    }
                } else if (hmhVarA != null) {
                    a0hVar.e(hmhVarA);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void zzb(Object obj) {
        a0h a0hVar = this.b;
        r0h r0hVar = (r0h) obj;
        synchronized (a0hVar) {
            try {
                a0hVar.h.c(r0hVar, this.a);
                hmh hmhVarA = a0hVar.h.a();
                if (hmhVarA != null) {
                    a0hVar.e(hmhVarA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
