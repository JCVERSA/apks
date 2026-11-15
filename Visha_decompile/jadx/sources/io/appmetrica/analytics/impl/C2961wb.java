package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.HashMap;

public final class C2961wb extends InterruptionSafeThread {
    public final C2986xb a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2961wb(C2986xb c2986xb, String str) {
        super(str);
        this.a = c2986xb;
    }

    @Override
    public final void run() {
        HashMap map;
        synchronized (this.a.a) {
            C2986xb.a(this.a);
            this.a.e = true;
            this.a.a.notifyAll();
        }
        while (isRunning()) {
            synchronized (this) {
                if (this.a.b.size() == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
                map = new HashMap(this.a.b);
                this.a.b.clear();
            }
            if (map.size() > 0) {
                C2986xb.a(this.a, map);
                map.clear();
            }
        }
    }
}
