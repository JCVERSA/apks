package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a2g extends a6g implements d0g, p1g {
    public final hmh c;
    public final AtomicBoolean d;
    public final vmh e;

    public a2g(Set set, hmh hmhVar, vmh vmhVar) {
        super(set);
        this.d = new AtomicBoolean();
        this.c = hmhVar;
        this.e = vmhVar;
    }

    private final void zzb() {
        final zzt zztVar;
        if (((Boolean) zzbd.zzc().b(cye.S7)).booleanValue() && this.d.compareAndSet(false, true) && (zztVar = this.c.e0) != null && zztVar.zza == 3) {
            E(new z5g() {
                @Override
                public final void zza(Object obj) {
                    ((c2g) obj).b(zztVar);
                }
            });
        }
    }

    public final void F(final zzt zztVar) {
        if (zzaa.zzf(this.e) && this.c.B0) {
            E(new z5g() {
                @Override
                public final void zza(Object obj) {
                    ((c2g) obj).b(zztVar);
                }
            });
        }
    }

    @Override
    public final void zzg() {
        if (this.c.b == 1) {
            zzb();
        }
    }

    @Override
    public final void zzs() {
        int i = this.c.b;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            zzb();
        }
    }
}
