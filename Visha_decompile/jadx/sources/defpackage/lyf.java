package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzffn;
import java.util.List;
import java.util.concurrent.Callable;

public final class lyf {
    public final lrh a;
    public final VersionInfoParcel b;
    public final ApplicationInfo c;
    public final String d;
    public final List e;
    public final PackageInfo f;
    public final zxi g;
    public final String h;
    public final geh i;
    public final zzg j;
    public final enh k;
    public final int l;
    public final w5g m;

    public lyf(lrh lrhVar, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, zxi zxiVar, zzg zzgVar, String str2, geh gehVar, enh enhVar, w5g w5gVar, int i) {
        this.a = lrhVar;
        this.b = versionInfoParcel;
        this.c = applicationInfo;
        this.d = str;
        this.e = list;
        this.f = packageInfo;
        this.g = zxiVar;
        this.h = str2;
        this.i = gehVar;
        this.j = zzgVar;
        this.k = enhVar;
        this.m = w5gVar;
        this.l = i;
    }

    public static zzbuy a(lyf lyfVar, im5 im5Var, Bundle bundle) {
        kyf kyfVar = (kyf) im5Var.get();
        Bundle bundle2 = kyfVar.a;
        String str = (String) ((im5) lyfVar.g.zzb()).get();
        boolean z = ((Boolean) zzbd.zzc().b(cye.X6)).booleanValue() && lyfVar.j.zzN();
        String str2 = lyfVar.h;
        PackageInfo packageInfo = lyfVar.f;
        List list = lyfVar.e;
        return new zzbuy(bundle2, lyfVar.b, lyfVar.c, lyfVar.d, list, packageInfo, str, str2, null, null, z, lyfVar.k.a(), bundle, kyfVar.b, lyfVar.l);
    }

    public final im5 b(Bundle bundle) {
        this.m.zza();
        return xqh.c(this.i.a(new kyf(new Bundle(), new Bundle()), bundle, this.l == 2), zzffn.SIGNALS, this.a).a();
    }

    public final im5 c() {
        final Bundle bundle = new Bundle();
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue()) {
            Bundle bundle2 = this.k.s;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final im5 im5VarB = b(bundle);
        return this.a.a(zzffn.REQUEST_PARCEL, im5VarB, (im5) this.g.zzb()).a(new Callable() {
            @Override
            public final Object call() {
                return lyf.a(this.b, im5VarB, bundle);
            }
        }).a();
    }
}
