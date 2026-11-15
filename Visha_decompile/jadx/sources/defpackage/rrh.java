package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.zzfgn;

public final class rrh implements v7g, zzf, z7g {
    public final zzfgn b;
    public final wrh c;

    public rrh(Context context, zzfgn zzfgnVar) {
        this.b = zzfgnVar;
        this.c = vrh.a(context, 13);
    }

    @Override
    public final void h(zze zzeVar) {
        if (((Boolean) sze.d.e()).booleanValue()) {
            zzfgn zzfgnVar = this.b;
            wrh wrhVar = this.c;
            wrhVar.zzc(zzeVar.zza().toString());
            wrhVar.zzg(false);
            zzfgnVar.zza(wrhVar);
        }
    }

    @Override
    public final void zza() {
    }

    @Override
    public final void zzb() {
        if (((Boolean) sze.d.e()).booleanValue()) {
            zzfgn zzfgnVar = this.b;
            wrh wrhVar = this.c;
            wrhVar.zzg(true);
            zzfgnVar.zza(wrhVar);
        }
    }

    @Override
    public final void zzu() {
    }

    @Override
    public final void zzv() {
        if (((Boolean) sze.d.e()).booleanValue()) {
            this.c.zzi();
        }
    }
}
