package defpackage;

public final class w4h implements b5h {
    public final x4h a;

    public w4h(x4h x4hVar) {
        this.a = x4hVar;
    }

    @Override
    public final void zza() {
        synchronized (this.a) {
        }
    }

    @Override
    public final void zzb(Object obj) {
        buf bufVar = (buf) obj;
        x4h x4hVar = this.a;
        synchronized (x4hVar) {
            x4hVar.c = bufVar.c();
            bufVar.b();
        }
    }
}
