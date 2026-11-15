package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.t4;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzfgq;

public final class oxf implements p2g, f9g {
    public final Context b;
    public final enh c;
    public final VersionInfoParcel d;
    public final zzg e;
    public final t4 f;
    public final zzfgq g;
    public final zog h;

    public oxf(Context context, enh enhVar, VersionInfoParcel versionInfoParcel, zzg zzgVar, t4 t4Var, zzfgq zzfgqVar, zog zogVar) {
        this.b = context;
        this.c = enhVar;
        this.d = versionInfoParcel;
        this.e = zzgVar;
        this.f = t4Var;
        this.g = zzfgqVar;
        this.h = zogVar;
    }

    private final void a() {
        if (((Boolean) zzbd.zzc().b(cye.i4)).booleanValue()) {
            zzg zzgVar = this.e;
            Context context = this.b;
            VersionInfoParcel versionInfoParcel = this.d;
            enh enhVar = this.c;
            zzfgq zzfgqVar = this.g;
            zog zogVar = this.h;
            zzv.zza().zze(context, versionInfoParcel, enhVar.f, zzgVar.zzg(), zzfgqVar, zogVar.r());
        }
        this.f.r();
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        a();
    }

    @Override
    public final void w(vmh vmhVar) {
    }

    @Override
    public final void zze(zzbk zzbkVar) {
        if (((Boolean) zzbd.zzc().b(cye.j4)).booleanValue()) {
            a();
        }
    }

    @Override
    public final void zzf(String str) {
    }
}
