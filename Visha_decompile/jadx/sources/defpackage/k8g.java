package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class k8g extends a6g implements iue {
    public final Map c;
    public final Context d;
    public final hmh e;

    public k8g(Context context, Set set, hmh hmhVar) {
        super(set);
        this.c = new WeakHashMap(1);
        this.d = context;
        this.e = hmhVar;
    }

    public final synchronized void F(View view) {
        try {
            Map map = this.c;
            jue jueVar = (jue) map.get(view);
            if (jueVar == null) {
                jue jueVar2 = new jue(this.d, view);
                jueVar2.d(this);
                map.put(view, jueVar2);
                jueVar = jueVar2;
            }
            if (this.e.X) {
                if (((Boolean) zzbd.zzc().b(cye.B1)).booleanValue()) {
                    jueVar.g(((Long) zzbd.zzc().b(cye.A1)).longValue());
                    return;
                }
            }
            jueVar.f();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void G(View view) {
        Map map = this.c;
        if (map.containsKey(view)) {
            ((jue) map.get(view)).e(this);
            map.remove(view);
        }
    }

    @Override
    public final synchronized void zzdn(final hue hueVar) {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((iue) obj).zzdn(hueVar);
            }
        });
    }
}
