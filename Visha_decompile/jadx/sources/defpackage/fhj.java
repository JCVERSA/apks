package defpackage;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class fhj implements Callable {
    public final long b;

    public fhj(long j) {
        this.b = j;
    }

    @Override
    public final Object call() {
        if (AdOverlayInfoParcel.zzz.remove(Long.valueOf(this.b)) == null) {
            return null;
        }
        zzv.zzp().x(new Exception("Key was non-null in AdOverlayObjectsCleanupTask"), "AdOverlayObjectsCleanupTask");
        return null;
    }
}
