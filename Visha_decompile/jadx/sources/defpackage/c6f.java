package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.t3;
import java.util.Map;

public final class c6f implements n3f {
    public final s5f a;
    public final zzby b;
    public final t3 c;

    public c6f(t3 t3Var, fre freVar, s5f s5fVar, zzby zzbyVar) {
        this.a = s5fVar;
        this.b = zzbyVar;
        this.c = t3Var;
    }

    @Override
    public final void a(Object obj, Map map) {
        zze.zza("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        t3 t3Var = this.c;
        synchronized (t3Var.a) {
            try {
                zze.zza("loadJavascriptEngine > /requestReload handler: Lock acquired");
                zzo.zzi("JS Engine is requesting an update");
                if (t3Var.i == 0) {
                    zzo.zzi("Starting reload.");
                    t3Var.i = 2;
                    t3Var.d(null);
                }
                this.a.a("/requestReload", (n3f) this.b.zza());
            } catch (Throwable th) {
                throw th;
            }
        }
        zze.zza("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
