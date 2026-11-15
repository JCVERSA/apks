package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;

public final class o6f implements gff {
    public final m6f a;

    public o6f(q6f q6fVar, m6f m6fVar) {
        this.a = m6fVar;
    }

    @Override
    public final void zza() {
        zze.zza("Rejecting reference for JS Engine.");
        if (((Boolean) zzbd.zzc().b(cye.L7)).booleanValue()) {
            this.a.d(new IllegalStateException("Unable to create JS engine reference."), "SdkJavascriptFactory.createNewReference.FailureCallback");
        } else {
            this.a.c();
        }
    }
}
