package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzebe;

public final class vxg implements ebg {
    public final VersionInfoParcel a;
    public final im5 b;
    public final hmh c;
    public final ejf d;
    public final enh e;
    public final q3f f;
    public final boolean g;
    public final zzebe h;
    public final smg i;

    public vxg(VersionInfoParcel versionInfoParcel, im5 im5Var, hmh hmhVar, ejf ejfVar, enh enhVar, boolean z, q3f q3fVar, zzebe zzebeVar, smg smgVar) {
        this.a = versionInfoParcel;
        this.b = im5Var;
        this.c = hmhVar;
        this.d = ejfVar;
        this.e = enhVar;
        this.g = z;
        this.f = q3fVar;
        this.h = zzebeVar;
        this.i = smgVar;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    @Override
    public final void a(boolean z, Context context, wzf wzfVar) {
        frf frfVar = (frf) j8.q(this.b);
        ejf ejfVar = this.d;
        ejfVar.zzaq(true);
        boolean z2 = this.g;
        boolean zE = z2 ? this.f.e(true) : true;
        boolean zD = z2 ? this.f.d() : false;
        float fA = z2 ? this.f.a() : 0.0f;
        hmh hmhVar = this.c;
        zzl zzlVar = new zzl(zE, true, zD, fA, -1, z, hmhVar.O, false);
        if (wzfVar != null) {
            wzfVar.zzf();
        }
        zzv.zzj();
        vag vagVarI = frfVar.i();
        int i = hmhVar.Q;
        if (i == -1) {
            zzx zzxVar = this.e.j;
            if (zzxVar == null) {
                int i2 = zze.zza;
                zzo.zze("Error setting app open orientation; no targeting orientation available.");
            } else {
                int i3 = zzxVar.zza;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                } else {
                    int i4 = zze.zza;
                    zzo.zze("Error setting app open orientation; no targeting orientation available.");
                }
            }
        }
        int i5 = i;
        VersionInfoParcel versionInfoParcel = this.a;
        String str = hmhVar.B;
        lmh lmhVar = hmhVar.s;
        zzn.zza(context, new AdOverlayInfoParcel(null, vagVarI, null, ejfVar, i5, versionInfoParcel, str, zzlVar, lmhVar.b, lmhVar.a, this.e.f, wzfVar, hmhVar.b() ? this.h : null, ejfVar.zzr()), true, this.i);
    }

    @Override
    public final hmh zza() {
        return this.c;
    }
}
