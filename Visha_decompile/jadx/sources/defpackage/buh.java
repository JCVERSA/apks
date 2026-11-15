package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import java.util.Locale;
import java.util.Map;

public final class buh {
    public final smg a;
    public final String b;

    public buh(smg smgVar, Context context) {
        CharSequence charSequenceD;
        this.a = smgVar;
        pzh pzhVar = zzs.zza;
        try {
            charSequenceD = mpc.a(context).d(context.getPackageName());
        } catch (PackageManager.NameNotFoundException e) {
            int i = zze.zza;
            zzo.zzk("Failed to get application name", e);
            charSequenceD = "";
        }
        this.b = charSequenceD.toString();
    }

    public final void a(AdFormat adFormat, int i, int i2, long j) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b("action", "cache_resize");
        rmgVarA.b("cs_ts", Long.toString(j));
        rmgVarA.b("app", this.b);
        rmgVarA.b("orig_ma", Integer.toString(i));
        rmgVarA.b("max_ads", Integer.toString(i2));
        rmgVarA.b("ad_format", adFormat.name().toLowerCase(Locale.ENGLISH));
        rmgVarA.j();
    }

    public final void b(AdFormat adFormat, int i, int i2, long j, Long l, String str) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b("plaac_ts", Long.toString(j));
        rmgVarA.b("ad_format", adFormat.name());
        rmgVarA.b("app", this.b);
        rmgVarA.b("max_ads", Integer.toString(i));
        rmgVarA.b("cache_size", Integer.toString(i2));
        rmgVarA.b("action", "is_ad_available");
        if (l != null) {
            rmgVarA.b("plaay_ts", Long.toString(l.longValue()));
        }
        if (str != null) {
            rmgVarA.b("gqi", str);
        }
        rmgVarA.j();
    }

    public final void c(AdFormat adFormat, long j, String str) {
        j(adFormat, null, "pano_ts", j, -1, -1, str);
    }

    public final void d(AdFormat adFormat, long j) {
        j(adFormat, null, "paeo_ts", j, -1, -1, null);
    }

    public final void e(AdFormat adFormat, long j) {
        j(adFormat, "poll_ad", "ppac_ts", j, -1, -1, null);
    }

    public final void f(AdFormat adFormat, long j, int i, int i2, String str) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b("ppla_ts", Long.toString(j));
        rmgVarA.b("ad_format", adFormat.name());
        rmgVarA.b("app", this.b);
        rmgVarA.b("max_ads", Integer.toString(i));
        rmgVarA.b("cache_size", Integer.toString(i2));
        rmgVarA.b("action", "poll_ad");
        if (str != null) {
            rmgVarA.b("gqi", str);
        }
        rmgVarA.j();
    }

    public final void g(AdFormat adFormat, long j, int i, int i2, String str) {
        j(adFormat, "poll_ad", "psvroc_ts", j, i, i2, str);
    }

    public final void h(Map map, long j) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b("action", "start_preload");
        rmgVarA.b("sp_ts", Long.toString(j));
        rmgVarA.b("app", this.b);
        for (AdFormat adFormat : map.keySet()) {
            String strValueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            rmgVarA.b(strValueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        rmgVarA.j();
    }

    public final void i(AdFormat adFormat, int i, long j) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b("action", "start_preload");
        rmgVarA.b("sp_ts", Long.toString(j));
        rmgVarA.b("app", this.b);
        rmgVarA.b("ad_format", adFormat.name().toLowerCase(Locale.ENGLISH));
        rmgVarA.b("max_ads", Integer.toString(i));
        rmgVarA.j();
    }

    public final void j(AdFormat adFormat, String str, String str2, long j, int i, int i2, String str3) {
        rmg rmgVarA = this.a.a();
        rmgVarA.b(str2, Long.toString(j));
        rmgVarA.b("app", this.b);
        rmgVarA.b("ad_format", adFormat == null ? "unknown" : adFormat.name());
        if (str != null) {
            rmgVarA.b("action", str);
        }
        if (str3 != null) {
            rmgVarA.b("gqi", str3);
        }
        if (i >= 0) {
            rmgVarA.b("max_ads", Integer.toString(i));
        }
        if (i2 >= 0) {
            rmgVarA.b("cache_size", Integer.toString(i2));
        }
        rmgVarA.j();
    }
}
