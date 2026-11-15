package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;

public final class sdh implements eeh {
    public final g8i a;
    public final Context b;
    public final VersionInfoParcel c;
    public final String d;

    public sdh(g8i g8iVar, Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.a = g8iVar;
        this.b = context;
        this.c = versionInfoParcel;
        this.d = str;
    }

    public static tdh a(sdh sdhVar) {
        Context context = sdhVar.b;
        boolean zG = mpc.a(context).g();
        zzv.zzq();
        boolean zZzF = zzs.zzF(context);
        String str = sdhVar.c.afmaVersion;
        zzv.zzq();
        boolean zZzG = zzs.zzG();
        zzv.zzq();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return new tdh(zG, zZzF, str, zZzG, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, DynamiteModule.c(context, ModuleDescriptor.MODULE_ID), DynamiteModule.a(context, ModuleDescriptor.MODULE_ID), sdhVar.d);
    }

    @Override
    public final int zza() {
        return 35;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return sdh.a(this.b);
            }
        });
    }
}
