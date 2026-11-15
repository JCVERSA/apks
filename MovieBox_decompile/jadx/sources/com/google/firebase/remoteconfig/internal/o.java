package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

public class o {

    private final Set f31722a;

    private final ConfigRealtimeHttpClient f31723b;

    private final ConfigFetchHandler f31724c;

    private final com.google.firebase.f f31725d;

    private final lc.e f31726e;

    private final e f31727f;

    private final Context f31728g;

    private final String f31729h;

    private final n f31730i;

    private final ScheduledExecutorService f31731j;

    public o(com.google.firebase.f fVar, lc.e eVar, ConfigFetchHandler configFetchHandler, e eVar2, Context context, String str, n nVar, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f31722a = linkedHashSet;
        this.f31723b = new ConfigRealtimeHttpClient(fVar, eVar, configFetchHandler, eVar2, context, str, linkedHashSet, nVar, scheduledExecutorService);
        this.f31725d = fVar;
        this.f31724c = configFetchHandler;
        this.f31726e = eVar;
        this.f31727f = eVar2;
        this.f31728g = context;
        this.f31729h = str;
        this.f31730i = nVar;
        this.f31731j = scheduledExecutorService;
    }

    private synchronized void a() {
        if (!this.f31722a.isEmpty()) {
            this.f31723b.C();
        }
    }

    public synchronized void b(boolean z10) {
        this.f31723b.z(z10);
        if (!z10) {
            a();
        }
    }
}
