package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.a;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public final class dnj {
    public static dnj e;
    public final Context a;
    public final ScheduledExecutorService b;
    public xfj c = new xfj(this, null);
    public int d = 1;

    public dnj(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.b = scheduledExecutorService;
        this.a = context.getApplicationContext();
    }

    public static synchronized dnj b(Context context) {
        try {
            if (e == null) {
                ivg.a();
                e = new dnj(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new a("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    public final xda c(int i, Bundle bundle) {
        return g(new iij(f(), i, bundle));
    }

    public final xda d(int i, Bundle bundle) {
        return g(new cmj(f(), i, bundle));
    }

    public final synchronized int f() {
        int i;
        i = this.d;
        this.d = i + 1;
        return i;
    }

    public final synchronized xda g(rjj rjjVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Queueing ".concat(rjjVar.toString()));
            }
            if (!this.c.g(rjjVar)) {
                xfj xfjVar = new xfj(this, null);
                this.c = xfjVar;
                xfjVar.g(rjjVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return rjjVar.b.a();
    }
}
