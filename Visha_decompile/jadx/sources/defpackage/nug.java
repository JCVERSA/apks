package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.internal.ads.z4;

public final class nug implements b1g, nzf {
    public static final Object d = new Object();
    public static int e;
    public final zzg b;
    public final z4 c;

    public nug(z4 z4Var, zzg zzgVar) {
        this.c = z4Var;
        this.b = zzgVar;
    }

    private final void a(boolean z) {
        int i;
        int iIntValue;
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue() && !this.b.zzN()) {
            Object obj = d;
            synchronized (obj) {
                i = e;
                iIntValue = ((Integer) zzbd.zzc().b(cye.j6)).intValue();
            }
            if (i < iIntValue) {
                this.c.e(z);
                synchronized (obj) {
                    e++;
                }
            }
        }
    }

    @Override
    public final void A(zze zzeVar) {
        a(false);
    }

    @Override
    public final void zzt() {
        a(true);
    }
}
