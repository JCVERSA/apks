package com.cloud.tmc.miniapp.performanceanalyse;

import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.miniutils.util.GsonUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class PerformanceUtils implements PerformanceImprovesProxy {
    public final ConcurrentHashMap<String, List<String>> OooO00o = new ConcurrentHashMap<>();

    @Override
    public void addPeroformanceImprove(String str, String str2) {
        List<String> list;
        if (str != null) {
            try {
                if (!this.OooO00o.containsKey(str)) {
                    this.OooO00o.put(str, new ArrayList());
                }
                if (str2 == null || (list = this.OooO00o.get(str)) == null) {
                    return;
                }
                list.add(str2);
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void clearPerformanceImproves(String str) {
        if (str != null) {
            try {
                this.OooO00o.remove(str);
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public String getPerformanceImproves(String str) {
        if (str == null) {
            return "";
        }
        try {
            if (!this.OooO00o.containsKey(str)) {
                return "";
            }
            String json = GsonUtils.toJson(this.OooO00o.get(str));
            Intrinsics.g(json, "toJson(performanceImproves[it])");
            return json;
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override
    public void resetPerformanceImproves(String str) {
        if (str != null) {
            try {
                this.OooO00o.remove(str);
            } catch (Throwable unused) {
            }
        }
    }
}
