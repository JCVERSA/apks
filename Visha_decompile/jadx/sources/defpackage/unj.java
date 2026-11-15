package defpackage;

public final class unj implements tqj {
    public final tqj a;
    public final n5f b;

    public unj(tqj tqjVar, n5f n5fVar) {
        this.a = tqjVar;
        this.b = n5fVar;
    }

    @Override
    public final int a(int i) {
        return this.a.a(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof unj)) {
            return false;
        }
        unj unjVar = (unj) obj;
        return this.a.equals(unjVar.a) && this.b.equals(unjVar.b);
    }

    public final int hashCode() {
        return ((this.b.hashCode() + 527) * 31) + this.a.hashCode();
    }

    @Override
    public final int zza(int i) {
        return this.a.zza(i);
    }

    @Override
    public final int zzb() {
        return this.a.zzb();
    }

    @Override
    public final int zzd() {
        return this.a.zzd();
    }

    @Override
    public final erj zze(int i) {
        return this.b.b(this.a.zza(i));
    }

    @Override
    public final erj zzf() {
        return this.b.b(this.a.zzb());
    }

    @Override
    public final n5f zzg() {
        return this.b;
    }
}
