package com.mgtv.thirdsdk.config;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.util.PreferencesUtil;
import com.mgtv.json.JsonInterface;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;

public class ConfigManager {
    public static ConfigManager a;
    public Context b;
    private int c = 0;

    public static class GUID implements JsonInterface {
        public String data;
        public int status;
    }

    private ConfigManager(Context context) {
        this.b = context;
    }

    public static int b(ConfigManager configManager) {
        int i = configManager.c;
        configManager.c = i + 1;
        return i;
    }

    public void c() {
        if (TextUtils.isEmpty(com.hunantv.imgo.util.b.K())) {
            m mVar = new m(this.b);
            String strM = com.hunantv.imgo.net.b.m();
            HttpParams httpParams = new HttpParams();
            httpParams.put(CommonUrlParts.DEVICE_ID, com.hunantv.imgo.util.b.t());
            mVar.a(true).a(strM, httpParams, new com.mgtv.task.http.c<GUID>() {
                @Override
                public void b(GUID guid) {
                }

                @Override
                public void a(GUID guid) {
                    if (guid != null) {
                        PreferencesUtil.a("recommend_guid", guid.data);
                    }
                }
            });
        }
    }

    public static void b() {
        ConfigData configData;
        try {
            String strC = PreferencesUtil.c("PRE_ConfigData", "");
            if (TextUtils.isEmpty(strC) || (configData = (ConfigData) new Gson().fromJson(strC, ConfigData.class)) == null) {
                return;
            }
            a(configData);
        } catch (Throwable th) {
            th.printStackTrace();
            System.out.println("init cdata error  " + th.getStackTrace());
        }
    }

    public static ConfigManager a(Context context) {
        if (a == null) {
            a = new ConfigManager(context);
        }
        return a;
    }

    public void a() {
        String strO;
        m mVar = new m(this.b);
        PostData postData = new PostData();
        postData.osType = ConstantDeviceInfo.APP_PLATFORM;
        postData.versionCode = com.hunantv.imgo.util.b.i();
        postData.device = com.hunantv.imgo.util.b.p();
        postData.osVersion = com.hunantv.imgo.util.b.q();
        postData.channel = com.hunantv.imgo.util.b.x();
        postData.appVersion = com.hunantv.imgo.util.b.e();
        postData.mac = com.hunantv.imgo.util.b.t();
        postData.cpuinfo = com.hunantv.imgo.util.b.I();
        postData.imgoplayerVersion = ImgoPlayerView.getVersion();
        postData.chipMf = com.hunantv.imgo.util.b.E();
        HttpParams httpParamsPut = new ImgoHttpParams("post", "getConfig").put("args", com.mgtv.json.a.a(postData, (Class<? extends PostData>) PostData.class), HttpParams.Type.BODY);
        if (this.c == 0) {
            strO = com.hunantv.imgo.net.b.n();
        } else {
            strO = com.hunantv.imgo.net.b.o();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("args");
        mVar.a(arrayList).a(strO, httpParamsPut, new ImgoHttpCallBack<ConfigData>() {
            private void c(ConfigData configData) {
                ConfigManager.a(configData);
            }

            @Override
            public void b(ConfigData configData) {
                c(configData);
            }

            @Override
            public void a(int i, int i2, String str, Throwable th) {
                if (th != null) {
                    th.printStackTrace();
                }
                if (ConfigManager.this.c == 0) {
                    ConfigManager.b(ConfigManager.this);
                    ConfigManager.this.a();
                }
            }

            @Override
            public void a(ConfigData configData) {
                c(configData);
            }

            @Override
            public ConfigData b(HttpResponseObject httpResponseObject) throws Exception {
                if (httpResponseObject != null) {
                    ConfigManager.this.a("PRE_ConfigData", httpResponseObject.data);
                }
                return (ConfigData) super.b(httpResponseObject);
            }
        });
    }

    public void a(String str, JsonElement jsonElement) {
        try {
            if (jsonElement instanceof JsonObject) {
                PreferencesUtil.a(str, jsonElement.toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(ConfigData configData) {
        if (configData == null) {
            return;
        }
        com.mgtv.task.http.retry.a.a(configData.netRetry);
        com.mgtv.task.http.host.a.a(configData.n_netRetry);
    }
}
