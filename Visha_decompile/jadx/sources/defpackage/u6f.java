package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzfgq;

public final class u6f {
    public final Object a = new Object();
    public final Object b = new Object();
    public j7f c;
    public j7f d;

    public static final Context c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final j7f a(Context context, VersionInfoParcel versionInfoParcel, zzfgq zzfgqVar) {
        j7f j7fVar;
        String str;
        synchronized (this.a) {
            try {
                if (this.c == null) {
                    if (((Boolean) f0f.f.e()).booleanValue()) {
                        str = (String) zzbd.zzc().b(cye.a);
                    } else {
                        str = (String) zzbd.zzc().b(cye.b);
                    }
                    this.c = new j7f(c(context), versionInfoParcel, str, zzfgqVar);
                }
                j7fVar = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j7fVar;
    }

    public final j7f b(Context context, VersionInfoParcel versionInfoParcel, zzfgq zzfgqVar) {
        j7f j7fVar;
        synchronized (this.b) {
            try {
                if (this.d == null) {
                    this.d = new j7f(c(context), versionInfoParcel, (String) j0f.a.e(), zzfgqVar);
                }
                j7fVar = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j7fVar;
    }
}
