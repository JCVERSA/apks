package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.BiConsumer;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.util.Iterator;

public final class Y2 implements BiConsumer {
    public final Z2 a;

    public Y2(Z2 z2) {
        this.a = z2;
    }

    @Override
    public final void consume(Object obj, Object obj2) {
        Intent intent = (Intent) obj2;
        synchronized (this.a) {
            try {
                Z2 z2 = this.a;
                z2.b = intent;
                Iterator it = z2.a.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).consume(intent);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
