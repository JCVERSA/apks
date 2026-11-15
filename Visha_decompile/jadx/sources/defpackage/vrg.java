package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzba;

public final class vrg implements v7i {
    public final Context a;

    public vrg(Context context) {
        this.a = context;
    }

    @Override
    public final void zza(Throwable th) {
        if (((Boolean) rze.h.e()).booleanValue() && (th instanceof zzba)) {
            jxe.e(this.a);
        }
    }

    @Override
    public final void zzb(Object obj) {
        if (((Boolean) rze.j.e()).booleanValue()) {
            jxe.e(this.a);
        }
    }
}
