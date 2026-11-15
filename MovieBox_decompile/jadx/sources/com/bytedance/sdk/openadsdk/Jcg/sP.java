package com.bytedance.sdk.openadsdk.Jcg;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.GeckoHubImp;
import com.bykv.vk.openvk.preload.geckox.IThreadPoolCallback;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.Zq.TKC;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

public class sP {
    private static final String[] Sj = {"gecko16-normal-useast5.tiktokv.us"};

    public interface Sj {
        void Sj();
    }

    private static class C0221sP {
        private static final sP Sj = new sP();
    }

    private static String EjP() {
        String[] strArrMuB = dNu.EjP().MuB();
        if (strArrMuB == null) {
            strArrMuB = Sj;
        }
        String str = strArrMuB[new SecureRandom().nextInt(strArrMuB.length)];
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        SecureRandom secureRandom = new SecureRandom();
        String[] strArr = Sj;
        return strArr[secureRandom.nextInt(strArr.length)];
    }

    public static void TKC() {
        try {
            GeckoHubImp.setThreadPoolExecutorCallback(new IThreadPoolCallback() {
                @Override
                public ExecutorService getThreadPool() {
                    return JcM.HiB();
                }
            });
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "setThreadPoolExecutor error", th2);
        }
    }

    public ILoader sP() {
        try {
            return GeckoHubImp.inst(dNu.Sj()).getGeckoResLoader();
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "getGeckoResLoader error", th2);
            return null;
        }
    }

    private sP() {
        try {
            GeckoHubImp.inst(dNu.Sj());
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "GeckoHubImp init error", th2);
        }
    }

    public static sP Sj() {
        return C0221sP.Sj;
    }

    public static void sP(Map<String, com.bytedance.sdk.openadsdk.core.model.sU> map, JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject == null) {
                jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false);
                jSONObject2.put(NotificationCompat.CATEGORY_MESSAGE, str);
                jSONObject2.put("code", 1);
                jSONObject = jSONObject2;
            }
            Iterator<com.bytedance.sdk.openadsdk.core.model.sU> it = map.values().iterator();
            while (it.hasNext()) {
                TKC.Sj(it.next(), jSONObject);
            }
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "upLoadStateEvent error", th2);
        }
    }

    public void Sj(Map<String, com.bytedance.sdk.openadsdk.core.model.sU> map) {
        Sj(map, (Sj) null, false);
    }

    public void Sj(final Map<String, com.bytedance.sdk.openadsdk.core.model.sU> map, final Sj sj2, boolean z10) {
        try {
            String strSj = aa.Sj(dNu.Sj());
            if (TextUtils.isEmpty(strSj)) {
                return;
            }
            for (com.bytedance.sdk.openadsdk.core.model.sU sUVar : map.values()) {
                if (sUVar != null) {
                    if (!z10 && sUVar.FcE()) {
                        map.remove(sUVar.eMB());
                    } else {
                        TKC.sP(sUVar);
                    }
                }
            }
            if (map.isEmpty()) {
                return;
            }
            GeckoHubImp.setRandomHost(EjP());
            GeckoHubImp.inst(dNu.Sj()).preload(strSj, new IStatisticMonitor() {
                @Override
                public void upload(String str, JSONObject jSONObject) {
                    if ("geckosdk_update_stats".equals(str)) {
                        com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = (com.bytedance.sdk.openadsdk.core.model.sU) map.get(jSONObject.optString("channel"));
                        if (sUVar2 != null) {
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(str, jSONObject, sUVar2);
                            return;
                        }
                        return;
                    }
                    if ("download_gecko_end".equals(str)) {
                        Sj sj3 = sj2;
                        if (sj3 != null) {
                            sj3.Sj();
                        }
                        sP.sP(map, jSONObject, "");
                    }
                }
            }, map.keySet(), new com.bytedance.sdk.openadsdk.Jcg.Sj());
        } catch (Throwable th2) {
            sP(map, null, th2.toString());
            sU.Sj("GeckoHub", "releaseGeckoResLoader error", th2);
        }
    }

    public void Sj(ILoader iLoader) {
        if (iLoader != null) {
            try {
                GeckoHubImp.inst(dNu.Sj()).releaseGeckoResLoader(iLoader);
            } catch (Throwable th2) {
                sU.Sj("GeckoHub", "releaseGeckoResLoader error", th2);
            }
        }
    }

    public WebResourceResponseModel Sj(ILoader iLoader, String str, String str2) {
        if (iLoader == null) {
            return null;
        }
        try {
            return GeckoHubImp.inst(dNu.Sj()).findResAndMsg(iLoader, str, str2);
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "findRes error", th2);
            return null;
        }
    }

    public int Sj(ILoader iLoader, String str) {
        try {
            return GeckoHubImp.inst(dNu.Sj()).getResCount(iLoader, str);
        } catch (Throwable th2) {
            sU.Sj("GeckoHub", "getResCount error", th2);
            return 0;
        }
    }
}
