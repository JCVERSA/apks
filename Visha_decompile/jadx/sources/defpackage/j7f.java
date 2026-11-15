package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbd;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.zzfgq;

public final class j7f {
    public static final zzbd b = new b7f();
    public static final zzbd c = new c7f();
    public final t3 a;

    public j7f(Context context, VersionInfoParcel versionInfoParcel, String str, zzfgq zzfgqVar) {
        this.a = new t3(context, versionInfoParcel, str, b, c, zzfgqVar);
    }

    public final t6f a(String str, w6f w6fVar, v6f v6fVar) {
        return new n7f(this.a, str, w6fVar, v6fVar);
    }

    public final s7f b() {
        return new s7f(this.a);
    }
}
