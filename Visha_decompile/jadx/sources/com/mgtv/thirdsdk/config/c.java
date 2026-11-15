package com.mgtv.thirdsdk.config;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.media.config.NetPlayConfigHelper;
import com.hunantv.media.global.MgtvPlayerGlobalConfig;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.playerconfig.VideoPlayerConfig;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class c {
    private static c a;
    private Context b;

    private c(Context context) {
        this.b = context;
    }

    public static void b() {
        VideoPlayerConfig videoPlayerConfig;
        try {
            String strC = PreferencesUtil.c("PLAYCONFIG_TYPE", "");
            if (TextUtils.isEmpty(strC) || (videoPlayerConfig = (VideoPlayerConfig) new Gson().fromJson(strC, VideoPlayerConfig.class)) == null) {
                return;
            }
            com.mgtv.thirdsdk.datareport.playerconfig.a.a(videoPlayerConfig);
            b(videoPlayerConfig);
            if (com.mgtv.thirdsdk.playcore.c.a.b()) {
                return;
            }
            com.mgtv.thirdsdk.playcore.c.a.a();
            com.mgtv.thirdsdk.playcore.c.a.c();
        } catch (Throwable th) {
            th.printStackTrace();
            System.out.println("init cdata error  " + th.getStackTrace());
        }
    }

    public static c a(Context context) {
        if (a == null) {
            a = new c(context);
        }
        return a;
    }

    public void a() {
        m mVar = new m(this.b);
        HttpParams httpParams = new HttpParams();
        httpParams.put(DownloadFacadeEnum.USER_MF, com.hunantv.imgo.util.b.s());
        httpParams.put(DownloadFacadeEnum.USER_MOD, NetPlayConfigHelper.getMod());
        httpParams.put("os", ConstantDeviceInfo.APP_PLATFORM);
        httpParams.put("sdk_version", Build.VERSION.SDK_INT + "");
        httpParams.put("appVersion", com.hunantv.imgo.util.b.b());
        httpParams.put("osVersion", com.hunantv.imgo.util.b.q());
        httpParams.put(DownloadFacadeEnum.USER_MAC, com.hunantv.imgo.util.b.t());
        httpParams.put("osType", com.hunantv.imgo.util.b.a());
        httpParams.put("userId", String.valueOf(com.hunantv.imgo.util.b.m()));
        httpParams.put("ticket", com.hunantv.imgo.util.b.l());
        httpParams.put("channel", com.hunantv.imgo.util.b.x());
        httpParams.put("terminal_code", (Number) 10);
        httpParams.put("apiVersion", NetPlayConfigHelper.getApiVersion());
        httpParams.put("cputy", NetPlayConfigHelper.getCputy());
        httpParams.put("omxcn", NetPlayConfigHelper.getOmxcn());
        httpParams.put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        httpParams.put("abroad", com.hunantv.imgo.util.b.f() ? "1" : "0");
        mVar.a(com.hunantv.imgo.net.b.p(), httpParams, new ImgoHttpCallBack<VideoPlayerConfig>() {
            @Override
            public void b(VideoPlayerConfig videoPlayerConfig) {
            }

            @Override
            public VideoPlayerConfig b(HttpResponseObject httpResponseObject) throws Exception {
                if (httpResponseObject != null) {
                    c.this.a(httpResponseObject.data);
                }
                return (VideoPlayerConfig) super.b(httpResponseObject);
            }

            @Override
            public void a(VideoPlayerConfig videoPlayerConfig) {
                com.mgtv.thirdsdk.datareport.playerconfig.a.a(videoPlayerConfig);
                c.b(videoPlayerConfig);
                if (com.mgtv.thirdsdk.playcore.c.a.b()) {
                    return;
                }
                com.mgtv.thirdsdk.playcore.c.a.a();
                com.mgtv.thirdsdk.playcore.c.a.c();
            }
        });
    }

    public static void b(VideoPlayerConfig videoPlayerConfig) {
        com.mgtv.thirdsdk.playcore.utils.c.a(videoPlayerConfig.render_type);
        com.mgtv.thirdsdk.playcore.utils.c.c(videoPlayerConfig.open_timeout);
        com.mgtv.thirdsdk.playcore.utils.c.d(videoPlayerConfig.rw_timeout);
        com.mgtv.thirdsdk.playcore.utils.c.e(videoPlayerConfig.buffer_timeout);
    }

    public void a(JsonElement jsonElement) {
        try {
            if (jsonElement instanceof JsonObject) {
                PreferencesUtil.a("PLAYCONFIG_TYPE", jsonElement.toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, String str2) {
        MgtvPlayerGlobalConfig.setValidToken(str, str2);
    }
}
