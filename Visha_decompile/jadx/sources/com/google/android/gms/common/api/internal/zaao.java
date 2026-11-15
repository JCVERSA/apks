package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import defpackage.rzd;
import defpackage.tzd;
import defpackage.ubc;
import defpackage.z1e;
import java.util.ArrayList;
import java.util.Map;

final class zaao extends zaav {
    final tzd zaa;
    private final Map zac;

    public zaao(tzd tzdVar, Map map) {
        super(tzdVar, null);
        this.zac = map;
    }

    @Override
    @WorkerThread
    public final void zaa() {
        z1e z1eVar = new z1e(tzd.b(null));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.google.android.gms.common.api.a.f fVar : this.zac.keySet()) {
            if (fVar.requiresGooglePlayServices()) {
                ubc.a(this.zac.get(fVar));
                if (!rzd.b(null)) {
                    arrayList.add(fVar);
                }
            }
            arrayList2.add(fVar);
        }
        int i = 0;
        int iB = -1;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i < size) {
                iB = z1eVar.b(tzd.a(null), (com.google.android.gms.common.api.a.f) arrayList.get(i));
                i++;
                if (iB != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i < size2) {
                iB = z1eVar.b(tzd.a(null), (com.google.android.gms.common.api.a.f) arrayList2.get(i));
                i++;
                if (iB == 0) {
                    break;
                }
            }
        }
        if (iB != 0) {
            ConnectionResult connectionResult = new ConnectionResult(iB, null);
            tzd.c(null);
            new i(this, null, connectionResult);
            throw null;
        }
        if (tzd.f(null) && tzd.d(null) != null) {
            tzd.d(null).zab();
        }
        for (com.google.android.gms.common.api.a.f fVar2 : this.zac.keySet()) {
            com.google.android.gms.common.internal.a.c cVar = (com.google.android.gms.common.internal.a.c) this.zac.get(fVar2);
            if (fVar2.requiresGooglePlayServices() && z1eVar.b(tzd.a(null), fVar2) != 0) {
                tzd.c(null);
                new j(this, null, cVar);
                throw null;
            }
            fVar2.connect(cVar);
        }
    }
}
