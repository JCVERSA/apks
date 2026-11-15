package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class ach implements deh {
    public final gmh a;

    public ach(gmh gmhVar) {
        this.a = gmhVar;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        kyf kyfVar = (kyf) obj;
        gmh gmhVar = this.a;
        if (gmhVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.ac)).booleanValue()) {
                return;
            }
            Bundle bundle = kyfVar.a;
            bundle.putBoolean("render_in_browser", gmhVar.d());
            bundle.putBoolean("disable_ml", gmhVar.c());
        }
    }
}
