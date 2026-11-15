package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;

public final class meh implements deh {
    public final int a;
    public final int b;

    public meh(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        int i;
        Bundle bundle = ((kyf) obj).a;
        int i2 = this.a;
        if (i2 == -1 || (i = this.b) == -1) {
            return;
        }
        bundle.putInt("sessions_without_flags", i2);
        bundle.putInt("crashes_without_flags", i);
        zzbb zzbbVar = zzbb.f;
        if (zzbd.zzc().e()) {
            bundle.putBoolean("did_reset", true);
        }
    }
}
