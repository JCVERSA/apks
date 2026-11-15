package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Iterator;

public final class W1 implements InterfaceC2725n {
    public final ArrayList a = new ArrayList();
    public volatile G7 b = null;

    public final void a(@NonNull G7 g7) {
        ArrayList arrayListA;
        synchronized (this) {
            this.b = g7;
            arrayListA = a();
        }
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            ((Sd) it.next()).consume(g7);
        }
    }

    public final void b() {
        C2879t4.i().e.a(this, EnumC2700m.CREATED);
    }

    public final void c() {
        C2879t4.i().e.b(this, EnumC2700m.CREATED);
    }

    public final synchronized ArrayList a() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.a);
        this.a.clear();
        return arrayList;
    }

    @Override
    @MainThread
    public final void a(@NonNull Activity activity, @NonNull EnumC2700m enumC2700m) {
        Intent intent = (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new U1());
        String dataString = intent == null ? null : intent.getDataString();
        if (TextUtils.isEmpty(dataString)) {
            return;
        }
        V1 v1 = new V1(dataString);
        synchronized (this) {
            try {
                G7 g7 = this.b;
                if (g7 == null) {
                    this.a.add(v1);
                } else {
                    ((G9) C2879t4.i().c.a()).b.post(new T1(v1, g7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
