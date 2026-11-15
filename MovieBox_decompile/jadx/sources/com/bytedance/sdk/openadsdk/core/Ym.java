package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public class Ym {
    private static final AtomicInteger Sj = new AtomicInteger(0);
    private static final AtomicBoolean sP = new AtomicBoolean(false);

    public static void EjP() {
        if (Sj.getAndIncrement() <= 0) {
            com.bytedance.sdk.openadsdk.utils.JcM.Sj().schedule(new Runnable() {
                @Override
                public void run() {
                    Ym.sP(aa.Sj(dNu.Sj()));
                }
            }, 10000L, TimeUnit.MILLISECONDS);
        }
    }

    public static void TKC() {
        Sj.set(0);
    }

    public static void sP(final String str) {
        com.bytedance.sdk.openadsdk.utils.JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("ipv6") {
            @Override
            public void run() {
                JSONObject jSONObjectSj;
                final String strSef = Mts.sef();
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj(0, strSef);
                if (TextUtils.isEmpty(strSef)) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, strSef, -1, "url is null");
                    return;
                }
                com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
                try {
                    ejPSP.sP(strSef);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("connect_type", com.bytedance.sdk.component.utils.wE.Sj(dNu.Sj(), 0L));
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("device_id", Long.parseLong(str));
                    }
                    jSONObject.put("header", com.bytedance.sdk.openadsdk.EjP.Sj.TKC.Sj().sP());
                    if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(PangleEncryptConstant.CryptDataScene.APP_LOG)) {
                        jSONObjectSj = PangleEncryptManager.encryptType4(jSONObject, new dx(PangleEncryptConstant.CryptDataScene.DUAL_EVENT));
                        if (jSONObjectSj == null || jSONObjectSj.optInt("cypher") != 4) {
                            zR.sP(false);
                        } else {
                            zR.sP(true);
                            ejPSP.sP("x-pgli18n", "4");
                            ejPSP.sP(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8");
                        }
                    } else {
                        jSONObjectSj = com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
                        if (Ym.sP(jSONObjectSj)) {
                            ejPSP.sP(HttpHeaders.CONTENT_ENCODING, "union_sdk_encode");
                        }
                    }
                    if (Ym.sP(jSONObjectSj)) {
                        jSONObject = jSONObjectSj;
                    }
                    ejPSP.sP(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8");
                    ejPSP.sP("User-Agent", Mts.TKC());
                    ejPSP.Sj(jSONObject);
                    ejPSP.Sj(6);
                    ejPSP.Sj("send_i_p_v6");
                    ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                        @Override
                        public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                            if (sPVar.vS()) {
                                Ym.sP(sPVar.EjP(), strSef);
                            } else {
                                com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, strSef, sPVar.Sj(), sPVar.sP());
                                Ym.EjP();
                            }
                        }

                        @Override
                        public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                            if (iOException != null) {
                                com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, strSef, 1, iOException.getMessage());
                            }
                            Ym.EjP();
                        }
                    });
                } catch (Exception e10) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, strSef, -2, e10.getMessage());
                    com.bytedance.sdk.component.utils.sU.sP("build ipv6 request failed:" + e10.getMessage(), new Object[0]);
                }
            }
        });
    }

    private static class Sj implements com.bytedance.sdk.component.utils.wE.Sj {
        private static final AtomicBoolean Sj = new AtomicBoolean(false);
        private static volatile long sP = -1;

        private Sj() {
        }

        public static void Sj() {
            if (Sj.compareAndSet(false, true)) {
                sP = System.currentTimeMillis();
                com.bytedance.sdk.component.utils.wE.Sj(new Sj(), dNu.Sj());
            }
        }

        public void sP() {
            com.bytedance.sdk.component.utils.wE.Sj(this);
        }

        @Override
        public void Sj(Context context, Intent intent, boolean z10, int i10) {
            if (System.currentTimeMillis() - sP >= 2000 && i10 != 0) {
                Ym.TKC();
                Ym.sP(aa.Sj(dNu.Sj()));
                sP();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0066  */
    public static void sP(String str, String str2) {
        byte b10;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("cypher") != 4) {
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 1, "cypher type error");
                return;
            }
            Pair<Integer, String> pairDecryptType4 = PangleEncryptManager.decryptType4(jSONObject.optString("message"));
            if (pairDecryptType4.second != null) {
                JSONObject jSONObject2 = new JSONObject((String) pairDecryptType4.second);
                String strOptString = jSONObject2.optString("ip_type");
                int iHashCode = strOptString.hashCode();
                if (iHashCode != 3239397) {
                    if (iHashCode != 3239399) {
                        if (iHashCode == 1959784951 && strOptString.equals("invalid")) {
                            b10 = 2;
                        } else {
                            b10 = -1;
                        }
                    } else if (strOptString.equals("ipv6")) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                } else if (strOptString.equals("ipv4")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    if (jSONObject2.has("ip")) {
                        String strOptString2 = jSONObject2.optString("ip");
                        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, strOptString2);
                        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", "key_ipv4");
                        HashMap map = new HashMap();
                        map.put(PglSSConfig.CUSTOMINFO_KEY_IPV6, strOptString2);
                        com.bytedance.sdk.openadsdk.core.uA.sP.sP().Sj(map);
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(1, str2);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 4, "no ip");
                    return;
                }
                if (b10 != 1) {
                    if (b10 != 2) {
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 3, "no ip type ");
                        return;
                    }
                    return;
                } else {
                    if (jSONObject2.has("ip")) {
                        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", "key_ipv4", jSONObject2.optString("ip"));
                        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6);
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(1, str2);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 4, "no ip");
                    return;
                }
            }
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 2, "decrypt failed ".concat(String.valueOf(((Integer) pairDecryptType4.first).intValue())));
        } catch (JSONException unused) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj(-1, str2, 2, "decrypt failed, wrong data ");
        }
    }

    public static void Sj(String str) {
        AtomicBoolean atomicBoolean = sP;
        if (atomicBoolean.compareAndSet(false, true)) {
            if (!com.bytedance.sdk.component.utils.TzV.Dq(dNu.Sj())) {
                atomicBoolean.set(false);
            } else {
                Sj.Sj();
                sP(str);
            }
        }
    }

    public static boolean sP(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }
}
