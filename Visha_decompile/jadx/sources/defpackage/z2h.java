package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

public final class z2h implements zzg {
    public zzg a;

    public final synchronized void a(zzg zzgVar) {
        this.a = zzgVar;
    }

    @Override
    public final synchronized void zza(View view) {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zza(view);
        }
    }

    @Override
    public final synchronized void zzb() {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zzb();
        }
    }

    @Override
    public final synchronized void zzc() {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zzc();
        }
    }
}
