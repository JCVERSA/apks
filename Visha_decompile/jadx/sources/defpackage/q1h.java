package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzebe;

public final class q1h implements ebg {
    public final Context a;
    public final ujg b;
    public final enh c;
    public final VersionInfoParcel d;
    public final hmh e;
    public final im5 f;
    public final ejf g;
    public final q3f h;
    public final boolean i;
    public final zzebe j;
    public final lmg k;
    public final smg l;

    public q1h(Context context, ujg ujgVar, enh enhVar, VersionInfoParcel versionInfoParcel, hmh hmhVar, im5 im5Var, ejf ejfVar, q3f q3fVar, boolean z, zzebe zzebeVar, lmg lmgVar, smg smgVar) {
        this.a = context;
        this.b = ujgVar;
        this.c = enhVar;
        this.d = versionInfoParcel;
        this.e = hmhVar;
        this.f = im5Var;
        this.g = ejfVar;
        this.h = q3fVar;
        this.i = z;
        this.j = zzebeVar;
        this.k = lmgVar;
        this.l = smgVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) {
        xig xigVar = (xig) j8.q(this.f);
        try {
            hmh hmhVar = this.e;
            final ejf ejfVarA = this.g;
            if (ejfVarA.zzaG()) {
                if (((Boolean) zzbd.zzc().b(cye.b1)).booleanValue()) {
                    ejfVarA = this.b.a(this.c.e, null, null);
                    m4f.b(ejfVarA, xigVar.i());
                    final xjg xjgVar = new xjg();
                    xjgVar.a(this.a, ejfVarA.zzF());
                    xigVar.l().i(ejfVarA, true, this.i ? this.h : null, this.k.a());
                    ejfVarA.zzN().v(new gkf() {
                        @Override
                        public final void zza(boolean z2, int i, String str, String str2) {
                            xjgVar.b();
                            ejf ejfVar = ejfVarA;
                            ejfVar.zzab();
                            ejfVar.zzN().zzs();
                        }
                    });
                    ejfVarA.zzN().r(new hkf() {
                        @Override
                        public final void zza() {
                            ejfVarA.zzaa();
                        }
                    });
                    lmh lmhVar = hmhVar.s;
                    ejfVarA.zzae(lmhVar.b, lmhVar.a, null);
                }
            }
            ejf ejfVar = ejfVarA;
            ejfVar.zzaq(true);
            boolean z2 = this.i;
            boolean zE = z2 ? this.h.e(false) : false;
            zzv.zzq();
            boolean zZzJ = zzs.zzJ(this.a);
            boolean zD = z2 ? this.h.d() : false;
            float fA = z2 ? this.h.a() : 0.0f;
            hmh hmhVar2 = this.e;
            zzl zzlVar = new zzl(zE, zZzJ, zD, fA, -1, z, hmhVar2.O, hmhVar2.P);
            if (wzfVar != null) {
                wzfVar.zzf();
            }
            zzv.zzj();
            vag vagVarJ = xigVar.j();
            int i = hmhVar2.Q;
            VersionInfoParcel versionInfoParcel = this.d;
            String str = hmhVar2.B;
            lmh lmhVar2 = hmhVar2.s;
            zzn.zza(context, new AdOverlayInfoParcel(null, vagVarJ, null, ejfVar, i, versionInfoParcel, str, zzlVar, lmhVar2.b, lmhVar2.a, this.c.f, wzfVar, hmhVar2.b() ? this.j : null, ejfVar.zzr()), true, this.l);
        } catch (zzcex e) {
            int i2 = zze.zza;
            zzo.zzh("", e);
        }
    }

    @Override
    public final hmh zza() {
        return this.e;
    }
}
