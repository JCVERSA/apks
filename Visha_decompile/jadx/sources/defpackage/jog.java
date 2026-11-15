package defpackage;

import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.t4;

public final class jog implements v7i {
    public final t4 a;

    public jog(t4 t4Var) {
        this.a = t4Var;
    }

    @Override
    public final void zza(Throwable th) {
        synchronized (this) {
            t4 t4Var = this.a;
            t4Var.c = true;
            t4Var.v("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (zzv.zzC().elapsedRealtime() - t4Var.d));
            t4Var.e.d(new Exception());
        }
    }

    @Override
    public final void zzb(Object obj) {
        final String str = (String) obj;
        synchronized (this) {
            t4 t4Var = this.a;
            t4Var.c = true;
            t4Var.v("com.google.android.gms.ads.MobileAds", true, "", (int) (zzv.zzC().elapsedRealtime() - t4Var.d));
            t4Var.i.execute(new Runnable() {
                @Override
                public final void run() {
                    t4.o(this.zza.a, str);
                }
            });
        }
    }
}
