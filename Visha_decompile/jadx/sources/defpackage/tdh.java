package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;

public final class tdh implements deh {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final int e;
    public final int f;
    public final int g;
    public final String h;

    public tdh(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3, String str2) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = z3;
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = str2;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        bundle.putString("js", this.c);
        bundle.putInt("target_api", this.e);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putString("js", this.c);
        bundle.putBoolean("is_nonagon", true);
        bundle.putString("extra_caps", (String) zzbd.zzc().b(cye.W3));
        bundle.putInt("target_api", this.e);
        bundle.putInt("dv", this.f);
        bundle.putInt("lv", this.g);
        if (((Boolean) zzbd.zzc().b(cye.V5)).booleanValue()) {
            String str = this.h;
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("ev", str);
            }
        }
        Bundle bundleA = unh.a(bundle, "sdk_env");
        bundleA.putBoolean(DownloadFacadeEnum.USER_MF, ((Boolean) zze.c.e()).booleanValue());
        bundleA.putBoolean("instant_app", this.a);
        bundleA.putBoolean("lite", this.b);
        bundleA.putBoolean("is_privileged_process", this.d);
        bundle.putBundle("sdk_env", bundleA);
        Bundle bundleA2 = unh.a(bundleA, "build_meta");
        bundleA2.putString("cl", "741296643");
        bundleA2.putString("rapid_rc", "dev");
        bundleA2.putString("rapid_rollup", "HEAD");
        bundleA.putBundle("build_meta", bundleA2);
    }
}
