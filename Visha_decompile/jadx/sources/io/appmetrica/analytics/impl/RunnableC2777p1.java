package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.Iterator;

public final class RunnableC2777p1 implements Runnable {
    public final Context a;

    public RunnableC2777p1(Context context) {
        this.a = context;
    }

    @Override
    public final void run() {
        Fj fj = AbstractC2521ej.a;
        Context context = this.a;
        synchronized (fj) {
            try {
                if (fj.b == null) {
                    fj.b = AbstractC2545fi.a.a(context, "20799a27-fa80-4b36-b2db-0f8141f24180");
                    Iterator it = fj.a.iterator();
                    while (it.hasNext()) {
                        ((Xa) it.next()).a(fj.b);
                    }
                    fj.a.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
