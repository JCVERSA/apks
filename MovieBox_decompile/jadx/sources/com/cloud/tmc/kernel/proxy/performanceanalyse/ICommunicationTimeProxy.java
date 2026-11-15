package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.proxy.Proxiable;

public interface ICommunicationTimeProxy extends Proxiable {
    void clear(String str);

    int getTotalNum(String str);

    long getTotalTime(String str);

    void plusNum(String str, int i10);

    void plusTime(String str, long j10);
}
