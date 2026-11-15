package com.wecloud.load.lib;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wecloud.load.lib.bean.CpuVariant;
import com.wecloud.load.lib.bean.SoConfigGroup;
import com.wecloud.load.lib.bean.SoLoadControlConfig;
import com.wecloud.load.lib.bean.SoZipInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

public final class DySoLoadManager {

    public static final DySoLoadManager f58570a = new DySoLoadManager();

    private static SoLoadControlConfig f58571b;

    public static final class a extends h.a {

        final o f58572a;

        final Context f58573b;

        a(o oVar, Context context) {
            this.f58572a = oVar;
            this.f58573b = context;
        }

        @Override
        public void R(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SO执行结果 - soName: ");
            sb2.append(str);
            sb2.append(", msg: ");
            sb2.append(str2);
            if (str == null || StringsKt.q0(str) || str2 == null || StringsKt.q0(str2)) {
                return;
            }
            DySoLoadManager dySoLoadManager = DySoLoadManager.f58570a;
            if (dySoLoadManager.e(str2)) {
                try {
                    String strOptString = new JSONObject(str2).optString(NotificationCompat.CATEGORY_EVENT);
                    dySoLoadManager.g(str, MapsKt.l(TuplesKt.a(EventConstants.KEY_ACTION, "so_result"), TuplesKt.a(NotificationCompat.CATEGORY_EVENT, strOptString), TuplesKt.a(NotificationCompat.CATEGORY_MESSAGE, str2)), strOptString);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override
        public void e(String str, int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SO初始化结果 - soName: ");
            sb2.append(str);
            sb2.append(", status: ");
            sb2.append(i10);
            if (str == null || StringsKt.q0(str)) {
                return;
            }
            DySoLoadManager.h(DySoLoadManager.f58570a, str, MapsKt.l(TuplesKt.a("so_name", str), TuplesKt.a(EventConstants.KEY_ACTION, "so_init"), TuplesKt.a(NotificationCompat.CATEGORY_STATUS, String.valueOf(i10))), null, 4, null);
        }

        @Override
        public void n0(int i10, int i11, int i12) {
            wf.a.C0922a.f(wf.a.f74274a, "SoLoadManagerExample", "所有ZIP包处理完成 - 总数: " + i10 + ", 总成功: " + i11 + ", 总失败: " + i12, false, 4, null);
        }

        @Override
        public void onError(int i10, String str) {
            wf.a.C0922a.l(wf.a.f74274a, "SoLoadManagerExample", "错误 - 错误码: " + i10 + ", 错误信息: " + str, false, 4, null);
            this.f58572a.k(this.f58573b);
        }

        @Override
        public void q0(int i10, int i11, int i12, List list, Map map) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ZIP包 groupIndex ");
            sb2.append(i10);
            sb2.append(" 加载完成 - 成功: ");
            sb2.append(i11);
            sb2.append(", 失败: ");
            sb2.append(i12);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    wf.a.C0922a.f(wf.a.f74274a, "SoLoadManagerExample", "成功加载: " + str, false, 4, null);
                }
            }
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = (String) entry.getKey();
                    String str3 = (String) entry.getValue();
                    wf.a.C0922a.l(wf.a.f74274a, "SoLoadManagerExample", "加载失败: " + str2 + ", 错误: " + str3, false, 4, null);
                }
            }
        }
    }

    private DySoLoadManager() {
    }

    public final void g(String str, Map map, String str2) {
        if (str2 == null || StringsKt.q0(str2)) {
            str2 = "load_so";
        }
        qi.h.f69682a.q(str, str2, map);
    }

    static void h(DySoLoadManager dySoLoadManager, String str, Map map, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        dySoLoadManager.g(str, map, str2);
    }

    public final void b(Context context, String jsonSoInfo) {
        Intrinsics.h(context, "context");
        Intrinsics.h(jsonSoInfo, "jsonSoInfo");
        SoLoadControlConfig soLoadControlConfigC = c(context);
        if (soLoadControlConfigC == null || !soLoadControlConfigC.getEnableService() || soLoadControlConfigC.getExitProcess()) {
            Boolean boolValueOf = soLoadControlConfigC != null ? Boolean.valueOf(soLoadControlConfigC.getEnableService()) : null;
            Boolean boolValueOf2 = soLoadControlConfigC != null ? Boolean.valueOf(soLoadControlConfigC.getEnableService()) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("未满足条件 控制配置controlConfig=");
            sb2.append(soLoadControlConfigC);
            sb2.append(" 控制开关=");
            sb2.append(boolValueOf);
            sb2.append(" 退出开关=");
            sb2.append(boolValueOf2);
            return;
        }
        o oVarA = o.f58629f.a();
        a aVar = new a(oVarA, context);
        List listF = f(jsonSoInfo);
        Log.w("SoLoadManagerExample", "解析后的SO配置数量: " + listF.size());
        SoDownloadRequest soDownloadRequest = new SoDownloadRequest(listF, f58571b);
        if (soDownloadRequest.isValid()) {
            oVarA.i(context, aVar, soDownloadRequest);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "SoLoadManagerExample", "solist 配置无效 为null或者缺失关键信息，不启动服务", false, 4, null);
        }
    }

    public final SoLoadControlConfig c(Context context) {
        Intrinsics.h(context, "context");
        try {
            String strL = tx.b.f72876a.b().l("so_load_control_config", null);
            if (strL != null) {
                wf.a.C0922a.f(wf.a.f74274a, "SoLoadManagerExample", "从 MMKV 读取配置: " + strL, false, 4, null);
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "SoLoadManagerExample", "MMKV 中不存在配置", false, 4, null);
            }
            SoLoadControlConfig soLoadControlConfig = (SoLoadControlConfig) new Gson().fromJson(strL, SoLoadControlConfig.class);
            f58571b = soLoadControlConfig;
            return soLoadControlConfig;
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SoLoadManagerExample", "从 MMKV 读取配置失败: " + e10.getMessage(), e10, false, 8, null);
            return null;
        }
    }

    public final String d() {
        String[] strArr = Build.SUPPORTED_ABIS;
        Intrinsics.e(strArr);
        for (String str : strArr) {
            Intrinsics.e(str);
            if (StringsKt.c0(str, "arm64-v8a", false, 2, null)) {
                return "v8a";
            }
        }
        for (String str2 : strArr) {
            Intrinsics.e(str2);
            if (StringsKt.c0(str2, "armeabi-v7a", false, 2, null)) {
                break;
            }
        }
        return "v7a";
    }

    public final boolean e(String str) {
        if (str == null || StringsKt.q0(str)) {
            return false;
        }
        try {
            new JSONObject(str);
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public final List f(String jsonString) {
        Intrinsics.h(jsonString, "jsonString");
        String strD = d();
        Log.w("SoLoadManagerExample", "当前设备CPU架构: " + strD);
        try {
            Object objFromJson = new Gson().fromJson(jsonString, new TypeToken<List<? extends SoConfigGroup>>() {
            }.getType());
            Intrinsics.g(objFromJson, "fromJson(...)");
            ArrayList arrayList = new ArrayList();
            for (SoConfigGroup soConfigGroup : (List) objFromJson) {
                CpuVariant cpuVariant = soConfigGroup.getVariants().get(strD);
                SoZipInfo soZipInfo = cpuVariant != null ? new SoZipInfo(cpuVariant.getZip_url(), cpuVariant.getMd5(), soConfigGroup.getSo_names(), soConfigGroup.getMethod_name(), soConfigGroup.getInput()) : null;
                if (soZipInfo != null) {
                    arrayList.add(soZipInfo);
                }
            }
            return arrayList;
        } catch (Exception e10) {
            Log.e("SoLoadManagerExample", "解析JSON配置失败: " + e10.getMessage());
            return CollectionsKt.l();
        }
    }

    public final void i(Context context, String str) {
        Intrinsics.h(context, "context");
        if (str != null) {
            try {
                if (!StringsKt.q0(str)) {
                    tx.b.f72876a.b().v("so_load_control_config", str);
                    SoLoadControlConfig soLoadControlConfig = (SoLoadControlConfig) new Gson().fromJson(str, SoLoadControlConfig.class);
                    f58571b = soLoadControlConfig;
                    if (soLoadControlConfig != null && soLoadControlConfig.getExitProcess()) {
                        o.f58629f.a().k(context);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("已保存配置到 MMKV: ");
                        sb2.append(str);
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("已保存配置到 MMKV: ");
                    sb3.append(str);
                    return;
                }
            } catch (Exception e10) {
                wf.a.C0922a.k(wf.a.f74274a, "SoLoadManagerExample", "保存配置到 MMKV 失败: " + e10.getMessage(), e10, false, 8, null);
                return;
            }
        }
        f58571b = null;
        tx.b.f72876a.b().M("so_load_control_config");
    }
}
