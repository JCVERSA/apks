package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzv;
import com.google.android.gms.internal.ads.zzfgn;
import java.lang.ref.WeakReference;
import java.util.Map;

public final class dcg implements n3f {
    public final WeakReference a;
    public final wth b;
    public final zzv c;
    public final zzfgn d;

    public dcg(fcg fcgVar, wth wthVar, zzv zzvVar, zzfgn zzfgnVar, ecg ecgVar) {
        this.a = new WeakReference(fcgVar);
        this.b = wthVar;
        this.c = zzvVar;
        this.d = zzfgnVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        fcg fcgVar = (fcg) this.a.get();
        String str = (String) map.get("u");
        if (fcgVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.b.d(str, this.c, this.d, fcgVar.D);
    }
}
