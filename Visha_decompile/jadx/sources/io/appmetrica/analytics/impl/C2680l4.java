package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;

public final class C2680l4 {
    public final C2499dm a;
    public final Q b;

    public C2680l4(C2499dm c2499dm, Q q) {
        this.a = c2499dm;
        this.b = q;
    }

    public final C2655k4 a(HashMap map) {
        AdvertisingIdsHolder advertisingIdsHolderA;
        Hl hlE = this.a.e();
        Q q = this.b;
        synchronized (q) {
            advertisingIdsHolderA = q.a(new Pd());
        }
        return new C2655k4(C2655k4.a(hlE.d), C2655k4.a(hlE.a), C2655k4.a(hlE.b), C2655k4.a(hlE.j), C2655k4.a(hlE.i), C2655k4.a(AbstractC2712mb.a(AbstractC2623im.a(hlE.k))), C2655k4.a(AbstractC2712mb.a(map)), new IdentifiersResult(advertisingIdsHolderA.getGoogle().mAdTrackingInfo == null ? null : advertisingIdsHolderA.getGoogle().mAdTrackingInfo.advId, advertisingIdsHolderA.getGoogle().mStatus, advertisingIdsHolderA.getGoogle().mErrorExplanation), new IdentifiersResult(advertisingIdsHolderA.getHuawei().mAdTrackingInfo == null ? null : advertisingIdsHolderA.getHuawei().mAdTrackingInfo.advId, advertisingIdsHolderA.getHuawei().mStatus, advertisingIdsHolderA.getHuawei().mErrorExplanation), new IdentifiersResult(advertisingIdsHolderA.getYandex().mAdTrackingInfo != null ? advertisingIdsHolderA.getYandex().mAdTrackingInfo.advId : null, advertisingIdsHolderA.getYandex().mStatus, advertisingIdsHolderA.getYandex().mErrorExplanation), C2655k4.a(AbstractC2712mb.a(hlE.h)), AbstractC2550fn.a(), hlE.o + ((long) hlE.A.a), C2655k4.a(hlE.n.f), new Bundle());
    }
}
