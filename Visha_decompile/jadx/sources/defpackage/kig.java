package defpackage;

import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzr;

public final class kig extends uhg implements t8g {
    public t8g g;

    public final synchronized void b(zza zzaVar, r1f r1fVar, zzr zzrVar, z1f z1fVar, zzac zzacVar, t8g t8gVar) {
        super.a(zzaVar, r1fVar, zzrVar, z1fVar, zzacVar);
        this.g = t8gVar;
    }

    @Override
    public final synchronized void zzdd() {
        t8g t8gVar = this.g;
        if (t8gVar != null) {
            t8gVar.zzdd();
        }
    }

    @Override
    public final synchronized void zzu() {
        t8g t8gVar = this.g;
        if (t8gVar != null) {
            t8gVar.zzu();
        }
    }
}
