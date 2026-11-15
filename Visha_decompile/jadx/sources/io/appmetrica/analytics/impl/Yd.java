package io.appmetrica.analytics.impl;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.HashMap;

public final class Yd {
    public final HashMap a;

    public Yd() {
        HashMap map = new HashMap();
        this.a = map;
        map.put("google_aid", GslbInterceptor.HEADER_KEY_GSLB);
        map.put("huawei_oaid", CmcdData.STREAMING_FORMAT_HLS);
        map.put("sim_info", "si");
        map.put("features_collecting", "fc");
        map.put("permissions_collecting", "pc");
        map.put("retry_policy", "rp");
        map.put("cache_control", "cc");
        map.put("auto_inapp_collecting", "aic");
        map.put("attribution", "at");
        map.put("startup_update", CmcdConfiguration.KEY_STARTUP);
        map.put("ssl_pinning", "sp");
        map.put("external_attribution", "exta");
    }

    public final String a(String str) {
        return this.a.containsKey(str) ? (String) this.a.get(str) : str;
    }
}
