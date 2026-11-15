package com.hunantv.imgo.net;

import com.mgtv.downloader.free.FreePhoneInfo;
import com.mgtv.task.http.HttpParams;

public class LiveHttpParams extends ImgoHttpParams {
    private static final int PLATFORM_TYPE = 10;

    public LiveHttpParams() {
        put("_support", "10100001");
        put("platform", (Number) 10);
        put("clientKey", "channelunion");
        put(FreePhoneInfo.KEY_DEVICEID, com.hunantv.imgo.util.b.t());
        put("uuid", com.hunantv.imgo.util.b.n());
        put("supportnoaddbody", "1", HttpParams.Type.BODY);
    }
}
