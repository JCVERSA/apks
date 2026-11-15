package defpackage;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.c4;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzcfd;
import com.google.android.gms.internal.ads.zzebe;

public final class mjf {
    public static final ejf a(final Context context, final kkf kkfVar, final String str, final boolean z, final boolean z2, final fre freVar, final bze bzeVar, final VersionInfoParcel versionInfoParcel, qye qyeVar, final zzn zznVar, final zza zzaVar, final o0 o0Var, final hmh hmhVar, final kmh kmhVar, final zzebe zzebeVar, final inh inhVar, final smg smgVar) throws zzcex {
        cye.a(context);
        try {
            final qye qyeVar2 = null;
            k3i k3iVar = new k3i(context, kkfVar, str, z, z2, freVar, bzeVar, versionInfoParcel, qyeVar2, zznVar, zzaVar, o0Var, hmhVar, kmhVar, inhVar, smgVar, zzebeVar) {
                public final Context b;
                public final kkf c;
                public final String d;
                public final boolean e;
                public final boolean f;
                public final fre g;
                public final bze h;
                public final VersionInfoParcel i;
                public final zzn j;
                public final zza k;
                public final o0 l;
                public final hmh m;
                public final kmh n;
                public final inh o;
                public final smg p;
                public final zzebe q;

                {
                    this.j = zznVar;
                    this.k = zzaVar;
                    this.l = o0Var;
                    this.m = hmhVar;
                    this.n = kmhVar;
                    this.o = inhVar;
                    this.p = smgVar;
                    this.q = zzebeVar;
                }

                @Override
                public final Object zza() {
                    kkf kkfVar2 = this.c;
                    String str2 = this.d;
                    boolean z3 = this.e;
                    o0 o0Var2 = this.l;
                    boolean z4 = this.f;
                    fre freVar2 = this.g;
                    hmh hmhVar2 = this.m;
                    bze bzeVar2 = this.h;
                    zzn zznVar2 = this.j;
                    kmh kmhVar2 = this.n;
                    Context context2 = this.b;
                    VersionInfoParcel versionInfoParcel2 = this.i;
                    zza zzaVar2 = this.k;
                    inh inhVar2 = this.o;
                    smg smgVar2 = this.p;
                    zzebe zzebeVar2 = this.q;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = c4.d0;
                        zzcfd zzcfdVar = new zzcfd(new c4(new jkf(context2), kkfVar2, str2, z3, z4, freVar2, bzeVar2, versionInfoParcel2, null, zznVar2, zzaVar2, o0Var2, hmhVar2, kmhVar2, inhVar2), smgVar2);
                        zzcfdVar.setWebViewClient(zzv.zzr().zzc(zzcfdVar, o0Var2, z4, zzebeVar2));
                        zzcfdVar.setWebChromeClient(new djf(zzcfdVar));
                        return zzcfdVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return (ejf) k3iVar.zza();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            throw new zzcex("Webview initialization failed.", th);
        }
    }
}
