package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzebe;

public final class azg implements ebg {
    public final Context a;
    public final VersionInfoParcel b;
    public final im5 c;
    public final hmh d;
    public final ejf e;
    public final enh f;
    public final q3f g;
    public final boolean h;
    public final zzebe i;
    public final smg j;

    public azg(Context context, VersionInfoParcel versionInfoParcel, im5 im5Var, hmh hmhVar, ejf ejfVar, enh enhVar, boolean z, q3f q3fVar, zzebe zzebeVar, smg smgVar) {
        this.a = context;
        this.b = versionInfoParcel;
        this.c = im5Var;
        this.d = hmhVar;
        this.e = ejfVar;
        this.f = enhVar;
        this.g = q3fVar;
        this.h = z;
        this.i = zzebeVar;
        this.j = smgVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) {
        t9g t9gVar = (t9g) j8.q(this.c);
        ejf ejfVar = this.e;
        ejfVar.zzaq(true);
        boolean z2 = this.h;
        boolean zE = z2 ? this.g.e(false) : false;
        zzv.zzq();
        boolean zZzJ = zzs.zzJ(this.a);
        boolean zD = z2 ? this.g.d() : false;
        float fA = z2 ? this.g.a() : 0.0f;
        hmh hmhVar = this.d;
        zzl zzlVar = new zzl(zE, zZzJ, zD, fA, -1, z, hmhVar.O, false);
        if (wzfVar != null) {
            wzfVar.zzf();
        }
        zzv.zzj();
        vag vagVarJ = t9gVar.j();
        int i = hmhVar.Q;
        VersionInfoParcel versionInfoParcel = this.b;
        String str = hmhVar.B;
        lmh lmhVar = hmhVar.s;
        zzn.zza(context, new AdOverlayInfoParcel(null, vagVarJ, null, ejfVar, i, versionInfoParcel, str, zzlVar, lmhVar.b, lmhVar.a, this.f.f, wzfVar, hmhVar.b() ? this.i : null, ejfVar.zzr()), true, this.j);
    }

    @Override
    public final hmh zza() {
        return this.d;
    }
}
