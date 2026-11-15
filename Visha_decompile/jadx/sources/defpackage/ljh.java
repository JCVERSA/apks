package defpackage;

public final class ljh implements wjh {
    public oyf a;

    @Override
    public final im5 a(xjh xjhVar, vjh vjhVar, Object obj) {
        return c(xjhVar, vjhVar, null);
    }

    @Override
    public final synchronized oyf zzd() {
        return this.a;
    }

    public final synchronized im5 c(xjh xjhVar, vjh vjhVar, oyf oyfVar) {
        gvf gvfVarZzb;
        try {
            if (oyfVar != null) {
                this.a = oyfVar;
            } else {
                this.a = (oyf) vjhVar.a(xjhVar.b).zzh();
            }
            gvfVarZzb = this.a.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return gvfVarZzb.h(gvfVarZzb.i());
    }
}
