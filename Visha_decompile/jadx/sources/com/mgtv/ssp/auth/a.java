package com.mgtv.ssp.auth;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.AacUtil;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.a.h;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.p;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgtv.ssp.MgSspInitCallback;
import com.mgtv.ssp.apkDownload.d;
import com.mgtv.ssp.bean.InitBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.g;
import com.mgtv.ssp.module.ModuleInterface;
import com.mgtv.ssp.module.ModuleManager;
import com.mgtv.ssp.net.ContentSdkBaseImgoHttpParams;
import com.mgtv.ssp.utils.language.c;
import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.config.ConfigManager;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.transsion.push.PushConstants;
import java.io.IOException;
import java.util.HashMap;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class a implements ModuleInterface {
    private static boolean a;
    private static int b;

    public static void b(Context context) {
        e.b(ModuleManager.KEY_INIT, "initConfig", true);
        ConfigManager.a(context).a();
        ConfigManager.a(context).c();
        com.mgtv.thirdsdk.config.b.a(context).a();
    }

    public static void c(Context context) throws Throwable {
        c.a().a(context);
        e.b(ModuleManager.KEY_INIT, "initArea", true);
    }

    public static void d(Context context) {
        e.b(ModuleManager.KEY_INIT, "initReport", true);
        com.mgtv.data.aphone.a.a.a().a(context);
        VideoSDKReport.a().t();
        com.mgtv.data.aphone.a.a.a().a(com.hunantv.imgo.util.b.K(), h.e(), com.hunantv.imgo.util.b.x(), "", "", PreferencesUtil.c("PREF_GPS_MSG", ""), "0");
    }

    private static void e(Context context) {
        e.b(ModuleManager.KEY_INIT, "initMgmi", true);
        if (context instanceof Application) {
            MGTVAdFactory.getInstance().init((Application) context, com.hunantv.imgo.util.b.x(), MgtvPlayerConstants.MGSDK_PPID);
        }
    }

    @Override
    public Object getModuleData(String str, String str2) {
        System.out.println("Module getModuleData ");
        if (!ModuleManager.KEY_INIT.equals(str)) {
            return null;
        }
        if (b.a().b() != 0) {
            a();
        }
        return Boolean.valueOf(b.a().b() == 0);
    }

    @Override
    public void noticeModule(int i, String... strArr) {
        try {
            VideoSDKReport.a().a(strArr[0], strArr[1], "", strArr[2], strArr[3]);
        } catch (Throwable unused) {
        }
    }

    public void b() {
        try {
            PreferencesUtil.a("temp_offline_type", "");
        } catch (Throwable unused) {
        }
    }

    public void a(final Context context, String str, final com.mgtv.ssp.bean.config.a aVar, final MgSspInitCallback mgSspInitCallback) {
        String strA;
        if (context == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ModuleManager.getInst().setModuleSsp(this);
        a(context, aVar);
        m mVar = new m(context);
        b.a().a(aVar);
        final ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParamsA = com.mgtv.ssp.net.a.a(aVar);
        contentSdkBaseImgoHttpParamsA.put(PushConstants.PROVIDER_FIELD_PKG, context.getPackageName());
        contentSdkBaseImgoHttpParamsA.put("mid", aVar.b());
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.aj())) {
            contentSdkBaseImgoHttpParamsA.put("paySupport", com.hunantv.imgo.util.b.aj());
        }
        if (TextUtils.isEmpty(str)) {
            b = 0;
            strA = com.mgtv.ssp.net.a.a(1);
        } else {
            strA = str;
        }
        final String str2 = strA;
        mVar.a(true).b(10000).a(strA, contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<InitBean>() {
            @Override
            public void b(InitBean initBean) {
            }

            @Override
            public void a(InitBean initBean) {
                MgSspInitCallback mgSspInitCallback2;
                if (initBean != null) {
                    a.this.a(context, initBean, mgSspInitCallback, jCurrentTimeMillis, contentSdkBaseImgoHttpParamsA);
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            a.b(context);
                            a.a(context);
                        }
                    }).start();
                    return;
                }
                if (!a.this.a(context, aVar, mgSspInitCallback) && (mgSspInitCallback2 = mgSspInitCallback) != null) {
                    mgSspInitCallback2.onResult(100002, "http vast format error");
                }
                ErrorData errorData = new ErrorData();
                errorData.setUrl(str2);
                errorData.setCode("100002");
                ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = contentSdkBaseImgoHttpParamsA;
                errorData.setParam(contentSdkBaseImgoHttpParams == null ? "" : contentSdkBaseImgoHttpParams.buildParameter());
                errorData.setMsg("http vast format error");
                a.this.a(jCurrentTimeMillis, false, errorData);
                System.out.println("init http vast format erro");
                a.this.b();
            }

            @Override
            public void a(@Nullable InitBean initBean, int i, int i2, @Nullable String str3, @Nullable Throwable th) {
                MgSspInitCallback mgSspInitCallback2;
                super.a(initBean, i, i2, str3, th);
                if (!a.this.a(context, aVar, mgSspInitCallback) && (mgSspInitCallback2 = mgSspInitCallback) != null) {
                    mgSspInitCallback2.onResult(110000, "init fail");
                }
                System.out.println("init http fail");
                ErrorData errorData = new ErrorData();
                errorData.setUrl(str2);
                errorData.setCode(i2 + "");
                ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = contentSdkBaseImgoHttpParamsA;
                errorData.setParam(contentSdkBaseImgoHttpParams != null ? contentSdkBaseImgoHttpParams.buildParameter() : "");
                if (th != null) {
                    errorData.setMsg(th.getMessage());
                }
                if (p.a(context).booleanValue()) {
                    a.this.b();
                }
                a.this.a(jCurrentTimeMillis, false, errorData);
            }

            @Override
            public InitBean b(HttpResponseObject httpResponseObject) throws Exception {
                if (httpResponseObject != null) {
                    a.this.a(httpResponseObject.data);
                }
                return (InitBean) super.b(httpResponseObject);
            }
        });
    }

    public boolean a(Context context, com.mgtv.ssp.bean.config.a aVar, MgSspInitCallback mgSspInitCallback) {
        if (b == 0 && PreferencesUtil.a("SDKCONFIG_SWITCH", 0) == 1) {
            b++;
            String strL = com.hunantv.imgo.net.a.l();
            if (!TextUtils.isEmpty(strL)) {
                a(context, strL + "/api/sdkConfig", aVar, mgSspInitCallback);
                return true;
            }
        }
        return false;
    }

    public void a(Context context, InitBean initBean, MgSspInitCallback mgSspInitCallback, long j, ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams) {
        if (mgSspInitCallback != null) {
            boolean z = initBean != null;
            try {
                SspSdkConfig sspSdkConfig = initBean.data;
                String strBuildParameter = "";
                if (z & (sspSdkConfig != null)) {
                    if (sspSdkConfig.getStatus() == 0) {
                        b.a().a(0);
                        b.a().a(initBean.data);
                        com.hunantv.imgo.util.b.h(initBean.data.getCxid());
                        com.hunantv.imgo.util.b.k(initBean.data.getRtype());
                        com.hunantv.imgo.util.b.c(initBean.data.getRender() == 1);
                        com.hunantv.imgo.util.b.d(initBean.data.getSupportVip() == 1);
                        com.hunantv.imgo.util.b.s(initBean.data.getVipVideoHint());
                        com.hunantv.imgo.util.b.g(initBean.data.getVodSoundOff() == 1);
                        com.hunantv.imgo.util.b.h(initBean.data.getVodInfMerge() == 1);
                        com.hunantv.imgo.util.b.j(initBean.data.getCardInfMerge() == 1);
                        com.hunantv.imgo.util.b.i(initBean.data.getImmersionInfMerge() == 1);
                        com.hunantv.imgo.util.b.k(initBean.data.getDetailInfMerge() == 1);
                        if (b.a().c() != null) {
                            com.hunantv.imgo.util.b.p(b.a().c().b());
                        }
                        try {
                            com.hunantv.imgo.util.b.r(String.valueOf(initBean.data.getLmFrontPid()));
                        } catch (Throwable unused) {
                        }
                        com.mgtv.thirdsdk.config.c.a(initBean.data.getTokenA(), initBean.data.getPdata());
                        com.mgtv.thirdsdk.playcore.utils.c.a(initBean.data.getSaveBreakPoint() == 1);
                        PreferencesUtil.putInt("SDKCONFIG_SWITCH", initBean.data.getApiRetry());
                        if (initBean.data.getApiRetry() == 1 && !TextUtils.isEmpty(initBean.data.getApiRetryDomain())) {
                            PreferencesUtil.a("SDKCONFIG_RETRY_DOMAIN", initBean.data.getApiRetryDomain());
                        }
                        mgSspInitCallback.onResult(0, "success");
                        a(j, true, (ErrorData) null);
                        d.a().b();
                        com.mgtv.ssp.e.a(initBean.data.getQmSdk());
                        com.mgtv.ssp.e.a(context);
                        com.hunantv.imgo.net.a.e = initBean.data.getGlobalConf();
                        com.mgtv.ssp.utils.e.c(initBean.data.getDownloadServerConfig());
                        com.mgtv.ssp.utils.e.a(initBean.data.getMaxDownloadTaskNum());
                        com.mgtv.ssp.utils.e.a(initBean.data.getDownloadUrlHls());
                        com.mgtv.ssp.utils.e.b(initBean.data.getDownloadUrlMp4());
                        com.mgtv.ssp.utils.e.b(initBean.data.getMaxOfflineDownloadSpeedKB());
                        MGTVAdFactory.getInstance().setSupportVip(com.hunantv.imgo.util.b.Z());
                        return;
                    }
                    mgSspInitCallback.onResult(initBean.data.getStatus() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "");
                    ErrorData errorData = new ErrorData();
                    errorData.setUrl(com.mgtv.ssp.net.a.a(1));
                    errorData.setCode(initBean.data.getStatus() + "");
                    errorData.setMsg("code is wrong");
                    if (contentSdkBaseImgoHttpParams != null) {
                        strBuildParameter = contentSdkBaseImgoHttpParams.buildParameter();
                    }
                    errorData.setParam(strBuildParameter);
                    a(j, false, errorData);
                    System.out.println("init initBean.data.getStatus() = " + initBean.data.getStatus());
                    b();
                    return;
                }
                mgSspInitCallback.onResult(100003, "");
                ErrorData errorData2 = new ErrorData();
                errorData2.setUrl(com.mgtv.ssp.net.a.a(1));
                errorData2.setCode("100003");
                errorData2.setMsg("data is null");
                if (contentSdkBaseImgoHttpParams != null) {
                    strBuildParameter = contentSdkBaseImgoHttpParams.buildParameter();
                }
                errorData2.setParam(strBuildParameter);
                a(j, false, errorData2);
                System.out.println("init data is null ");
            } catch (Exception e) {
                e.printStackTrace();
                mgSspInitCallback.onResult(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "data error");
                System.out.println("init data error  " + e.getStackTrace());
            }
        }
    }

    public void a(Context context, com.mgtv.ssp.bean.config.a aVar) throws Throwable {
        if (a) {
            return;
        }
        c(context);
        com.hunantv.imgo.util.b.i(aVar.c());
        com.hunantv.imgo.util.b.j(aVar.d());
        com.hunantv.imgo.util.b.c(g.a().b());
        com.hunantv.imgo.util.b.a("android_videounion");
        com.hunantv.imgo.util.b.b(g.a().b());
        com.hunantv.imgo.util.b.d("imgotv-aplsdk-" + com.hunantv.imgo.util.b.e());
        MGTVAdFactory.getInstance().setUuid(com.hunantv.imgo.util.b.n());
        MGTVAdFactory.getInstance().setOaid(com.hunantv.imgo.util.b.U());
        MGTVAdFactory.getInstance().setDid(com.hunantv.imgo.util.b.t());
        MGTVAdFactory.getInstance().setAreaCode(com.hunantv.imgo.b.a.a());
        MGTVAdFactory.getInstance().setIsOverSea(com.hunantv.imgo.util.b.f() ? 1 : 0);
        MgtvPlayerConstants.MGSDK_PPID = aVar.b();
        a(context, com.mgtv.thirdsdk.config.a.d());
        e(context);
        d(context);
        e.b(ModuleManager.KEY_INIT, "version:" + com.hunantv.imgo.util.b.e(), true);
        a = true;
    }

    public static void a(Context context) {
        e.b(ModuleManager.KEY_INIT, "configPlayer", true);
        com.mgtv.thirdsdk.config.c.a(context).a();
    }

    private static void a(Context context, final boolean z) {
        e.b(ModuleManager.KEY_INIT, "initNetworkModule", true);
        com.mgtv.task.http.d.a aVar = new com.mgtv.task.http.d.a();
        HashMap<String, String> map = new HashMap<>();
        map.put("_support", "10100001");
        aVar.a(map);
        aVar.a(z);
        aVar.a(new Interceptor() {
            @Override
            public Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                if (z) {
                    Request.Builder builderNewBuilder = request.newBuilder();
                    if ("cp.bz.mgtv.com".equals(request.url().host())) {
                        builderNewBuilder.addHeader("Connection", "Keep-Alive");
                    } else {
                        builderNewBuilder.addHeader("Connection", "Close");
                    }
                }
                String strG = com.hunantv.imgo.util.b.G();
                if (TextUtils.isEmpty(strG) || !TextUtils.isEmpty(request.header("User-Agent"))) {
                    return chain.proceed(request);
                }
                Request.Builder builderNewBuilder2 = request.newBuilder();
                builderNewBuilder2.addHeader("User-Agent", strG);
                return chain.proceed(builderNewBuilder2.build());
            }
        });
        com.mgtv.task.http.d.a(context, aVar);
    }

    public void a(long j, boolean z, ErrorData errorData) {
        VideoSDKReport.a().a(j, z, errorData);
    }

    public void a(JsonElement jsonElement) {
        try {
            if (jsonElement instanceof JsonObject) {
                PreferencesUtil.a("temp_offline_type", jsonElement.toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static void a() {
        InitBean initBean;
        SspSdkConfig sspSdkConfig;
        try {
            String strC = PreferencesUtil.c("temp_offline_type", "");
            if (TextUtils.isEmpty(strC) || (initBean = (InitBean) new Gson().fromJson(strC, InitBean.class)) == null || (sspSdkConfig = initBean.data) == null) {
                return;
            }
            if (sspSdkConfig.getStatus() == 0) {
                b.a().a(0);
                b.a().a(initBean.data);
                com.hunantv.imgo.util.b.h(initBean.data.getCxid());
                com.hunantv.imgo.util.b.k(initBean.data.getRtype());
                com.hunantv.imgo.util.b.c(initBean.data.getRender() == 1);
                com.hunantv.imgo.util.b.d(initBean.data.getSupportVip() == 1);
                com.hunantv.imgo.util.b.s(initBean.data.getVipVideoHint());
                com.hunantv.imgo.util.b.g(initBean.data.getVodSoundOff() == 1);
                com.hunantv.imgo.util.b.h(initBean.data.getVodInfMerge() == 1);
                com.hunantv.imgo.util.b.j(initBean.data.getCardInfMerge() == 1);
                com.hunantv.imgo.util.b.i(initBean.data.getImmersionInfMerge() == 1);
                com.hunantv.imgo.util.b.k(initBean.data.getDetailInfMerge() == 1);
                if (b.a().c() != null) {
                    com.hunantv.imgo.util.b.p(b.a().c().b());
                }
                try {
                    com.hunantv.imgo.util.b.r(String.valueOf(initBean.data.getLmFrontPid()));
                } catch (Throwable unused) {
                }
                ConfigManager.b();
                com.mgtv.thirdsdk.config.c.b();
                com.mgtv.thirdsdk.config.c.a(initBean.data.getTokenA(), initBean.data.getPdata());
                d.a().b();
                com.mgtv.ssp.e.a(initBean.data.getQmSdk());
                com.mgtv.ssp.e.a(BaseApplication.getContext());
            }
            com.mgtv.thirdsdk.config.c.a(initBean.data.getTokenA(), initBean.data.getPdata());
            d.a().b();
            com.mgtv.ssp.e.a(initBean.data.getQmSdk());
            com.mgtv.ssp.e.a(BaseApplication.getContext());
        } catch (Throwable th) {
            th.printStackTrace();
            System.out.println("init cdata error  " + th.getStackTrace());
        }
    }
}
