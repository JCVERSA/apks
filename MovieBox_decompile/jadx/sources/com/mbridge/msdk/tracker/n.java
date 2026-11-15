package com.mbridge.msdk.tracker;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.ConcurrentHashMap;

public class n implements f {

    private final ConcurrentHashMap<String, a> f37718a = new ConcurrentHashMap<>();

    private static final class a {

        private final boolean f37719a;

        public a(boolean z10) {
            this.f37719a = z10;
        }

        public boolean a() {
            return this.f37719a;
        }
    }

    @Override
    public boolean a(e eVar) throws Exception {
        a aVar;
        if (eVar != null && !TextUtils.isEmpty(eVar.b())) {
            try {
                String strB = eVar.b();
                if (this.f37718a.containsKey(strB)) {
                    aVar = this.f37718a.get(strB);
                } else {
                    a aVar2 = new a(com.mbridge.msdk.foundation.same.report.c.a(strB));
                    this.f37718a.put(strB, aVar2);
                    aVar = aVar2;
                }
                return aVar != null && aVar.a();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("TrackManager", "apply", e10);
                }
            }
        }
        return false;
    }
}
