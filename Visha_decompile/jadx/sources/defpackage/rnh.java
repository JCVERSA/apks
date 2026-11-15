package defpackage;

import com.google.android.gms.ads.internal.zzv;

public final class rnh implements v7i {
    public final snh a;
    public final int b;

    public rnh(snh snhVar, int i) {
        this.b = i;
        this.a = snhVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzv.zzp().x(th, "BufferingUrlPinger.attributionReportingManager");
    }

    @Override
    public final void zzb(Object obj) {
        this.a.b((String) obj, this.b, null);
    }
}
