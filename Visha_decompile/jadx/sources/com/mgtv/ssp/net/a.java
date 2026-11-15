package com.mgtv.ssp.net;

import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.b;
import com.hunantv.imgo.util.s;

public class a {
    public static String a(int i) {
        if (i == 1) {
            return b.r();
        }
        if (i == 2) {
            return b.s();
        }
        if (i == 3) {
            return b.u();
        }
        return i == 4 ? b.t() : "";
    }

    public static ContentSdkBaseImgoHttpParams a() {
        com.mgtv.ssp.bean.config.a aVarC = com.mgtv.ssp.auth.b.a().c();
        ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = new ContentSdkBaseImgoHttpParams();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        contentSdkBaseImgoHttpParams.put(TrackingKey.TS, Long.valueOf(jCurrentTimeMillis));
        if (aVarC != null) {
            contentSdkBaseImgoHttpParams.put("sign", a(aVarC.b(), aVarC.c(), jCurrentTimeMillis));
        }
        return contentSdkBaseImgoHttpParams;
    }

    public static ContentSdkBaseImgoHttpParams a(ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams) {
        com.mgtv.ssp.bean.config.a aVarC = com.mgtv.ssp.auth.b.a().c();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        contentSdkBaseImgoHttpParams.put(TrackingKey.TS, Long.valueOf(jCurrentTimeMillis));
        if (aVarC != null) {
            contentSdkBaseImgoHttpParams.put("sign", a(aVarC.b(), aVarC.c(), jCurrentTimeMillis));
        }
        return contentSdkBaseImgoHttpParams;
    }

    public static ContentSdkBaseImgoHttpParams a(com.mgtv.ssp.bean.config.a aVar) {
        ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = new ContentSdkBaseImgoHttpParams();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        contentSdkBaseImgoHttpParams.put(TrackingKey.TS, Long.valueOf(jCurrentTimeMillis));
        if (aVar != null) {
            contentSdkBaseImgoHttpParams.put("sign", a(aVar.b(), aVar.c(), jCurrentTimeMillis));
        }
        return contentSdkBaseImgoHttpParams;
    }

    public static String a(String str, String str2, long j) {
        return s.a(com.hunantv.imgo.util.b.t() + "|" + str + "|" + j + "|" + str2);
    }
}
