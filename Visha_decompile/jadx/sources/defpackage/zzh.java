package defpackage;

import android.content.Context;

public final class zzh {
    public static zzh b;
    public final vzh a;

    public zzh(Context context) {
        this.a = vzh.b(context);
        uzh.a(context);
    }

    public static final zzh a(Context context) {
        zzh zzhVar;
        synchronized (zzh.class) {
            try {
                if (b == null) {
                    b = new zzh(context);
                }
                zzhVar = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzhVar;
    }

    public final void b(tzh tzhVar) {
        synchronized (zzh.class) {
            vzh vzhVar = this.a;
            vzhVar.e("vendor_scoped_gpid_v2_id");
            vzhVar.e("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
