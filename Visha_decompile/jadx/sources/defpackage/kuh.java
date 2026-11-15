package defpackage;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzfp;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.a6;
import com.google.android.gms.internal.ads.x5;
import com.google.android.gms.internal.ads.y5;
import com.google.android.gms.internal.ads.z5;
import com.google.android.gms.internal.ads.zzboy;
import java.util.concurrent.ScheduledExecutorService;

public final class kuh {
    public final Context a;
    public final VersionInfoParcel b;
    public final ScheduledExecutorService c;
    public final ClientApi d = new ClientApi();
    public zzboy e;
    public final fy0 f;

    public kuh(Context context, VersionInfoParcel versionInfoParcel, ScheduledExecutorService scheduledExecutorService, fy0 fy0Var) {
        this.a = context;
        this.b = versionInfoParcel;
        this.c = scheduledExecutorService;
        this.f = fy0Var;
    }

    public static zth c() {
        return new zth(((Long) zzbd.zzc().b(cye.z)).longValue(), 2.0d, ((Long) zzbd.zzc().b(cye.A)).longValue(), 0.2d);
    }

    public final z5 a(zzfp zzfpVar, zzce zzceVar) {
        AdFormat adFormat = AdFormat.getAdFormat(zzfpVar.zzb);
        if (adFormat == null) {
            return null;
        }
        int iOrdinal = adFormat.ordinal();
        if (iOrdinal == 1) {
            return new y5(this.d, this.a, this.b.clientJarVersion, this.e, zzfpVar, zzceVar, this.c, c(), this.f);
        }
        if (iOrdinal == 2) {
            return new a6(this.d, this.a, this.b.clientJarVersion, this.e, zzfpVar, zzceVar, this.c, c(), this.f);
        }
        if (iOrdinal != 5) {
            return null;
        }
        return new x5(this.d, this.a, this.b.clientJarVersion, this.e, zzfpVar, zzceVar, this.c, c(), this.f);
    }

    public final void b(zzboy zzboyVar) {
        this.e = zzboyVar;
    }
}
