package com.mbridge.msdk.tracker;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.atomic.AtomicLong;

class g implements l {

    private final c f37680a;

    private final s f37681b;

    private final AtomicLong f37682c = new AtomicLong(0);

    private final long[] f37683d = new long[2];

    public g(c cVar, s sVar) {
        this.f37680a = cVar;
        this.f37681b = sVar;
    }

    @Override
    public void a(e eVar) {
        try {
            long jIncrementAndGet = this.f37682c.incrementAndGet();
            this.f37683d[0] = System.currentTimeMillis();
            this.f37683d[1] = jIncrementAndGet;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("TrackManager", "notice error", e10);
            }
        }
    }

    @Override
    public void b(e eVar) {
        try {
            i iVar = new i(eVar);
            iVar.a(1);
            iVar.b(0);
            iVar.a(System.currentTimeMillis() + eVar.f());
            this.f37680a.a(iVar);
            this.f37681b.k();
            this.f37681b.e();
            this.f37681b.a(eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("TrackManager", "process error", e10);
            }
        }
    }

    @Override
    public long[] a() {
        long[] jArr = this.f37683d;
        return jArr.length == 0 ? new long[]{0, 0} : jArr;
    }
}
