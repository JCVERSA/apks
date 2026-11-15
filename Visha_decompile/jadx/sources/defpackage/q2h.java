package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcy;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzffn;

public final class q2h implements kxg {
    public final zzbdd a;
    public final g8i b;
    public final lrh c;
    public final d3h d;

    public q2h(lrh lrhVar, g8i g8iVar, zzbdd zzbddVar, d3h d3hVar) {
        this.c = lrhVar;
        this.b = g8iVar;
        this.a = zzbddVar;
        this.d = d3hVar;
    }

    @Override
    public final im5 a(vmh vmhVar, hmh hmhVar) {
        eff effVar = new eff();
        z2h z2hVar = new z2h();
        z2hVar.a(new p2h(this, effVar, vmhVar, hmhVar, z2hVar));
        lmh lmhVar = hmhVar.s;
        final zzbcy zzbcyVar = new zzbcy(z2hVar, lmhVar.b, lmhVar.a);
        zzffn zzffnVar = zzffn.CUSTOM_RENDER_SYN;
        return xqh.d(new qqh() {
            @Override
            public final void zza() throws RemoteException {
                this.a.a.zze(zzbcyVar);
            }
        }, this.b, zzffnVar, this.c).b(zzffn.CUSTOM_RENDER_ACK).d(effVar).a();
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar;
        return (this.a == null || (lmhVar = hmhVar.s) == null || lmhVar.a == null) ? false : true;
    }
}
