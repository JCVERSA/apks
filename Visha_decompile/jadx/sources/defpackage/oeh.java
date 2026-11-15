package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import java.util.ArrayList;

public final class oeh implements deh {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final ArrayList h;
    public final String i;
    public final String j;
    public final String k;
    public final boolean l;
    public final String m;
    public final long n;
    public final boolean o;
    public final String p;
    public final int q;

    public oeh(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList arrayList, String str3, String str4, String str5, boolean z6, String str6, long j, boolean z7, String str7, int i) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = z3;
        this.e = z4;
        this.f = z5;
        this.g = str2;
        this.h = arrayList;
        this.i = str3;
        this.j = str4;
        this.k = str5;
        this.l = z6;
        this.m = str6;
        this.n = j;
        this.o = z7;
        this.p = str7;
        this.q = i;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        bundle.putBoolean("simulator", this.d);
        bundle.putInt("build_api_level", this.q);
        ArrayList<String> arrayList = this.h;
        if (!arrayList.isEmpty()) {
            bundle.putStringArrayList("hl_list", arrayList);
        }
        bundle.putString("submodel", this.m);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putBoolean("cog", this.a);
        bundle.putBoolean("coh", this.b);
        bundle.putString("gl", this.c);
        bundle.putBoolean("simulator", this.d);
        bundle.putBoolean("is_latchsky", this.e);
        bundle.putInt("build_api_level", this.q);
        if (!((Boolean) zzbd.zzc().b(cye.gb)).booleanValue()) {
            bundle.putBoolean("is_sidewinder", this.f);
        }
        bundle.putString("hl", this.g);
        ArrayList<String> arrayList = this.h;
        if (!arrayList.isEmpty()) {
            bundle.putStringArrayList("hl_list", arrayList);
        }
        bundle.putString("mv", this.i);
        bundle.putString("submodel", this.m);
        Bundle bundleA = unh.a(bundle, "device");
        bundle.putBundle("device", bundleA);
        bundleA.putString("build", this.k);
        bundleA.putLong("remaining_data_partition_space", this.n);
        Bundle bundleA2 = unh.a(bundleA, "browser");
        bundleA.putBundle("browser", bundleA2);
        bundleA2.putBoolean("is_browser_custom_tabs_capable", this.l);
        String str = this.j;
        if (!TextUtils.isEmpty(str)) {
            Bundle bundleA3 = unh.a(bundleA, "play_store");
            bundleA.putBundle("play_store", bundleA3);
            bundleA3.putString("package_version", str);
        }
        if (((Boolean) zzbd.zzc().b(cye.wb)).booleanValue()) {
            bundle.putBoolean("is_bstar", this.o);
        }
        String str2 = this.p;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("v_unity", str2);
        }
        if (((Boolean) zzbd.zzc().b(cye.qb)).booleanValue()) {
            unh.g(bundle, "gotmt_l", true, ((Boolean) zzbd.zzc().b(cye.nb)).booleanValue());
            unh.g(bundle, "gotmt_i", true, ((Boolean) zzbd.zzc().b(cye.mb)).booleanValue());
        }
    }
}
