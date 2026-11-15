package com.cloud.tmc.miniapp.performanceanalyse;

import com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy;
import java.util.LinkedHashMap;
import java.util.Map;

public final class CommunicationTime implements ICommunicationTimeProxy {
    public final Map<String, Long> OooO00o = new LinkedHashMap();
    public final Map<String, Integer> OooO0O0 = new LinkedHashMap();

    @Override
    public void clear(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.OooO00o.remove(str);
        this.OooO0O0.remove(str);
    }

    @Override
    public int getTotalNum(String str) {
        Integer num;
        if (str == null || str.length() == 0 || (num = this.OooO0O0.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override
    public long getTotalTime(String str) {
        Long l10;
        if (str == null || str.length() == 0 || (l10 = this.OooO00o.get(str)) == null) {
            return 0L;
        }
        return l10.longValue();
    }

    @Override
    public void plusNum(String str, int i10) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (!this.OooO0O0.containsKey(str)) {
            this.OooO0O0.put(str, 0);
        }
        Integer num = this.OooO0O0.get(str);
        if (num != null) {
            this.OooO0O0.put(str, Integer.valueOf(num.intValue() + i10));
        }
    }

    @Override
    public void plusTime(String str, long j10) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (!this.OooO00o.containsKey(str)) {
            this.OooO00o.put(str, 0L);
        }
        Long l10 = this.OooO00o.get(str);
        if (l10 != null) {
            this.OooO00o.put(str, Long.valueOf(l10.longValue() + j10));
        }
    }
}
