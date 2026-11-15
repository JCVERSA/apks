package defpackage;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzebe;
import java.io.File;
import java.util.Collections;
import java.util.Map;

public abstract class vjf extends ijf {
    public vjf(ejf ejfVar, o0 o0Var, boolean z, zzebe zzebeVar) {
        super(ejfVar, o0Var, z, new z9f(ejfVar, ejfVar.zzE(), new hxe(ejfVar.getContext())), null, zzebeVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebResourceResponse R(WebView webView, String str, Map map) {
        String str2;
        if (!(webView instanceof ejf)) {
            int i = zze.zza;
            zzo.zzj("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        ejf ejfVar = (ejf) webView;
        ddf ddfVar = this.z;
        if (ddfVar != null) {
            ddfVar.b(str, map, 1);
        }
        qyh.a();
        wyh wyhVar = wyh.a;
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.D(str, map);
        }
        if (ejfVar.zzN() != null) {
            ejfVar.zzN().zzH();
        }
        if (ejfVar.zzO().i()) {
            str2 = (String) zzbd.zzc().b(cye.d0);
        } else if (ejfVar.zzaF()) {
            str2 = (String) zzbd.zzc().b(cye.c0);
        } else {
            str2 = (String) zzbd.zzc().b(cye.b0);
        }
        zzv.zzq();
        return zzs.zzy(ejfVar.getContext(), ejfVar.zzm().afmaVersion, str2);
    }
}
