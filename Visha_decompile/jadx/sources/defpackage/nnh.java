package defpackage;

import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzv;

public final class nnh implements v7i {
    public final ejf a;
    public final wpf b;
    public final wth c;
    public final dwg d;

    public nnh(ejf ejfVar, wpf wpfVar, wth wthVar, dwg dwgVar) {
        this.a = ejfVar;
        this.b = wpfVar;
        this.c = wthVar;
        this.d = dwgVar;
    }

    @Override
    public final void zza(Throwable th) {
    }

    @Override
    public final void zzb(Object obj) {
        wpf wpfVar;
        String str = (String) obj;
        ejf ejfVar = this.a;
        hmh hmhVarZzD = ejfVar.zzD();
        if (hmhVarZzD != null && !hmhVarZzD.i0) {
            zzv zzvVar = hmhVarZzD.x0;
            if (((Boolean) zzbd.zzc().b(cye.ga)).booleanValue() && (wpfVar = this.b) != null && wpf.j(str)) {
                wpfVar.i(str, this.c, zzbb.zze(), zzvVar);
                return;
            } else {
                this.c.d(str, zzvVar, null, null);
                return;
            }
        }
        kmh kmhVarZzR = ejfVar.zzR();
        if (kmhVarZzR == null) {
            com.google.android.gms.ads.internal.zzv.zzp().x(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingClickGmsgHandler");
            return;
        }
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
        boolean zA = com.google.android.gms.ads.internal.zzv.zzp().a(ejfVar.getContext());
        boolean z = false;
        boolean z2 = ((Boolean) zzbd.zzc().b(cye.k6)).booleanValue() && hmhVarZzD != null && hmhVarZzD.S;
        if (hmhVarZzD != null && hmhVarZzD.d0 != null) {
            z = true;
        }
        this.d.e(new fwg(jCurrentTimeMillis, kmhVarZzR.b, str, (zA || z2 || z) ? 2 : 1));
    }
}
