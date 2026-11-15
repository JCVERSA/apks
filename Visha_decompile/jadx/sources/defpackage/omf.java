package defpackage;

public final class omf implements ung {
    public final zlf a;
    public final rmf b;
    public Long c;
    public String d;

    public omf(zlf zlfVar, rmf rmfVar, dnf dnfVar) {
        this.a = zlfVar;
        this.b = rmfVar;
    }

    @Override
    public final ung a(long j) {
        this.c = Long.valueOf(j);
        return this;
    }

    @Override
    public final ung zza(String str) {
        str.getClass();
        this.d = str;
        return this;
    }

    @Override
    public final vng zzc() {
        pyi.c(this.c, Long.class);
        pyi.c(this.d, String.class);
        return new pmf(this.a, this.b, this.c, this.d);
    }
}
