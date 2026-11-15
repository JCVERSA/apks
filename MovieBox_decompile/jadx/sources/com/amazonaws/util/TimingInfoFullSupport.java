package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class TimingInfoFullSupport extends TimingInfo {

    private final Map f18391d;

    private final Map f18392e;

    TimingInfoFullSupport(Long l10, long j10, Long l11) {
        super(l10, j10, l11);
        this.f18391d = new HashMap();
        this.f18392e = new HashMap();
    }

    @Override
    public void a(String str, TimingInfo timingInfo) {
        List arrayList = (List) this.f18391d.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f18391d.put(str, arrayList);
        }
        if (timingInfo.k()) {
            arrayList.add(timingInfo);
            return;
        }
        LogFactory.b(getClass()).a("Skip submeasurement timing info with no end time for " + str);
    }

    @Override
    public Map d() {
        return this.f18392e;
    }

    @Override
    public Map g() {
        return this.f18391d;
    }

    @Override
    public void j(String str) {
        Number numberQ = q(str);
        l(str, (numberQ != null ? numberQ.intValue() : 0) + 1);
    }

    @Override
    public void l(String str, long j10) {
        this.f18392e.put(str, Long.valueOf(j10));
    }

    public Number q(String str) {
        return (Number) this.f18392e.get(str);
    }
}
