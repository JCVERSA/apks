package defpackage;

public final class muf implements v7i {
    public final v7i a;
    public final ouf b;

    public muf(ouf oufVar, v7i v7iVar) {
        this.a = v7iVar;
        this.b = oufVar;
    }

    @Override
    public final void zza(Throwable th) {
        this.a.zza(th);
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.d = false;
            }
        });
    }

    @Override
    public final void zzb(Object obj) {
        ouf.c(this.b, ((juf) obj).a, this.a);
    }
}
