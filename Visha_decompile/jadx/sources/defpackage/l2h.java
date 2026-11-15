package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbcy;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzffn;

public final class l2h implements kxg {
    public final Context a;
    public final atf b;
    public final zzbdd c;
    public final g8i d;
    public final lrh e;

    public l2h(Context context, atf atfVar, lrh lrhVar, g8i g8iVar, zzbdd zzbddVar) {
        this.a = context;
        this.b = atfVar;
        this.e = lrhVar;
        this.d = g8iVar;
        this.c = zzbddVar;
    }

    @Override
    public final im5 a(vmh vmhVar, hmh hmhVar) {
        j2h j2hVar = new j2h(this, new View(this.a), null, new ztf() {
            @Override
            public final zzea zza() {
                return null;
            }
        }, (imh) hmhVar.u.get(0));
        vrf vrfVarA = this.b.a(new puf(vmhVar, hmhVar, null), j2hVar);
        k2h k2hVarL = vrfVarA.l();
        lmh lmhVar = hmhVar.s;
        final zzbcy zzbcyVar = new zzbcy(k2hVarL, lmhVar.b, lmhVar.a);
        zzffn zzffnVar = zzffn.CUSTOM_RENDER_SYN;
        return xqh.d(new qqh() {
            @Override
            public final void zza() throws RemoteException {
                this.a.c.zze(zzbcyVar);
            }
        }, this.d, zzffnVar, this.e).b(zzffn.CUSTOM_RENDER_ACK).d(j8.h(vrfVarA.h())).a();
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar;
        return (this.c == null || (lmhVar = hmhVar.s) == null || lmhVar.a == null) ? false : true;
    }
}
