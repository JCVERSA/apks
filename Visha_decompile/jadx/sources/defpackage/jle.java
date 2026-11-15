package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfg;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;

public final class jle extends iwe {
    public final Context b;
    public final zzr c;
    public final String d;
    public final zzboy e;
    public final zzaz f;

    public jle(zzaz zzazVar, Context context, zzr zzrVar, String str, zzboy zzboyVar) {
        this.b = context;
        this.c = zzrVar;
        this.d = str;
        this.e = zzboyVar;
        this.f = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "interstitial");
        return new zzfg();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zze(ObjectWrapper.wrap(this.b), this.c, this.d, this.e, 251410000);
    }

    @Override
    public final Object c() {
        return this.f.a.zza(this.b, this.c, this.d, this.e, 2);
    }
}
