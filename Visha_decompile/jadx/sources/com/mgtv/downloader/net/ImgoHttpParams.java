package com.mgtv.downloader.net;

import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.b.a;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.b;
import com.lzy.okgo.model.HttpHeaders;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.downloader.util.e;
import com.mgtv.task.http.HttpParams;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class ImgoHttpParams extends HttpParams {
    public ImgoHttpParams() {
        String strP = b.p();
        HttpParams.Type type = HttpParams.Type.BODY;
        put("device", strP, type);
        put("osVersion", b.q(), type);
        put("appVersion", b.e(), type);
        put("ticket", b.l(), type);
        put("userId", String.valueOf(b.m()), type);
        put(DownloadFacadeEnum.USER_MAC, b.t(), type);
        put("osType", ConstantDeviceInfo.APP_PLATFORM, type);
        put("channel", b.y(), type);
        put("uuid", b.n(), type);
        put("endType", "MgSsp", type);
        put("androidid", b.u(), type);
        put(DownloadFacadeEnum.USER_DID, b.t(), type);
        put("macaddress", b.v(), type);
        put("seqId", e.b(b.t() + Consts.DOT + System.currentTimeMillis()), type);
        put("version", b.e(), type);
        put("type", Integer.valueOf(a.c()), type);
        put("abroad", a.b(), type);
        put("uid", b.n(), type);
        put("version", "5.2", type);
        String strC = PreferencesUtil.c("network_sessionId", null);
        if (strC != null) {
            put(HttpHeaders.HEAD_KEY_COOKIE, strC, HttpParams.Type.HEADER);
        }
    }
}
