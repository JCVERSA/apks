package com.google.android.gms.ads.internal.util;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.internal.ads.c;
import defpackage.ane;
import defpackage.b5f;
import defpackage.eff;
import defpackage.fme;
import defpackage.kme;
import java.util.Map;

public final class zzbm extends c {
    public final eff n;
    public final com.google.android.gms.ads.internal.util.client.zzl o;

    public zzbm(String str, Map map, eff effVar) {
        super(0, str, new b5f(effVar));
        this.n = effVar;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        this.o = zzlVar;
        zzlVar.zzd(str, ShareTarget.METHOD_GET, null, null);
    }

    @Override
    public final kme a(fme fmeVar) {
        return kme.b(fmeVar, ane.b(fmeVar));
    }

    @Override
    public final void d(Object obj) {
        fme fmeVar = (fme) obj;
        Map map = fmeVar.c;
        int i = fmeVar.a;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = this.o;
        zzlVar.zzf(map, i);
        byte[] bArr = fmeVar.b;
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk() && bArr != null) {
            zzlVar.zzh(bArr);
        }
        this.n.c(fmeVar);
    }
}
