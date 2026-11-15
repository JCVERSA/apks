package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
import java.util.TreeMap;

public final class wjj {
    public final Context a;
    public final String b;
    public final Map c = new TreeMap();
    public String d;
    public String e;
    public final String f;

    public wjj(Context context, String str) {
        String strConcat;
        this.a = context.getApplicationContext();
        this.b = str;
        String packageName = context.getPackageName();
        try {
            strConcat = packageName + "-" + mpc.a(context).f(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            int i = zze.zza;
            zzo.zzh("Unable to get package version name for reporting", e);
            strConcat = String.valueOf(packageName).concat("-missing");
        }
        this.f = strConcat;
    }

    public final String a() {
        return this.f;
    }

    public final String b() {
        return this.e;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.d;
    }

    public final Map e() {
        return this.c;
    }

    public final void f(zzm zzmVar, VersionInfoParcel versionInfoParcel) {
        this.d = zzmVar.zzj.zza;
        Bundle bundle = zzmVar.zzm;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String str = (String) gze.c.e();
        for (String str2 : bundle2.keySet()) {
            if (str.equals(str2)) {
                this.e = bundle2.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.c.put(str2.substring(4), bundle2.getString(str2));
            }
        }
        Map map = this.c;
        map.put("SDKVersion", versionInfoParcel.afmaVersion);
        if (((Boolean) gze.a.e()).booleanValue()) {
            Bundle bundleZzb = zzad.zzb(this.a, (String) gze.b.e());
            for (String str3 : bundleZzb.keySet()) {
                map.put(str3, bundleZzb.get(str3).toString());
            }
        }
    }
}
