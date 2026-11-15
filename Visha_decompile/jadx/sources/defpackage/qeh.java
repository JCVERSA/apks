package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

public final class qeh implements eeh {
    public final g8i a;
    public final Context b;

    public qeh(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:39:0x0138  */
    /* JADX WARN: Code duplicated, block: B:51:0x0173  */
    /* JADX WARN: Code duplicated, block: B:52:0x0175  */
    /* JADX WARN: Code duplicated, block: B:55:0x0179  */
    /* JADX WARN: Code duplicated, block: B:8:0x005d  */
    public static oeh a(qeh qehVar) {
        ActivityInfo activityInfo;
        String str;
        String str2;
        boolean zEquals;
        boolean z;
        String str3;
        String string;
        boolean z2;
        Context context = qehVar.b;
        PackageManager packageManager = context.getPackageManager();
        Locale locale = Locale.getDefault();
        ResolveInfo resolveInfoB = b(packageManager, "geo:0,0?q=donuts");
        ResolveInfo resolveInfoB2 = b(packageManager, "http://www.google.com");
        String country = locale.getCountry();
        zzv.zzq();
        zzbb.zzb();
        boolean zZzs = zzf.zzs();
        boolean zC = ia2.c(context);
        boolean zD = ia2.d(context);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        LocaleList localeList = LocaleList.getDefault();
        for (int i = 0; i < localeList.size(); i++) {
            arrayList.add(localeList.get(i).getLanguage());
        }
        ResolveInfo resolveInfoB3 = b(packageManager, "market://details?id=com.google.android.gms.ads");
        if (resolveInfoB3 == null || (activityInfo = resolveInfoB3.activityInfo) == null) {
            str = null;
        } else {
            try {
                PackageInfo packageInfoF = mpc.a(context).f(activityInfo.packageName, 0);
                if (packageInfoF != null) {
                    str = packageInfoF.versionCode + Consts.DOT + activityInfo.packageName;
                } else {
                    str = null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        try {
            PackageInfo packageInfoF2 = mpc.a(qehVar.b).f("com.android.vending", 128);
            str2 = packageInfoF2 != null ? packageInfoF2.versionCode + Consts.DOT + packageInfoF2.packageName : null;
        } catch (Exception unused2) {
        }
        Context context2 = qehVar.b;
        String str4 = Build.FINGERPRINT;
        if (packageManager == null) {
            zEquals = false;
            break;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities == null || resolveInfoResolveActivity == null) {
            zEquals = false;
            break;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= listQueryIntentActivities.size()) {
                zEquals = false;
                break;
            }
            List<ResolveInfo> list = listQueryIntentActivities;
            if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i2).activityInfo.name)) {
                zEquals = resolveInfoResolveActivity.activityInfo.packageName.equals(wyi.a(context2));
                break;
            }
            i2++;
            listQueryIntentActivities = list;
        }
        zzv.zzq();
        long availableBytes = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
        if (((Boolean) zzbd.zzc().b(cye.wb)).booleanValue()) {
            zzv.zzq();
            if (zzs.zzC(context2)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (((Boolean) zzbd.zzc().b(cye.Ab)).booleanValue()) {
            try {
                Bundle bundle = mpc.a(context2).c(context2.getPackageName(), 128).metaData;
                if (bundle == null || !bundle.containsKey("com.google.unity.ads.UNITY_VERSION")) {
                    str3 = null;
                } else {
                    string = bundle.getString("com.google.unity.ads.UNITY_VERSION");
                }
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (resolveInfoB2 != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            return new oeh(resolveInfoB != null, z2, country, zZzs, zC, zD, language, arrayList, str, str2, str4, zEquals, Build.MODEL, availableBytes, z, str3, Build.VERSION.SDK_INT);
        }
        string = "";
        str3 = string;
        if (resolveInfoB2 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        return new oeh(resolveInfoB != null, z2, country, zZzs, zC, zD, language, arrayList, str, str2, str4, zEquals, Build.MODEL, availableBytes, z, str3, Build.VERSION.SDK_INT);
    }

    public static ResolveInfo b(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    @Override
    public final int zza() {
        return 38;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return qeh.a(this.b);
            }
        });
    }
}
