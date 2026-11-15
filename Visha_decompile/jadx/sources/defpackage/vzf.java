package defpackage;

import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.zzdfl;
import java.util.Set;

public final class vzf extends a6g implements ozf {
    public vzf(Set set) {
        super(set);
    }

    @Override
    public final void a(final zze zzeVar) {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((zzf) obj).h(zzeVar);
            }
        });
    }

    @Override
    public final void y(final zzdfl zzdflVar) {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                zzf zzfVar = (zzf) obj;
                String message = zzdflVar.getMessage();
                if (message == null) {
                    message = "Internal show error.";
                }
                zzfVar.h(goh.d(12, message, null));
            }
        });
    }

    @Override
    public final void zzb() {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((zzf) obj).h(goh.d(11, null, null));
            }
        });
    }
}
