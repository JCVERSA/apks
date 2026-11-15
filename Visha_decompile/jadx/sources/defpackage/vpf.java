package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzv;
import defpackage.cye;
import defpackage.uaf;
import defpackage.vpf;
import defpackage.waf;
import defpackage.wpf;

public final class vpf implements v7i {
    public final wth a;
    public final String b;
    public final zzv c;
    public final wpf d;

    public vpf(wpf wpfVar, wth wthVar, String str, zzv zzvVar) {
        this.a = wthVar;
        this.b = str;
        this.c = zzvVar;
        this.d = wpfVar;
    }

    @Override
    public final void zza(final Throwable th) {
        g8i g8iVar = this.d.e;
        final wth wthVar = this.a;
        final String str = this.b;
        final zzv zzvVar = this.c;
        g8iVar.i(new Runnable() {
            @Override
            public final void run() {
                boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.ua)).booleanValue();
                vpf vpfVar = this.zza;
                Throwable th2 = th;
                if (zBooleanValue) {
                    wpf wpfVar = vpfVar.d;
                    waf wafVarE = uaf.e(wpfVar.a);
                    wpfVar.i = wafVarE;
                    wafVarE.b(th2, "AttributionReporting.registerSourceAndPingClickUrl");
                } else {
                    wpf wpfVar2 = vpfVar.d;
                    waf wafVarC = uaf.c(wpfVar2.a);
                    wpfVar2.h = wafVarC;
                    wafVarC.b(th2, "AttributionReportingSampled.registerSourceAndPingClickUrl");
                }
                zzv zzvVar2 = zzvVar;
                wthVar.d(str, zzvVar2, null, null);
            }
        });
    }

    @Override
    public final void zzb(Object obj) {
        final wth wthVar = this.a;
        final String str = (String) obj;
        g8i g8iVar = this.d.e;
        final zzv zzvVar = this.c;
        g8iVar.i(new Runnable() {
            @Override
            public final void run() {
                wthVar.d(str, zzvVar, null, null);
            }
        });
    }
}
