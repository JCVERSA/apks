package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbuy;

public final class j5g implements p2g {
    public int b = ((Integer) zzbd.zzc().b(cye.t1)).intValue();
    public int c = ((Integer) zzbd.zzc().b(cye.Tc)).intValue();

    public final synchronized int a() {
        return this.b;
    }

    public final synchronized int b() {
        return this.c;
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
    }

    @Override
    public final synchronized void w(vmh vmhVar) {
        if (((Boolean) zzbd.zzc().b(cye.u1)).booleanValue()) {
            try {
                kmh kmhVar = vmhVar.b.b;
                this.b = kmhVar.c;
                this.c = kmhVar.d;
            } catch (NullPointerException unused) {
            }
        }
    }
}
