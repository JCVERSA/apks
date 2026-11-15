package io.appmetrica.analytics.impl;

import defpackage.x71;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.executors.BlockingExecutor;
import io.appmetrica.analytics.coreutils.internal.network.UserAgent;
import io.appmetrica.analytics.networktasks.internal.AESRSARequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.AllHostsExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseValidityChecker;
import io.appmetrica.analytics.networktasks.internal.ExponentialBackoffDataHolder;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.LinkedHashMap;

public final class Nd {
    public static final Nd a = new Nd();
    public static final LinkedHashMap b = new LinkedHashMap();
    public static final String c = UserAgent.getFor(BuildConfig.LIBRARY_PACKAGE_NAME, "7.7.2", "50130239");

    public final synchronized ExponentialBackoffDataHolder a(Ld ld) {
        Object exponentialBackoffDataHolder;
        try {
            LinkedHashMap linkedHashMap = b;
            exponentialBackoffDataHolder = linkedHashMap.get(ld);
            if (exponentialBackoffDataHolder == null) {
                exponentialBackoffDataHolder = new ExponentialBackoffDataHolder(new Da(C2910ua.E.x(), ld), ld.name());
                linkedHashMap.put(ld, exponentialBackoffDataHolder);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (ExponentialBackoffDataHolder) exponentialBackoffDataHolder;
    }

    public static final NetworkTask a(C2706m5 c2706m5) {
        AESRSARequestBodyEncrypter aESRSARequestBodyEncrypter = new AESRSARequestBodyEncrypter();
        Rg rg = new Rg(aESRSARequestBodyEncrypter);
        Db db = new Db(c2706m5);
        return new NetworkTask(new BlockingExecutor(), new E9(c2706m5.a), new AllHostsExponentialBackoffPolicy(a.a(Ld.REPORT)), new C2718mh(c2706m5, rg, db, new FullUrlFormer(rg, db), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), c2706m5.h(), c2706m5.o(), c2706m5.t(), aESRSARequestBodyEncrypter), x71.e(new Hn()), c);
    }
}
