package defpackage;

public final class qbe implements h8e {
    public final n9e a;
    public final int b;
    public final i9e c = new i9e();

    public qbe(n9e n9eVar, int i, rbe rbeVar) {
        this.a = n9eVar;
        this.b = i;
    }

    @Override
    public final g8e a(d9e d9eVar, long j) {
        long jZzf = d9eVar.zzf();
        long jB = b(d9eVar);
        long jZze = d9eVar.zze();
        d9eVar.zzg(Math.max(6, this.a.c));
        long jB2 = b(d9eVar);
        long jZze2 = d9eVar.zze();
        if (jB > j || jB2 <= j) {
            return jB2 <= j ? g8e.f(jB2, jZze2) : g8e.d(jB, jZzf);
        }
        return g8e.e(jZze);
    }

    public final long b(d9e d9eVar) {
        while (d9eVar.zze() < d9eVar.zzd() - 6) {
            n9e n9eVar = this.a;
            int i = this.b;
            i9e i9eVar = this.c;
            long jZze = d9eVar.zze();
            byte[] bArr = new byte[2];
            d9eVar.i(bArr, 0, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                d9eVar.zzj();
                d9eVar.zzg((int) (jZze - d9eVar.zzf()));
            } else {
                u4h u4hVar = new u4h(16);
                System.arraycopy(bArr, 0, u4hVar.n(), 0, 2);
                u4hVar.k(g9e.a(d9eVar, u4hVar.n(), 2, 14));
                d9eVar.zzj();
                d9eVar.zzg((int) (jZze - d9eVar.zzf()));
                if (j9e.c(u4hVar, n9eVar, i, i9eVar)) {
                    break;
                }
            }
            d9eVar.zzg(1);
        }
        if (d9eVar.zze() < d9eVar.zzd() - 6) {
            return this.c.a;
        }
        d9eVar.zzg((int) (d9eVar.zzd() - d9eVar.zze()));
        return this.a.j;
    }

    @Override
    public final void zzb() {
    }
}
