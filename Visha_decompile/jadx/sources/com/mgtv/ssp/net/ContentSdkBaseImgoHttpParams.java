package com.mgtv.ssp.net;

import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.u;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.ssp.g;
import com.mgtv.task.http.HttpParams;
import com.transsion.push.PushConstants;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class ContentSdkBaseImgoHttpParams extends HttpParams {
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final int TIMEOUT = 10000;

    public ContentSdkBaseImgoHttpParams() {
        put(DownloadFacadeEnum.USER_DID, b.t());
        put("device", ConstantDeviceInfo.APP_PLATFORM);
        put("osType", ConstantDeviceInfo.APP_PLATFORM);
        put("osVersion", b.q());
        put("appVersion", b.e());
        put(DownloadFacadeEnum.USER_MOD, b.p());
        put(DownloadFacadeEnum.USER_MF, b.s());
        put(PushConstants.PROVIDER_FIELD_SDK_VERSION, g.a().b());
        put(TrackingKey.TS, Long.valueOf(System.currentTimeMillis() / 1000));
        put("traceId", u.a());
        put("oversea", Integer.valueOf(b.f() ? 1 : 0));
        put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
    }
}
