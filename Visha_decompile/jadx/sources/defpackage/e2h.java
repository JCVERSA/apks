package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.zzecj;

public final class e2h implements w0g {
    public boolean a = false;
    public final nxg b;
    public final eff c;

    public e2h(f2h f2hVar, nxg nxgVar, eff effVar) {
        this.b = nxgVar;
        this.c = effVar;
    }

    @Override
    public final synchronized void a(int i, String str) {
        try {
            if (this.a) {
                return;
            }
            this.a = true;
            if (str == null) {
                str = f2h.e(this.b.a, i);
            }
            b(new zze(i, str, "undefined", null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(zze zzeVar) {
        int i = 1;
        if (true == ((Boolean) zzbd.zzc().b(cye.B5)).booleanValue()) {
            i = 3;
        }
        this.c.d(new zzecj(i, zzeVar));
    }

    @Override
    public final synchronized void zza(int i) {
        if (this.a) {
            return;
        }
        this.a = true;
        b(new zze(i, f2h.e(this.b.a, i), "undefined", null, null));
    }

    @Override
    public final synchronized void zzb(zze zzeVar) {
        if (this.a) {
            return;
        }
        this.a = true;
        b(zzeVar);
    }

    @Override
    public final synchronized void zzd() {
        this.c.c(null);
    }
}
