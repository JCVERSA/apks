package defpackage;

public final class xee implements oee {
    public final u4h a;
    public final int b;
    public final int c;
    public int d;
    public int e;

    public xee(kjh kjhVar) {
        u4h u4hVar = kjhVar.b;
        this.a = u4hVar;
        u4hVar.l(12);
        this.c = u4hVar.J() & 255;
        this.b = u4hVar.J();
    }

    @Override
    public final int zza() {
        return -1;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public final int zzc() {
        int i = this.c;
        if (i == 8) {
            return this.a.G();
        }
        if (i == 16) {
            return this.a.K();
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.e & 15;
        }
        int iG = this.a.G();
        this.e = iG;
        return (iG & 240) >> 4;
    }
}
