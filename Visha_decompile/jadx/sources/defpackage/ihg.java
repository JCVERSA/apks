package defpackage;

import android.graphics.Rect;
import com.google.android.gms.ads.internal.client.zzbd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

public final class ihg {
    public final Executor a;
    public final zqf b;
    public final k8g c;
    public final wpf d;

    public ihg(Executor executor, zqf zqfVar, k8g k8gVar, wpf wpfVar) {
        this.a = executor;
        this.c = k8gVar;
        this.b = zqfVar;
        this.d = wpfVar;
    }

    public final void c(final ejf ejfVar) {
        if (ejfVar == null) {
            return;
        }
        k8g k8gVar = this.c;
        k8gVar.F(ejfVar.zzF());
        iue iueVar = new iue() {
            @Override
            public final void zzdn(hue hueVar) {
                ikf ikfVarZzN = ejfVar.zzN();
                Rect rect = hueVar.d;
                ikfVarZzN.e(rect.left, rect.top, false);
            }
        };
        Executor executor = this.a;
        k8gVar.C(iueVar, executor);
        k8gVar.C(new iue() {
            @Override
            public final void zzdn(hue hueVar) {
                HashMap map = new HashMap();
                map.put("isVisible", true != hueVar.j ? "0" : "1");
                ejfVar.zzd("onAdVisibilityChanged", map);
            }
        }, executor);
        zqf zqfVar = this.b;
        k8gVar.C(zqfVar, executor);
        zqfVar.e(ejfVar);
        ikf ikfVarZzN = ejfVar.zzN();
        if (((Boolean) zzbd.zzc().b(cye.la)).booleanValue() && ikfVarZzN != null) {
            wpf wpfVar = this.d;
            ikfVarZzN.l(wpfVar);
            ikfVarZzN.f(wpfVar, null, null);
        }
        ejfVar.zzag("/trackActiveViewUnit", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.b.c();
            }
        });
        ejfVar.zzag("/untrackActiveViewUnit", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.b.b();
            }
        });
    }
}
