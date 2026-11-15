package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import java.util.ArrayList;
import java.util.Iterator;

public final class a implements ModuleAdRevenueProcessor {
    public final ArrayList a;

    public a(@NonNull d dVar, @NonNull ClientContext clientContext) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        arrayList.add(new f(dVar, clientContext));
        arrayList.add(new h(dVar, clientContext));
        arrayList.add(new i(dVar, clientContext));
        arrayList.add(new j(dVar, clientContext));
        arrayList.add(new k(dVar, clientContext));
        arrayList.add(new e(dVar, clientContext));
    }

    @Override
    @NonNull
    public final String getDescription() {
        return "AdMob";
    }

    @Override
    public final boolean process(Object... objArr) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            if (((ModuleAdRevenueProcessor) it.next()).process(objArr)) {
                return true;
            }
        }
        return false;
    }
}
