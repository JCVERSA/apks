package io.appmetrica.analytics.impl;

import defpackage.g1a;
import defpackage.qv0;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

public final class S7 {
    public final Q a;
    public final C2504e2 b;

    public S7(Q q, C2504e2 c2504e2) {
        this.a = q;
        this.b = c2504e2;
    }

    public final String a() {
        AdvertisingIdsHolder advertisingIdsHolder;
        byte[] bArrDigest;
        Q q = this.a;
        C2575gn c2575gn = new C2575gn(5, 500);
        synchronized (q) {
            try {
                q.a((InterfaceC2968wi) c2575gn, true).get();
            } catch (InterruptedException | ExecutionException unused) {
            }
            advertisingIdsHolder = q.k;
        }
        AdTrackingInfoResult yandex = advertisingIdsHolder.getYandex();
        if (!yandex.isValid()) {
            String id = this.b.getAppSetId().getId();
            if (id != null && id.length() != 0) {
                try {
                    UUID.fromString(id);
                    if (!y45.e(id, "00000000-0000-0000-0000-000000000000")) {
                        return g1a.N(id, "-", "", false, 4, null);
                    }
                } catch (Throwable unused2) {
                }
            }
            return g1a.N(UUID.randomUUID().toString(), "-", "", false, 4, null).toLowerCase(Locale.US);
        }
        AdTrackingInfo adTrackingInfo = yandex.mAdTrackingInfo;
        y45.g(adTrackingInfo);
        String str = adTrackingInfo.advId;
        y45.g(str);
        try {
            bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes(qv0.b));
        } catch (NoSuchAlgorithmException unused3) {
            bArrDigest = new byte[0];
        }
        return StringUtils.toHexString(bArrDigest);
    }

    public S7() {
        this(C2910ua.j().b(), C2910ua.j().c());
    }
}
