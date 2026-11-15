package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;

public final class gdf {
    public final zzg a;

    public gdf(fy0 fy0Var, zzg zzgVar, rdf rdfVar) {
        this.a = zzgVar;
    }

    public final void a(int i, long j) {
        if (((Boolean) zzbd.zzc().b(cye.H0)).booleanValue()) {
            return;
        }
        zzg zzgVar = this.a;
        if (j - zzgVar.zzf() < 0) {
            zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.I0)).booleanValue()) {
            zzgVar.zzH(i);
            zzgVar.zzI(j);
        } else {
            zzgVar.zzH(-1);
            zzgVar.zzI(j);
        }
    }
}
