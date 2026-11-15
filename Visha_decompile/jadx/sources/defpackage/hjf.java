package defpackage;

import com.google.android.gms.ads.internal.overlay.zzr;

public final class hjf implements zzr {
    public final ejf b;
    public final zzr c;

    public hjf(ejf ejfVar, zzr zzrVar) {
        this.b = ejfVar;
        this.c = zzrVar;
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
        zzr zzrVar = this.c;
        if (zzrVar != null) {
            zzrVar.zzdo();
        }
    }

    @Override
    public final void zzdp() {
        zzr zzrVar = this.c;
        if (zzrVar != null) {
            zzrVar.zzdp();
        }
        this.b.zzaa();
    }

    @Override
    public final void zzdr() {
        zzr zzrVar = this.c;
        if (zzrVar != null) {
            zzrVar.zzdr();
        }
    }

    @Override
    public final void zzds(int i) {
        zzr zzrVar = this.c;
        if (zzrVar != null) {
            zzrVar.zzds(i);
        }
        this.b.zzY();
    }
}
