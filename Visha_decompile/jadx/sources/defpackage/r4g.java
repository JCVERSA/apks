package defpackage;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Set;

public final class r4g extends a6g implements z1f {
    public r4g(Set set) {
        super(set);
    }

    @Override
    public final synchronized void zzb(final String str, final String str2) {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((AppEventListener) obj).onAppEvent(str, str2);
            }
        });
    }
}
