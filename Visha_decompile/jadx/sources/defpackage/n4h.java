package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzt;
import java.util.concurrent.atomic.AtomicReference;

public final class n4h implements c2g {
    public final AtomicReference b = new AtomicReference();

    public final void a(zzdq zzdqVar) {
        this.b.set(zzdqVar);
    }

    @Override
    public final void b(final zzt zztVar) {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzdq) obj).zze(zztVar);
            }
        });
    }
}
