package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.internal.ads.zzebe;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class eig implements Callable {
    public final zza b;
    public final Context c;
    public final smg d;
    public final dwg e;
    public final Executor f;
    public final fre g;
    public final VersionInfoParcel h;
    public final wth i;
    public final zzebe j;
    public final inh k;

    public eig(Context context, Executor executor, fre freVar, VersionInfoParcel versionInfoParcel, zza zzaVar, mjf mjfVar, dwg dwgVar, wth wthVar, smg smgVar, zzebe zzebeVar, inh inhVar) {
        this.c = context;
        this.f = executor;
        this.g = freVar;
        this.h = versionInfoParcel;
        this.b = zzaVar;
        this.e = dwgVar;
        this.i = wthVar;
        this.d = smgVar;
        this.j = zzebeVar;
        this.k = inhVar;
    }

    @Override
    public final Object call() {
        hig higVar = new hig(this);
        higVar.k();
        return higVar;
    }
}
