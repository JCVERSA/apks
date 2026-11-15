package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import java.lang.ref.WeakReference;
import java.util.Map;

public final class ccg implements n3f {
    public final WeakReference a;
    public final WeakReference b;

    public ccg(fcg fcgVar, View view, ecg ecgVar) {
        this.a = new WeakReference(fcgVar);
        if (((Boolean) zzbd.zzc().b(cye.Vc)).booleanValue()) {
            this.b = new WeakReference(view);
        } else {
            this.b = new WeakReference(null);
        }
    }

    @Override
    public final void a(Object obj, Map map) {
        fcg fcgVar = (fcg) this.a.get();
        if (fcgVar == null) {
            return;
        }
        fcgVar.g.zza();
        if (((Boolean) zzbd.zzc().b(cye.Vc)).booleanValue()) {
            fcgVar.E.a((View) this.b.get(), fcgVar.j);
        }
    }
}
