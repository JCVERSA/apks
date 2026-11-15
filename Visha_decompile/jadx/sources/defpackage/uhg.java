package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzr;

public class uhg implements zza, r1f, zzr, z1f, zzac {
    public zza b;
    public r1f c;
    public zzr d;
    public z1f e;
    public zzac f;

    public final synchronized void a(zza zzaVar, r1f r1fVar, zzr zzrVar, z1f z1fVar, zzac zzacVar) {
        this.b = zzaVar;
        this.c = r1fVar;
        this.d = zzrVar;
        this.e = z1fVar;
        this.f = zzacVar;
    }

    @Override
    public final synchronized void h(String str, Bundle bundle) {
        r1f r1fVar = this.c;
        if (r1fVar != null) {
            r1fVar.h(str, bundle);
        }
    }

    @Override
    public final synchronized void onAdClicked() {
        zza zzaVar = this.b;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override
    public final synchronized void zzb(String str, String str2) {
        z1f z1fVar = this.e;
        if (z1fVar != null) {
            z1fVar.zzb(str, str2);
        }
    }

    @Override
    public final synchronized void zzdE() {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzdE();
        }
    }

    @Override
    public final synchronized void zzdi() {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzdi();
        }
    }

    @Override
    public final synchronized void zzdo() {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzdo();
        }
    }

    @Override
    public final synchronized void zzdp() {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzdp();
        }
    }

    @Override
    public final synchronized void zzdr() {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzdr();
        }
    }

    @Override
    public final synchronized void zzds(int i) {
        zzr zzrVar = this.d;
        if (zzrVar != null) {
            zzrVar.zzds(i);
        }
    }

    @Override
    public final synchronized void zzg() {
        zzac zzacVar = this.f;
        if (zzacVar != null) {
            zzacVar.zzg();
        }
    }
}
