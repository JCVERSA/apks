package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public final class jtf implements iue {
    public final ejf b;
    public final Executor c;
    public final AtomicReference d = new AtomicReference();

    public jtf(ejf ejfVar, Executor executor) {
        this.b = ejfVar;
        this.c = executor;
    }

    @Override
    public final synchronized void zzdn(hue hueVar) {
        final ejf ejfVar = this.b;
        if (ejfVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.Hc)).booleanValue()) {
                if (hueVar.j) {
                    AtomicReference atomicReference = this.d;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        this.c.execute(new Runnable() {
                            @Override
                            public final void run() {
                                ejfVar.onResume();
                            }
                        });
                    }
                } else {
                    AtomicReference atomicReference2 = this.d;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        this.c.execute(new Runnable() {
                            @Override
                            public final void run() {
                                ejfVar.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}
