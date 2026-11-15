package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.t3;
import java.util.Map;

public final class b6f implements n3f {
    public final long a;
    public final q6f b;
    public final s5f c;
    public final t3 d;

    public b6f(t3 t3Var, long j, q6f q6fVar, s5f s5fVar) {
        this.a = j;
        this.b = q6fVar;
        this.c = s5fVar;
        this.d = t3Var;
    }

    @Override
    public final void a(Object obj, Map map) {
        zze.zza("onGmsg /jsLoaded. JsLoaded latency is " + (zzv.zzC().currentTimeMillis() - this.a) + " ms.");
        zze.zza("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        t3 t3Var = this.d;
        synchronized (t3Var.a) {
            zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            q6f q6fVar = this.b;
            if (q6fVar.a() != -1 && q6fVar.a() != 1) {
                t3Var.i = 0;
                s5f s5fVar = this.c;
                s5fVar.b("/log", m3f.g);
                s5fVar.b("/result", m3f.o);
                q6fVar.e(s5fVar);
                t3Var.h = q6fVar;
                zze.zza("Successfully loaded JS Engine.");
                zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
