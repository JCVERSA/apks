package com.google.android.libraries.places.internal;

import android.content.Context;
import com.google.android.datatransport.runtime.t;
import t8.d;
import t8.f;
import t8.g;
import t8.h;

public final class zzkf implements zzkg {
    private static final Integer zza = 79508299;
    private final h zzb;

    public zzkf(Context context) {
        t.f(context.getApplicationContext());
        this.zzb = t.c().h("cct").a("LE", zzsm.class, new g() {
            @Override
            public final Object apply(Object obj) {
                return ((zzsm) obj).zzao();
            }
        });
    }

    @Override
    public final void zza(zzsm zzsmVar) {
        this.zzb.a(d.g(zzsmVar, f.b(zza)));
    }
}
