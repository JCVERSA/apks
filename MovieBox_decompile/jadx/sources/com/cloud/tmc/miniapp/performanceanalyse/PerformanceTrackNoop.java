package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;

public final class PerformanceTrackNoop implements PerformanceAnalyseProxy {
    @Override
    public void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2) {
    }

    @Override
    public void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2, Bundle bundle) {
    }

    @Override
    public void recordForCommon(String str, String str2, Bundle bundle) {
    }

    @Override
    public void recordForAd(String str, String str2, String str3, Bundle bundle) {
    }
}
