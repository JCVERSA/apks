package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.proxy.Proxiable;

public interface DebugProxy extends Proxiable {
    void consoleContent(IPerformanceAnalyseType iPerformanceAnalyseType, String str);
}
