package com.cloud.tmc.integration.defaultImpl;

import android.content.Context;
import com.cloud.tmc.integration.proxy.PerformanceProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.perf.ErrReportBean;
import com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker;

public class TmcPerformanceAndErrorTracker implements IPerformanceAndErrorTracker {
    private static final String TAG = "peTracker";

    @Override
    public void sendErr(Context context, ErrReportBean errReportBean) {
        String.valueOf(errReportBean);
    }

    @Override
    public void sendPerf(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
    }

    @Override
    public void sendPerfStageLog(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        ((PerformanceProxy) TmcProxy.get(PerformanceProxy.class)).sendPerfStageLog(str, str2);
    }

    @Override
    public void sendPerfV2(String str) {
        ((PerformanceProxy) TmcProxy.get(PerformanceProxy.class)).sendPerfV2(str);
    }
}
