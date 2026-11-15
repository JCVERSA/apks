package com.cloud.tmc.integration.proxy;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.proxy.Proxiable;
import kotlin.Triple;

public interface ReportProxy extends Proxiable {
    Triple<Boolean, Boolean, Boolean> checkReportIntercept(String str, Boolean bool);

    void forceAthenaReport(String str, String str2, int i10, Bundle bundle);

    @NonNull
    String getVaid();

    void mfahCacheDataReport(String str);

    void report(String str, String str2, Bundle bundle);

    void report(String str, String str2, Bundle bundle, Integer num);

    void reportAd(String str, String str2, Bundle bundle);
}
