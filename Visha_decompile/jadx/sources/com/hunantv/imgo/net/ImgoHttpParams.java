package com.hunantv.imgo.net;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.util.PreferencesUtil;
import com.lzy.okgo.model.HttpHeaders;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.task.http.HttpParams;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class ImgoHttpParams extends HttpParams {
    private static final String EndType = "MgSsp";

    public ImgoHttpParams() {
        put("device", com.hunantv.imgo.util.b.p());
        put("osVersion", com.hunantv.imgo.util.b.q());
        put("appVersion", com.hunantv.imgo.util.b.e());
        put("ticket", com.hunantv.imgo.util.b.l());
        put("userId", String.valueOf(com.hunantv.imgo.util.b.m()));
        put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        put("osType", ConstantDeviceInfo.APP_PLATFORM);
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.x())) {
            put("channel", com.hunantv.imgo.util.b.x());
        }
        put("uuid", com.hunantv.imgo.util.b.n());
        put("endType", EndType);
        put("macaddress", com.hunantv.imgo.util.b.v());
        put("seqId", com.hunantv.imgo.util.b.t() + Consts.DOT + System.currentTimeMillis());
        put("version", com.hunantv.imgo.util.b.e());
        put("type", Integer.valueOf(com.hunantv.imgo.b.a.c()));
        put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
        put("src", com.hunantv.imgo.util.b.M());
        put("uid", com.hunantv.imgo.util.b.n());
        put("version", "5.2");
        String strC = PreferencesUtil.c("network_sessionId", null);
        if (strC != null) {
            put(HttpHeaders.HEAD_KEY_COOKIE, strC);
        }
        put("phonetype", com.hunantv.imgo.util.b.p());
    }

    public ImgoHttpParams(String str) {
        String strP = com.hunantv.imgo.util.b.p();
        HttpParams.Type type = HttpParams.Type.BODY;
        put("device", strP, type);
        put("osVersion", com.hunantv.imgo.util.b.q(), type);
        put("appVersion", com.hunantv.imgo.util.b.e(), type);
        put("ticket", com.hunantv.imgo.util.b.l(), type);
        put("userId", String.valueOf(com.hunantv.imgo.util.b.m()), type);
        put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t(), type);
        put("osType", ConstantDeviceInfo.APP_PLATFORM, type);
        put("channel", com.hunantv.imgo.util.b.x(), type);
        put("uuid", com.hunantv.imgo.util.b.n(), type);
        put("endType", EndType, type);
        put("macaddress", com.hunantv.imgo.util.b.v(), type);
        put("seqId", com.hunantv.imgo.util.b.t() + Consts.DOT + System.currentTimeMillis(), type);
        put("version", com.hunantv.imgo.util.b.e(), type);
        put("type", Integer.valueOf(com.hunantv.imgo.b.a.c()), type);
        put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()), type);
        put("src", com.hunantv.imgo.util.b.M(), type);
        put("uid", com.hunantv.imgo.util.b.n(), type);
        put("version", "5.2", type);
        String strC = PreferencesUtil.c("network_sessionId", null);
        if (strC != null) {
            put(HttpHeaders.HEAD_KEY_COOKIE, strC, type);
        }
        put("phonetype", com.hunantv.imgo.util.b.p(), type);
        put("testversion", com.hunantv.imgo.util.b.P(), type);
    }

    public ImgoHttpParams(String str, String str2) {
        put("device", com.hunantv.imgo.util.b.p());
        put("osVersion", com.hunantv.imgo.util.b.q());
        put("appVersion", com.hunantv.imgo.util.b.e());
        put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        put("osType", ConstantDeviceInfo.APP_PLATFORM);
        put("channel", com.hunantv.imgo.util.b.x());
        put("uuid", com.hunantv.imgo.util.b.n());
        put("endType", EndType);
        put("macaddress", com.hunantv.imgo.util.b.v());
        put("seqId", com.hunantv.imgo.util.b.t() + Consts.DOT + System.currentTimeMillis());
        put("version", com.hunantv.imgo.util.b.e());
        put("type", Integer.valueOf(com.hunantv.imgo.b.a.c()));
        put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
        put("src", com.hunantv.imgo.util.b.M());
        put("uid", com.hunantv.imgo.util.b.n());
        put("version", "5.2");
        put("phonetype", com.hunantv.imgo.util.b.p());
    }

    public ImgoHttpParams(boolean z) {
        put("device", com.hunantv.imgo.util.b.p());
        put("osVersion", com.hunantv.imgo.util.b.q());
        put("appVersion", com.hunantv.imgo.util.b.e());
        put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        put("osType", ConstantDeviceInfo.APP_PLATFORM);
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.x())) {
            put("channel", com.hunantv.imgo.util.b.x());
        }
        put("endType", EndType);
        put("seqId", com.hunantv.imgo.util.b.t() + Consts.DOT + System.currentTimeMillis());
        put("type", Integer.valueOf(com.hunantv.imgo.b.a.c()));
        put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
        put("src", com.hunantv.imgo.util.b.M());
        String strC = PreferencesUtil.c("network_sessionId", null);
        if (strC != null) {
            put(HttpHeaders.HEAD_KEY_COOKIE, strC);
        }
        put("phonetype", com.hunantv.imgo.util.b.p());
    }
}
