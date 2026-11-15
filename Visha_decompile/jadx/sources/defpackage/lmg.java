package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.BooleanUtils;

public final class lmg {
    public final ConcurrentHashMap a;
    public final tef b;
    public final enh c;
    public final String d;
    public final String e;
    public final zzk f;
    public final Bundle g = new Bundle();
    public final Context h;

    public lmg(Context context, xmg xmgVar, tef tefVar, enh enhVar, String str, String str2, zzk zzkVar) {
        ActivityManager.MemoryInfo memoryInfoZzc;
        String str3;
        ConcurrentHashMap concurrentHashMapC = xmgVar.c();
        this.a = concurrentHashMapC;
        this.b = tefVar;
        this.c = enhVar;
        this.d = str;
        this.e = str2;
        this.f = zzkVar;
        this.h = context;
        concurrentHashMapC.put("ad_format", str2.toUpperCase(Locale.ROOT));
        if (((Boolean) zzbd.zzc().b(cye.F9)).booleanValue()) {
            int iZzp = zzkVar.zzp();
            int i = iZzp - 1;
            if (iZzp == 0) {
                throw null;
            }
            if (i != 0) {
                str3 = i != 1 ? "na" : "2";
            } else {
                str3 = "1";
            }
            concurrentHashMapC.put("asv", str3);
        }
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            d("rt_f", String.valueOf(runtime.freeMemory()));
            d("rt_m", String.valueOf(runtime.maxMemory()));
            d("rt_t", String.valueOf(runtime.totalMemory()));
            d("wv_c", String.valueOf(zzv.zzp().c()));
            if (((Boolean) zzbd.zzc().b(cye.v2)).booleanValue() && (memoryInfoZzc = zzf.zzc(context)) != null) {
                d("mem_avl", String.valueOf(memoryInfoZzc.availMem));
                d("mem_tt", String.valueOf(memoryInfoZzc.totalMem));
                d("low_m", true != memoryInfoZzc.lowMemory ? "0" : "1");
            }
        }
        if (((Boolean) zzbd.zzc().b(cye.T6)).booleanValue()) {
            int iZzg = zzaa.zzg(enhVar) - 1;
            if (iZzg == 0) {
                concurrentHashMapC.put("request_id", str);
                concurrentHashMapC.put("scar", BooleanUtils.FALSE);
                return;
            }
            if (iZzg == 1) {
                concurrentHashMapC.put("request_id", str);
                concurrentHashMapC.put("se", "query_g");
            } else if (iZzg == 2) {
                concurrentHashMapC.put("se", "r_adinfo");
            } else if (iZzg != 3) {
                concurrentHashMapC.put("se", "r_both");
            } else {
                concurrentHashMapC.put("se", "r_adstring");
            }
            concurrentHashMapC.put("scar", BooleanUtils.TRUE);
            d("ragent", enhVar.d.zzp);
            d("rtype", zzaa.zzb(zzaa.zzc(enhVar.d)));
        }
    }

    public final Bundle a() {
        return this.g;
    }

    public final Map b() {
        return this.a;
    }

    public final void c() {
        if (((Boolean) zzbd.zzc().b(cye.od)).booleanValue()) {
            d("brr", true != this.c.p ? "0" : "1");
        }
    }

    public final void d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.a.put(str, str2);
    }

    public final void e(vmh vmhVar) {
        umh umhVar = vmhVar.b;
        List list = umhVar.a;
        if (!list.isEmpty()) {
            int i = ((hmh) list.get(0)).b;
            d("ad_format", hmh.a(i));
            if (i == 6) {
                this.a.put("as", true != this.b.l() ? "0" : "1");
            }
        }
        d("gqi", umhVar.b.b);
    }

    public final void f(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("cnt")) {
            d("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            d("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
