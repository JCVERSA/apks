package defpackage;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

public final class fye {
    public final String a = (String) tze.a.e();
    public final Map b;
    public final Context c;
    public final String d;

    public fye(Context context, String str) {
        this.c = context;
        this.d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        zzv.zzq();
        linkedHashMap.put("device", zzs.zzs());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        zzv.zzq();
        linkedHashMap.put("is_lite_sdk", true != zzs.zzF(context) ? "0" : "1");
        Future futureB = zzv.zzn().b(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((ybf) futureB.get()).j));
            linkedHashMap.put("network_fine", Integer.toString(((ybf) futureB.get()).k));
        } catch (Exception e) {
            zzv.zzp().x(e, "CsiConfiguration.CsiConfiguration");
        }
        if (((Boolean) zzbd.zzc().b(cye.vb)).booleanValue()) {
            Map map = this.b;
            zzv.zzq();
            map.put("is_bstar", true != zzs.zzC(context) ? "0" : "1");
        }
        if (((Boolean) zzbd.zzc().b(cye.z9)).booleanValue()) {
            if (!((Boolean) zzbd.zzc().b(cye.z2)).booleanValue() || j3i.d(zzv.zzp().o())) {
                return;
            }
            this.b.put("plugin", zzv.zzp().o());
        }
    }

    public final Context a() {
        return this.c;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.a;
    }

    public final Map d() {
        return this.b;
    }
}
