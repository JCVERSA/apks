package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import java.lang.ref.WeakReference;
import java.util.Map;

public final class acg implements n3f {
    public final WeakReference a;

    public acg(fcg fcgVar, ecg ecgVar) {
        this.a = new WeakReference(fcgVar);
    }

    @Override
    public final void a(Object obj, Map map) {
        fcg fcgVar = (fcg) this.a.get();
        if (fcgVar != null && "_ac".equals((String) map.get("eventName"))) {
            fcgVar.h.onAdClicked();
            if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
                fcgVar.i.zzdd();
                if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                    return;
                }
                fcgVar.i.zzu();
            }
        }
    }
}
