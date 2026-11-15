package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.internal.ads.i4;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzebe;

public final class ujg {
    public final Context a;
    public final fre b;
    public final bze c;
    public final VersionInfoParcel d;
    public final zza e;
    public final o0 f;
    public final i4 g;
    public final zzebe h;
    public final inh i;
    public final smg j;

    public ujg(mjf mjfVar, Context context, fre freVar, bze bzeVar, VersionInfoParcel versionInfoParcel, zza zzaVar, o0 o0Var, i4 i4Var, zzebe zzebeVar, inh inhVar, smg smgVar) {
        this.a = context;
        this.b = freVar;
        this.c = bzeVar;
        this.d = versionInfoParcel;
        this.e = zzaVar;
        this.f = o0Var;
        this.g = i4Var;
        this.h = zzebeVar;
        this.i = inhVar;
        this.j = smgVar;
    }

    public final ejf a(zzr zzrVar, hmh hmhVar, kmh kmhVar) {
        kkf kkfVarC = kkf.c(zzrVar);
        String str = zzrVar.zza;
        gjg gjgVar = new gjg(this);
        zzebe zzebeVar = this.h;
        inh inhVar = this.i;
        smg smgVar = this.j;
        zza zzaVar = this.e;
        o0 o0Var = this.f;
        return mjf.a(this.a, kkfVarC, str, false, false, this.b, this.c, this.d, null, gjgVar, zzaVar, o0Var, hmhVar, kmhVar, zzebeVar, inhVar, smgVar);
    }
}
