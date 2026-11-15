package io.appmetrica.analytics.impl;

import android.os.Debug;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C2476d extends Thread {
    public final AtomicBoolean a = new AtomicBoolean(true);
    public final C2501e b;

    public C2476d(C2501e c2501e) {
        this.b = c2501e;
    }

    @Override
    public final void run() {
        while (!isInterrupted() && this.a.get()) {
            this.b.e.set(false);
            C2501e c2501e = this.b;
            c2501e.c.postAtFrontOfQueue(c2501e.f);
            int i = this.b.b.get();
            while (i > 0) {
                try {
                    Thread.sleep(C2501e.g);
                    if (this.b.e.get()) {
                        break;
                    } else {
                        i--;
                    }
                } catch (InterruptedException unused) {
                    return;
                }
            }
            if (i == 0 && !Debug.isDebuggerConnected()) {
                Iterator it = this.b.a.iterator();
                while (it.hasNext()) {
                    ((InterfaceC2451c) it.next()).onAppNotResponding();
                }
            }
            while (!this.b.e.get()) {
                try {
                    Thread.sleep(C2501e.g);
                } catch (InterruptedException unused2) {
                    return;
                }
            }
        }
    }
}
