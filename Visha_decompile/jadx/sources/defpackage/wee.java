package defpackage;

public final class wee implements oee {
    public final int a;
    public final int b;
    public final u4h c;

    public wee(kjh kjhVar, erj erjVar) {
        u4h u4hVar = kjhVar.b;
        this.c = u4hVar;
        u4hVar.l(12);
        int iJ = u4hVar.J();
        if ("audio/raw".equals(erjVar.o)) {
            int iF = kfh.F(erjVar.G) * erjVar.E;
            if (iJ == 0 || iJ % iF != 0) {
                zrg.f("BoxParsers", "Audio sample size mismatch. stsd sample size: " + iF + ", stsz sample size: " + iJ);
                iJ = iF;
            }
        }
        this.a = iJ == 0 ? -1 : iJ;
        this.b = u4hVar.J();
    }

    @Override
    public final int zza() {
        return this.a;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public final int zzc() {
        int i = this.a;
        return i == -1 ? this.c.J() : i;
    }
}
