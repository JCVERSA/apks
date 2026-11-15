package io.appmetrica.analytics.impl;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Iterator;

public final class C2675l implements InterfaceC2725n {
    public final HashSet a = new HashSet();

    public C2675l(@NonNull C2775p c2775p) {
        c2775p.a(this, new EnumC2700m[0]);
    }

    public final synchronized void a(@NonNull InterfaceC2650k interfaceC2650k) {
        this.a.add(interfaceC2650k);
    }

    public final void a(@NonNull Activity activity) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((Ri) ((InterfaceC2650k) it.next())).a(activity);
        }
    }

    @Override
    @MainThread
    public final void a(@NonNull Activity activity, @NonNull EnumC2700m enumC2700m) {
        C2879t4.i().c.a().execute(new RunnableC2625j(this, activity));
    }
}
