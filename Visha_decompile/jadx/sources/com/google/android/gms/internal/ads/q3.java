package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.zzf;
import com.google.android.gms.ads.formats.zzg;
import defpackage.h1f;
import defpackage.p1f;

public final class q3 {
    public final zzg a;
    public final zzf b;
    public h1f c;

    public q3(zzg zzgVar, zzf zzfVar) {
        this.a = zzgVar;
        this.b = zzfVar;
    }

    public final zzbgx c() {
        p1f p1fVar = null;
        if (this.b == null) {
            return null;
        }
        return new zzbhr(this, p1fVar);
    }

    public final zzbha d() {
        return new zzbhs(this, null);
    }

    public final synchronized h1f f(zzbgn zzbgnVar) {
        h1f h1fVar = this.c;
        if (h1fVar != null) {
            return h1fVar;
        }
        h1f h1fVar2 = new h1f(zzbgnVar);
        this.c = h1fVar2;
        return h1fVar2;
    }
}
