package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;

public final class obh implements eeh {
    public final Context a;
    public final Intent b;

    public obh(Context context, Intent intent) {
        this.a = context;
        this.b = intent;
    }

    @Override
    public final int zza() {
        return 60;
    }

    @Override
    public final im5 zzb() {
        zze.zza("HsdpMigrationSignal.produce");
        if (!((Boolean) zzbd.zzc().b(cye.Rc)).booleanValue()) {
            return j8.h(new pbh(null));
        }
        boolean z = false;
        try {
            if (this.b.resolveActivity(this.a.getPackageManager()) != null) {
                zze.zza("HSDP intent is supported");
                z = true;
            }
        } catch (Exception e) {
            zzv.zzp().x(e, "HsdpMigrationSignal.isHsdpMigrationSupported");
        }
        return j8.h(new pbh(Boolean.valueOf(z)));
    }
}
