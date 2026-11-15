package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfg;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class hke extends iwe {
    public final Context b;
    public final zzr c;
    public final String d;
    public final zzaz e;

    public hke(zzaz zzazVar, Context context, zzr zzrVar, String str) {
        this.b = context;
        this.c = zzrVar;
        this.d = str;
        this.e = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "search");
        return new zzfg();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzf(ObjectWrapper.wrap(this.b), this.c, this.d, 251410000);
    }

    @Override
    public final Object c() {
        return this.e.a.zza(this.b, this.c, this.d, null, 3);
    }
}
