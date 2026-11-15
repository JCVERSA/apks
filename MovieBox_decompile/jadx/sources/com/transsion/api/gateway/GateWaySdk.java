package com.transsion.api.gateway;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import com.transsion.api.gateway.config.WorkMode;
import com.transsion.api.gateway.interceptor.GatewayInterceptor;
import com.transsion.api.gateway.utils.ContextUtils;
import com.transsion.api.gateway.utils.GatewayUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.api.gateway.utils.ThreadManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.OkHttpClient;

public class GateWaySdk {

    public static boolean f41345a;

    public static OkHttpClient f41346b;

    public static boolean f41347c;

    public static CopyOnWriteArrayList<String> f41348d = new CopyOnWriteArrayList<>();

    public static CopyOnWriteArrayList<String> f41349e = new CopyOnWriteArrayList<>();

    public static WorkMode f41350f = WorkMode.MODE_ONLINE;

    public static class a implements Runnable {

        public final Context f41351a;

        public final String f41352b;

        public a(Context context, String str) {
            this.f41351a = context;
            this.f41352b = str;
        }

        @Override
        public void run() {
            SafeStringUtils.getInstance(this.f41351a).saveString(SafeStringUtils.SP_APPID, this.f41352b);
        }
    }

    public static void a(Context context) {
        if (!f41347c && isOkhttpIntegrated()) {
            f41347c = true;
            try {
                context.registerReceiver(new com.transsion.api.gateway.receiver.a(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } catch (Exception e10) {
                GatewayUtils.L.e("registerReceiver fail, e:" + e10.getMessage());
            }
        }
    }

    public static List<String> getActivateSigHosts() {
        return f41348d;
    }

    public static List<String> getActivateSigPaths() {
        return f41349e;
    }

    public static String getHost() {
        int iOrdinal = f41350f.ordinal();
        return (iOrdinal == 0 || iOrdinal == 1) ? "apigateway.tmctool.com" : "";
    }

    public static boolean getIsInited() {
        return f41345a;
    }

    public static OkHttpClient getOkHttpClient() {
        if (f41346b == null) {
            f41346b = new OkHttpClient().newBuilder().addInterceptor(new GatewayInterceptor()).build();
        }
        return f41346b;
    }

    public static String getSecret() {
        try {
            if (ContextUtils.getContext() == null) {
                return "";
            }
            ApplicationInfo applicationInfo = ContextUtils.getContext().getPackageManager().getApplicationInfo(ContextUtils.getContext().getPackageName(), 128);
            int iOrdinal = f41350f.ordinal();
            if (iOrdinal != 0) {
                return iOrdinal != 1 ? "" : applicationInfo.metaData.getString("gateway_secret_online");
            }
            return applicationInfo.metaData.getString("gateway_secret_test");
        } catch (Exception e10) {
            GatewayUtils.L.e(e10);
            return "";
        }
    }

    public static WorkMode getWorkMode() {
        return f41350f;
    }

    public static void init(Context context, String str, WorkMode workMode) {
        ContextUtils.init(context);
        a(context);
        f41350f = workMode;
        ThreadManager.executeInBackground(new a(context, str));
        ArrayList arrayList = new ArrayList();
        arrayList.add("/gateway/metric/add");
        arrayList.add("/gateway/sdk/v1/config");
        setActivateSignConfig(null, arrayList);
        f41345a = true;
    }

    public static boolean isOkhttpIntegrated() {
        try {
            OkHttpClient.Companion companion = OkHttpClient.INSTANCE;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void setActivateSignConfig(List<String> list, List<String> list2) {
        if (list != null && list.size() > 0) {
            f41348d.addAllAbsent(list);
        }
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        f41349e.addAllAbsent(list2);
    }

    public static void setOkHttpClient(OkHttpClient okHttpClient) {
        if (okHttpClient != null) {
            f41346b = okHttpClient;
        }
    }

    public static void init(Context context, String str) {
        ContextUtils.init(context);
        a(context);
        f41350f = WorkMode.MODE_ONLINE;
        f41345a = true;
    }
}
