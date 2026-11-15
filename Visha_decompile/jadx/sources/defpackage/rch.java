package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;

public final class rch implements eeh {
    public final ApplicationInfo a;
    public final PackageInfo b;
    public final Context c;

    public rch(ApplicationInfo applicationInfo, PackageInfo packageInfo, Context context) {
        this.a = applicationInfo;
        this.b = packageInfo;
        this.c = context;
    }

    @Override
    public final int zza() {
        return 29;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007d  */
    @Override
    public final im5 zzb() {
        String strValueOf;
        String str;
        String str2;
        String installingPackageName;
        PackageManager.NameNotFoundException e;
        String initiatingPackageName;
        String str3 = this.a.packageName;
        PackageInfo packageInfo = this.b;
        Integer numValueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        String str4 = packageInfo == null ? null : packageInfo.versionName;
        try {
            Context context = this.c;
            pzh pzhVar = zzs.zza;
            strValueOf = String.valueOf(mpc.a(context).d(str3));
        } catch (PackageManager.NameNotFoundException unused) {
            strValueOf = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) zzbd.zzc().b(cye.Pc)).booleanValue()) {
                try {
                    InstallSourceInfo installSourceInfo = this.c.getPackageManager().getInstallSourceInfo(str3);
                    if (installSourceInfo != null) {
                        installingPackageName = installSourceInfo.getInstallingPackageName();
                        try {
                            if (TextUtils.isEmpty(installingPackageName)) {
                                zze.zza("No installing package name found");
                                installingPackageName = null;
                            }
                            initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                            try {
                                if (TextUtils.isEmpty(initiatingPackageName)) {
                                    zze.zza("No initiating package name found");
                                    str = installingPackageName;
                                    str2 = null;
                                } else {
                                    str2 = initiatingPackageName;
                                    str = installingPackageName;
                                }
                            } catch (PackageManager.NameNotFoundException e2) {
                                e = e2;
                                zzv.zzp().x(e, "PackageInfoSignalSource.getInstallSourceInfo");
                            }
                        } catch (PackageManager.NameNotFoundException e3) {
                            e = e3;
                            initiatingPackageName = null;
                        }
                    } else {
                        str = null;
                        str2 = null;
                    }
                } catch (PackageManager.NameNotFoundException e4) {
                    installingPackageName = null;
                    e = e4;
                    initiatingPackageName = null;
                }
            } else {
                str = null;
                str2 = null;
            }
        } else {
            str = null;
            str2 = null;
        }
        return j8.h(new sch(str3, numValueOf, str4, strValueOf, str, str2));
    }
}
