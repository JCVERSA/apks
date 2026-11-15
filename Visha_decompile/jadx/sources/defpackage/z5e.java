package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzfm;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzboy;

public final class z5e extends iwe {
    public final Context b;
    public final String c;
    public final zzboy d;

    public z5e(zzaz zzazVar, Context context, String str, zzboy zzboyVar) {
        this.b = context;
        this.c = str;
        this.d = zzboyVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "rewarded");
        return new zzfm();
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzp(ObjectWrapper.wrap(this.b), this.c, this.d, 251410000);
    }

    @Override
    public final Object c() {
        return ncf.a(this.b, this.c, this.d);
    }
}
