package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzv;
import java.lang.ref.WeakReference;

public final class okf {
    public final VersionInfoParcel a;
    public final Context b;
    public final long c;
    public final WeakReference d;

    public okf(mkf mkfVar, nkf nkfVar) {
        this.a = mkfVar.a;
        this.b = mkfVar.b;
        this.d = mkfVar.d;
        this.c = mkfVar.c;
    }

    public final long a() {
        return this.c;
    }

    public final Context b() {
        return this.b;
    }

    public final zzk c() {
        return new zzk(this.b, this.a);
    }

    public final x0f d() {
        return new x0f(this.b);
    }

    public final VersionInfoParcel e() {
        return this.a;
    }

    public final String f() {
        return zzv.zzq().zzc(this.b, this.a.afmaVersion);
    }

    public final WeakReference g() {
        return this.d;
    }
}
