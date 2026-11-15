package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.client.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class wth {
    public final Context a;
    public final Executor b;
    public final h8i c;
    public final zzu d;
    public final oth e;
    public final zzfgq f;

    public wth(Context context, Executor executor, h8i h8iVar, zzu zzuVar, oth othVar, zzfgq zzfgqVar) {
        this.a = context;
        this.b = executor;
        this.c = h8iVar;
        this.d = zzuVar;
        this.e = othVar;
        this.f = zzfgqVar;
    }

    public final void d(final String str, zzv zzvVar, zzfgn zzfgnVar, a2g a2gVar) {
        im5 im5VarM;
        wrh wrhVarA = null;
        if (zzfgq.zza() && ((Boolean) sze.d.e()).booleanValue()) {
            wrhVarA = vrh.a(this.a, 14);
            wrhVarA.zzi();
        }
        if (zzvVar != null) {
            im5VarM = new nth(zzvVar.zzb(), this.d, this.c, this.e).d(str);
        } else {
            im5VarM = this.c.m(new Callable() {
                @Override
                public final Object call() {
                    return this.b.d.zza(str);
                }
            });
        }
        j8.r(im5VarM, new vth(this, wrhVarA, zzfgnVar, a2gVar), this.b);
    }

    public final void e(List list, zzv zzvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d((String) it.next(), zzvVar, null, null);
        }
    }
}
