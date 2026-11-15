package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.pgl.ssdk.ces.out.DungeonFlag;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.baselib.db.download.DownloadException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y5.c;

public class sU implements RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> {
    private final Context Sj;

    public static class Sj {

        @Nullable
        public final com.bytedance.sdk.openadsdk.core.model.Sj Dq;
        final int EjP;
        final String HiB;
        final String Jcg;
        final int Sj;
        final ArrayList<Integer> TEQ;
        final long TKC;
        final long sP;
        final String uA;
        final int vS;

        private Sj(String str, int i10, int i11, String str2, int i12, String str3, @Nullable com.bytedance.sdk.openadsdk.core.model.Sj sj2, long j10, long j11, ArrayList<Integer> arrayList) {
            this.Sj = i10;
            this.EjP = i11;
            this.HiB = str2;
            this.Jcg = str3;
            this.Dq = sj2;
            this.uA = str;
            this.vS = i12;
            this.sP = j10;
            this.TKC = j11;
            this.TEQ = arrayList;
        }

        public static Sj Sj(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.ib ibVar, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
            Object obj;
            String strOptString = jSONObject.optString("did");
            int iOptInt = jSONObject.optInt("processing_time_ms");
            long jOptLong = jSONObject.optLong("s_receive_ts");
            long jOptLong2 = jSONObject.optLong("s_send_ts");
            int iOptInt2 = jSONObject.optInt("status_code");
            String strOptString2 = jSONObject.optString(CampaignEx.JSON_KEY_DESC);
            String strOptString3 = jSONObject.optString(TrackingKey.REQUEST_ID);
            int iOptInt3 = jSONObject.optInt("reason");
            Pair<com.bytedance.sdk.openadsdk.core.model.Sj, ArrayList<Integer>> pairSj = com.bytedance.sdk.openadsdk.core.sP.Sj(jSONObject, adSlot, ibVar, tkc);
            if (pairSj != null && (obj = pairSj.first) != null) {
                ((com.bytedance.sdk.openadsdk.core.model.Sj) obj).Sj(jSONObject.optLong("request_after"));
            }
            return pairSj == null ? new Sj(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, null, jOptLong, jOptLong2, null) : new Sj(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, (com.bytedance.sdk.openadsdk.core.model.Sj) pairSj.first, jOptLong, jOptLong2, (ArrayList) pairSj.second);
        }
    }

    public static class sP {
        public final int Sj;
        public final com.bytedance.sdk.openadsdk.core.model.Yf TKC;
        public final boolean sP;

        private sP(int i10, boolean z10, com.bytedance.sdk.openadsdk.core.model.Yf yf2) {
            this.Sj = i10;
            this.sP = z10;
            this.TKC = yf2;
        }

        public static sP Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int iOptInt = jSONObject.optInt("code");
            boolean zOptBoolean = jSONObject.optBoolean("verify");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            com.bytedance.sdk.openadsdk.core.model.Yf yf2 = new com.bytedance.sdk.openadsdk.core.model.Yf();
            if (jSONObjectOptJSONObject != null) {
                try {
                    yf2.Sj(jSONObjectOptJSONObject.optInt("reason"));
                    yf2.sP(jSONObjectOptJSONObject.optInt("corp_type"));
                    yf2.TKC(jSONObjectOptJSONObject.optInt(CampaignEx.JSON_KEY_REWARD_AMOUNT));
                    yf2.Sj(jSONObjectOptJSONObject.optString(CampaignEx.JSON_KEY_REWARD_NAME));
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", th2.getMessage());
                }
            }
            return new sP(iOptInt, zOptBoolean, yf2);
        }
    }

    sU(Context context) {
        this.Sj = context;
    }

    private boolean EjP(String str) {
        if (com.bytedance.sdk.openadsdk.core.Jcg.sP.Sj()) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.Jcg.sP.Sj(str)) {
            return false;
        }
        String strSP = com.bytedance.sdk.openadsdk.core.Jcg.sP.sP();
        if (!TextUtils.isEmpty(strSP)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(strSP, System.currentTimeMillis());
        }
        return true;
    }

    private boolean HiB(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.optString("message").equalsIgnoreCase(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean TKC(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r28v0, types: [com.bytedance.sdk.openadsdk.core.sU] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Map] */
    public void sP(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.ib ibVar, final int i10, final RiZ.Sj sj2) {
        Object sPVar;
        String str;
        if (!dNu.EjP().zwV()) {
            sj2.Sj(40060, Dq.Sj(40060));
            return;
        }
        boolean zTKC = com.bytedance.sdk.openadsdk.dx.Sj.TKC();
        if (!zTKC) {
            sef.vS();
        }
        final com.bytedance.sdk.openadsdk.core.model.TKC tkc = new com.bytedance.sdk.openadsdk.core.model.TKC();
        tkc.Sj(adSlot);
        if (!com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
            if (sj2 != null) {
                sj2.Sj(1000, "Ad request is temporarily paused, Please contact your AM");
                tkc.Sj(1000);
                com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                return;
            }
            return;
        }
        if (!dNu.EjP().Fm()) {
            if (sj2 != null) {
                sj2.Sj(-16, Dq.Sj(-16));
                tkc.Sj(1001);
                com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                return;
            }
            return;
        }
        if (sj2 == null) {
            return;
        }
        if (EjP(adSlot.getCodeId())) {
            sj2.Sj(-8, Dq.Sj(-8));
            return;
        }
        if (!TextUtils.isEmpty(adSlot.getBidAdm()) && !ibVar.vS) {
            tkc.sP(2);
            tkc.Sj(adSlot.getBidAdm());
            if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                c.a(adSlot.getBidAdm());
            }
            if (dNu.EjP().db() && ley.Sj().EjP() == 1) {
                Mts.Sj("Pangle_Debug_Mode", adSlot.getBidAdm(), this.Sj);
            }
            try {
                JSONObject jSONObjectSj = Sj(new JSONObject(adSlot.getBidAdm()));
                if (jSONObjectSj == null) {
                    Sj(sj2, tkc);
                    return;
                }
                Sj Sj2 = Sj.Sj(jSONObjectSj, adSlot, ibVar, tkc);
                tkc.Sj(Sj2.TEQ);
                aa.Sj(this.Sj, Sj2.uA);
                int i11 = Sj2.EjP;
                if (i11 != 20000) {
                    sj2.Sj(i11, Sj2.HiB);
                    tkc.Sj(Sj2.EjP);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.model.Sj sj3 = Sj2.Dq;
                if (sj3 == null) {
                    Sj(sj2, tkc);
                    return;
                }
                if (sj3.EjP() != null && Sj2.Dq.EjP().size() > 0) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(Sj2.Dq.EjP().get(0));
                }
                if (Sj(Sj2.Dq, sj2)) {
                    return;
                }
                Sj2.Dq.TKC(jSONObjectSj.toString());
                sj2.Sj(Sj2.Dq, tkc);
                Map<String, com.bytedance.sdk.openadsdk.core.model.sU> mapSj = com.bytedance.sdk.openadsdk.core.model.Sj.Sj(Sj2.Dq);
                if (mapSj != null) {
                    com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(mapSj);
                }
                Sj(Sj2.Dq);
                com.bytedance.sdk.openadsdk.core.EjP.Sj.Sj().Sj(Sj2.Dq);
                return;
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.Sj("NetApiImpl", "get ad error: ", th2);
                Sj(sj2, tkc);
                return;
            }
        }
        JSONObject jSONObjectSj2 = Sj(adSlot, ibVar, i10);
        if (jSONObjectSj2 == null) {
            sj2.Sj(-9, Dq.Sj(-9));
            tkc.Sj(-9);
            com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
            return;
        }
        if (dNu.EjP().db() && ley.Sj().EjP() == 1) {
            Mts.Sj("Pangle_Debug_Mode", jSONObjectSj2.toString(), this.Sj);
        }
        final String strSj = Mts.Sj("/api/ad/union/sdk/get_ads/", true, false);
        com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
        try {
            ejPSP.sP(com.bytedance.sdk.openadsdk.Dq.EjP.Sj(ejPSP, strSj));
        } catch (Exception unused) {
        }
        ejPSP.Sj(jSONObjectSj2.toString(), dNu.EjP().uvD());
        Map<String, String> mapSj2 = com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(strSj, jSONObjectSj2.toString());
        if (mapSj2 != null && mapSj2.size() > 0) {
            for (String str2 : mapSj2.keySet()) {
                try {
                    ejPSP.sP(str2, mapSj2.get(str2));
                } catch (Exception e10) {
                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e10.getMessage());
                }
            }
        }
        try {
            ejPSP.sP("User-Agent", Mts.TKC());
            Sj(ejPSP, jSONObjectSj2);
        } catch (Exception unused2) {
        }
        final WMZ wmzSP = WMZ.sP();
        final Map<String, Object> requestExtraMap = adSlot.getRequestExtraMap();
        boolean z10 = uA.sP().RiZ() && requestExtraMap != null;
        if (z10) {
            requestExtraMap.put("pgad_start", wmzSP);
        }
        ejPSP.Sj(10);
        ejPSP.Sj("get_ad");
        com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() {
            @Override
            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                sj4.sP("get_ad");
                sj4.TKC(adSlot.getCodeId());
                sj4.EjP(Mts.TKC(adSlot.getDurationSlotType()));
                return sj4;
            }
        });
        if (com.bytedance.sdk.component.utils.Zq.EjP()) {
            Thread.currentThread().getName();
        }
        if (!zTKC) {
            final boolean z11 = z10;
            ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.sP() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc2, com.bytedance.sdk.component.Jcg.sP sPVar2) {
                    sU.this.Sj(strSj, sPVar2, z11, requestExtraMap, wmzSP, adSlot, tkc, sj2, ibVar, i10);
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc2, IOException iOException, com.bytedance.sdk.component.Jcg.sP sPVar2) {
                    sU.this.Sj(strSj, iOException, sPVar2, adSlot, z11, requestExtraMap, sj2, tkc);
                    if (tkc2 != null) {
                        com.bytedance.sdk.openadsdk.utils.sU.Sj(tkc2.EjP());
                    }
                }
            });
            return;
        }
        try {
            com.bytedance.sdk.component.Jcg.sP sPVarSj = ejPSP.Sj();
            if (sPVarSj == null) {
                str = null;
                sPVar = new com.bytedance.sdk.component.Jcg.sP(false, 5001, "response is null, content type is not support!!", null, "REQUEST_BODY_NULL", 1L, 1L);
            }
            com.bytedance.sdk.component.Jcg.sP sPVar2 = sPVarSj;
            try {
                if (sPVar2.vS()) {
                    Sj(strSj, sPVar2, z10, requestExtraMap, wmzSP, adSlot, tkc, sj2, ibVar, i10);
                } else {
                    Sj(strSj, new IOException(sPVar2.sP()), sPVar2, adSlot, z10, requestExtraMap, sj2, tkc);
                    com.bytedance.sdk.openadsdk.utils.sU.Sj(ejPSP.EjP());
                }
            } catch (Throwable th3) {
                th = th3;
                Sj(str, new IOException(th.getMessage()), new com.bytedance.sdk.component.Jcg.sP(false, 5002, "execute method throw exception", null, "REQUEST_BODY_EXCEPTION", 1L, 1L), adSlot, z10, sPVar, sj2, tkc);
            }
        } catch (Throwable th4) {
            th = th4;
            sPVar = requestExtraMap;
            str = strSj;
        }
    }

    @DungeonFlag
    private void vS(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", Mts.HiB());
            jSONObject.put("version_code", Mts.vS());
            jSONObject.put("version", Mts.Jcg());
        } catch (Exception unused) {
        }
    }

    private byte[] HiB(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] byteArray = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream2.write(str.getBytes("utf-8"));
                            try {
                                gZIPOutputStream2.close();
                            } catch (IOException e10) {
                                com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e10.toString());
                            }
                            byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                        } catch (IOException e11) {
                            e = e11;
                            gZIPOutputStream = gZIPOutputStream2;
                            com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e.toString());
                            if (gZIPOutputStream != null) {
                                try {
                                    gZIPOutputStream.close();
                                } catch (IOException e12) {
                                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e12.toString());
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                byteArray = byteArrayOutputStream.toByteArray();
                                byteArrayOutputStream.close();
                            }
                            return byteArray;
                        } catch (Throwable th2) {
                            th = th2;
                            gZIPOutputStream = gZIPOutputStream2;
                            if (gZIPOutputStream != null) {
                                try {
                                    gZIPOutputStream.close();
                                } catch (IOException e13) {
                                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e13.toString());
                                }
                            }
                            if (byteArrayOutputStream == null) {
                                throw th;
                            }
                            byteArrayOutputStream.toByteArray();
                            try {
                                byteArrayOutputStream.close();
                                throw th;
                            } catch (IOException e14) {
                                com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e14.toString());
                                throw th;
                            }
                        }
                    } catch (IOException e15) {
                        e = e15;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e16) {
                com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e16.toString());
            }
        } catch (IOException e17) {
            e = e17;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
        return byteArray;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x008b A[Catch: JSONException -> 0x00bb, TryCatch #0 {JSONException -> 0x00bb, blocks: (B:3:0x0005, B:9:0x0047, B:11:0x008b, B:23:0x00ad, B:8:0x0030, B:5:0x002a), top: B:26:0x0005, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x009d  */
    /* JADX WARN: Code duplicated, block: B:15:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:17:0x00a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:19:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:21:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:22:0x00ac  */
    @DungeonFlag
    private JSONObject TKC() {
        int i10;
        int rotation;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SafeStringUtils.SP_APPID, uA.sP().EjP());
            jSONObject.put("name", uA.sP().Dq());
            vS(jSONObject);
            Context contextSj = dNu.Sj();
            String packageResourcePath = "";
            if (contextSj != null) {
                try {
                    packageResourcePath = contextSj.getPackageResourcePath();
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", "failed to get the application installation package path. error: " + th2.getMessage());
                }
                jSONObject.put("package_install_path", packageResourcePath);
                jSONObject.put("is_paid_app", uA.sP().Fmk());
                jSONObject.put("apk_sign", com.bytedance.sdk.openadsdk.common.sP.Jcg());
                jSONObject.put("app_running_time", (System.currentTimeMillis() - sef.Sj()) / 1000);
                jSONObject.put("fmwname", DeviceUtils.Ym(this.Sj));
                i10 = 0;
                jSONObject.put("is_init", sef.HiB() ? 1 : 0);
                if (contextSj != null) {
                    rotation = ((WindowManager) contextSj.getSystemService("window")).getDefaultDisplay().getRotation();
                    if (rotation != 0) {
                        i10 = 1;
                    } else if (rotation != 1) {
                        i10 = 3;
                    } else if (rotation != 2) {
                        i10 = 2;
                    } else if (rotation != 3) {
                        i10 = 4;
                    }
                    jSONObject.put("orientation_support", new JSONArray().put(i10));
                }
            } else {
                jSONObject.put("package_install_path", packageResourcePath);
                jSONObject.put("is_paid_app", uA.sP().Fmk());
                jSONObject.put("apk_sign", com.bytedance.sdk.openadsdk.common.sP.Jcg());
                jSONObject.put("app_running_time", (System.currentTimeMillis() - sef.Sj()) / 1000);
                jSONObject.put("fmwname", DeviceUtils.Ym(this.Sj));
                i10 = 0;
                jSONObject.put("is_init", sef.HiB() ? 1 : 0);
                if (contextSj != null) {
                    rotation = ((WindowManager) contextSj.getSystemService("window")).getDefaultDisplay().getRotation();
                    if (rotation != 0) {
                        i10 = 1;
                    } else if (rotation != 1) {
                        i10 = 3;
                    } else if (rotation != 2) {
                        i10 = 2;
                    } else if (rotation != 3) {
                        i10 = 4;
                    }
                    jSONObject.put("orientation_support", new JSONArray().put(i10));
                }
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @NonNull
    private Map<String, String> EjP(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8");
        if (TKC(jSONObject)) {
            map.put(HttpHeaders.CONTENT_ENCODING, "union_sdk_encode");
        }
        return map;
    }

    @DungeonFlag
    private JSONObject Sj(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.ib ibVar, int i10) {
        int i11;
        int i12;
        int i13;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            String strEjP = (ibVar == null || TextUtils.isEmpty(ibVar.Sj)) ? Mts.EjP() : ibVar.Sj;
            if (i10 == 7) {
                if (ibVar != null && (i13 = ibVar.sP) > 0) {
                    jSONObject2.put("req_type", i13);
                }
            } else if (i10 == 8) {
                if (ibVar != null && (i12 = ibVar.TKC) > 0) {
                    jSONObject2.put("req_type", i12);
                }
            } else if (i10 == 3 && ibVar != null && (i11 = ibVar.EjP) > 0) {
                jSONObject2.put("req_type", i11);
            }
            try {
                String strUA = dNu.EjP().uA();
                String strRiZ = dNu.EjP().RiZ();
                if (strUA != null && strRiZ != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("version", strUA);
                    jSONObject3.put("param", strRiZ);
                    jSONObject2.put("abtest", jSONObject3);
                }
            } catch (Throwable unused) {
            }
            jSONObject2.put(TrackingKey.REQUEST_ID, strEjP);
            Mts.Sj(jSONObject2);
            jSONObject2.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
            jSONObject2.put("rewardedfull_link", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI() ? 1 : 0);
            jSONObject2.put("js_render_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.sP());
            jSONObject2.put("js_render_v3_ver", com.bytedance.sdk.openadsdk.core.Dq.aa.TKC());
            jSONObject2.put("source_type", "app");
            jSONObject2.put("app", TKC());
            jSONObject2.put("device", DeviceUtils.Sj(this.Sj, true));
            jSONObject2.put("user", Sj(adSlot));
            jSONObject2.put("ua", Mts.TKC());
            jSONObject2.put("channel", "main");
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(Sj(adSlot, i10, ibVar));
            jSONObject2.put("adslots", jSONArray);
            Sj(jSONObject2, ibVar);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject2.put("ts", jCurrentTimeMillis);
            String strConcat = "";
            if (adSlot.getCodeId() != null && strEjP != null) {
                strConcat = String.valueOf(jCurrentTimeMillis).concat(adSlot.getCodeId()).concat(strEjP);
            }
            jSONObject2.put("req_sign", com.bytedance.sdk.component.utils.HiB.Sj(strConcat));
            if (com.bytedance.sdk.openadsdk.core.uA.TKC.HiB() != 0) {
                jSONObject2.put("pglx", String.valueOf(com.bytedance.sdk.openadsdk.core.uA.TKC.HiB()));
            }
            jSONObject2.put("adx_id", uA.sP().wE());
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj(jSONObject2);
            jSONObject = Sj(PangleEncryptConstant.CryptDataScene.GET_ADS, jSONObject2);
            if (jSONObject != null) {
                jSONObject.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
                jSONObject.put("oversea_version_type", 1);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("body data exception", th2);
        }
        return jSONObject;
    }

    public static JSONArray TKC(String str) {
        try {
            Set<com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj> setSj = com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(str);
            if (setSj != null && setSj.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.bytedance.sdk.openadsdk.core.TEQ.Sj.Sj sj2 : setSj) {
                    if (sj2 != null && !TextUtils.isEmpty(sj2.HiB())) {
                        JSONObject jSONObject = new JSONObject();
                        String[] strArrSplit = sj2.Sj().split("_");
                        if (strArrSplit.length == 2) {
                            jSONObject.put("id", strArrSplit[1]);
                            jSONObject.put("md5", sj2.sP());
                            jSONArray.put(jSONObject);
                        } else {
                            continue;
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.Sj("NetApiImpl", "getUgenParentTplIds: ", e10);
            return null;
        }
    }

    private void Sj(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.ib ibVar) {
        JSONArray jSONArray;
        if (ibVar == null || (jSONArray = ibVar.HiB) == null) {
            return;
        }
        try {
            jSONObject.put("source_temai_product_ids", jSONArray);
        } catch (Exception unused) {
        }
    }

    @Override
    public void Sj(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.ib ibVar, final int i10, RiZ.Sj sj2) {
        final com.bytedance.sdk.openadsdk.core.Sj.Sj sj3 = new com.bytedance.sdk.openadsdk.core.Sj.Sj(sj2, adSlot);
        if (ibVar != null && (ibVar.sP == 2 || ibVar.TKC == 2 || ibVar.EjP == 2)) {
            adSlot.setPreload(true);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            sef.sP().post(new com.bytedance.sdk.component.Dq.Dq("getAd") {
                @Override
                public void run() {
                    sU.this.sP(adSlot, ibVar, i10, sj3);
                }
            });
        } else {
            sP(adSlot, ibVar, i10, sj3);
        }
        if (com.bytedance.sdk.openadsdk.dx.Sj.TKC()) {
            sef.Jcg();
        }
    }

    public void Sj(String str, IOException iOException, com.bytedance.sdk.component.Jcg.sP sPVar, final AdSlot adSlot, boolean z10, Map<String, Object> map, RiZ.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
        String message;
        int iSj;
        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
            @Override
            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                sj3.sP("get_ad");
                sj3.TKC(adSlot.getCodeId());
                sj3.EjP(Mts.TKC(adSlot.getDurationSlotType()));
                sj3.Sj(BuildConfig.VERSION_NAME);
                return sj3;
            }
        });
        if (sPVar != null) {
            message = sPVar.sP();
        } else if (iOException != null) {
            message = iOException.getMessage();
        } else {
            message = "";
        }
        WMZ wmzSP = WMZ.sP();
        if (z10) {
            map.put("pgad_end", Long.valueOf(wmzSP.Sj));
        }
        if (dNu.EjP().db() && ley.Sj().EjP() == 1) {
            Mts.Sj("Pangle_Debug_Mode", iOException != null ? iOException.getMessage() : null, this.Sj);
        }
        if (sPVar != null) {
            iSj = sPVar.Sj();
        } else {
            iSj = (iOException == null || !(iOException instanceof SocketTimeoutException)) ? PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY : PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_NOT_FOUND;
        }
        if (sj2 != null) {
            sj2.Sj(iSj, message);
        }
        tkc.Sj(iSj);
        com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC.incrementAndGet();
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.Sj.incrementAndGet();
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.Jcg.incrementAndGet();
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.HiB();
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.Sj(iSj, message);
        com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void Sj(String str, com.bytedance.sdk.component.Jcg.sP sPVar, boolean z10, Map<String, Object> map, WMZ wmz, final AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.TKC tkc, RiZ.Sj sj2, com.bytedance.sdk.openadsdk.core.model.ib ibVar, int i10) {
        RiZ.Sj sj3;
        com.bytedance.sdk.openadsdk.core.model.TKC tkc2;
        com.bytedance.sdk.openadsdk.core.model.ley leyVar;
        System.currentTimeMillis();
        if (z10) {
            map.put("pgad_end", wmz);
        }
        if (sPVar == null) {
            return;
        }
        if (sPVar.vS()) {
            com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj4.sP("get_ad");
                    sj4.TKC(adSlot.getCodeId());
                    sj4.EjP(Mts.TKC(adSlot.getDurationSlotType()));
                    sj4.Sj(BuildConfig.VERSION_NAME);
                    return sj4;
                }
            });
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.sP.incrementAndGet();
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.Sj.incrementAndGet();
            try {
                WMZ wmzSP = WMZ.sP();
                String strEjP = sPVar.EjP();
                JSONObject jSONObject = new JSONObject(strEjP);
                boolean z11 = true;
                if (dNu.EjP().db() && ley.Sj().EjP() == 1) {
                    Mts.Sj("Pangle_Debug_Mode", jSONObject.toString(), this.Sj);
                }
                tkc.Sj(strEjP);
                JSONObject jSONObjectSj = Sj(jSONObject);
                if (jSONObjectSj == null) {
                    Sj(sj2, tkc);
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.vS.incrementAndGet();
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
                    return;
                }
                Sj Sj2 = Sj.Sj(jSONObjectSj, adSlot, ibVar, tkc);
                tkc.Sj(Sj2.TEQ);
                aa.Sj(this.Sj, Sj2.uA);
                int i11 = Sj2.EjP;
                if (i11 != 20000) {
                    tkc.Sj(i11);
                    if (!dNu.EjP().LqL() && Sj2.EjP == 40029) {
                        sj2.Sj(-100, Dq.Sj(-100));
                    } else {
                        sj2.Sj(Sj2.EjP, Sj2.HiB);
                    }
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.vS.incrementAndGet();
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
                    return;
                }
                com.bytedance.sdk.openadsdk.core.model.Sj sj4 = Sj2.Dq;
                if (sj4 == null) {
                    Sj(sj2, tkc);
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.HiB.incrementAndGet();
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
                    return;
                }
                if (Sj(sj4, sj2)) {
                    return;
                }
                Sj2.Dq.TKC(jSONObjectSj.toString());
                Sj2.Dq.EjP(strEjP);
                WMZ wmzSP2 = WMZ.sP();
                if (ibVar != null && (leyVar = ibVar.TEQ) != null) {
                    leyVar.Sj(wmz, wmzSP, Sj2.Sj, wmzSP2);
                }
                if (!com.bytedance.sdk.openadsdk.dx.Sj.EjP() || i10 != 1) {
                    z11 = false;
                }
                if (z11 && Sj2.Dq.EjP() != null && !Sj2.Dq.EjP().isEmpty()) {
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar = Sj2.Dq.EjP().get(0);
                    String strTKC = Mts.TKC(i10);
                    boolean zDq = Sj2.Dq.Dq();
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    long jSj = 0;
                    if (ibVar != null) {
                        try {
                            WMZ wmz2 = ibVar.uA;
                            if (wmz2.Sj > 0) {
                                jSj = wmzSP2.Sj(wmz2);
                            }
                        } catch (Exception unused) {
                        }
                    }
                    long j10 = jSj;
                    if (sUVar != null) {
                        boolean zDb = sUVar.db();
                        jSONObject3.put("is_new_engine", zDb ? 1 : 0);
                        jSONObject3.put("webview_cache_size", zDb ? com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().EjP() : com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().TKC());
                    }
                    Sj(sPVar.Jcg(), ibVar, wmz, wmzSP, Sj2.Sj, wmzSP2, sUVar, strTKC, zDq, jSONObject3, true);
                    jSONObject2.put("duration", j10);
                    jSONObject2.put("extra_data", jSONObject3);
                    jSONObject2.put("tag", strTKC);
                    jSONObject2.put("callback_start", wmzSP2.Sj());
                    Sj2.Dq.Sj(jSONObject2);
                }
                sj2.Sj(Sj2.Dq, tkc);
                Sj(Sj2.Dq);
                com.bytedance.sdk.openadsdk.core.EjP.Sj.Sj().Sj(Sj2.Dq);
                Map<String, com.bytedance.sdk.openadsdk.core.model.sU> mapSj = com.bytedance.sdk.openadsdk.core.model.Sj.Sj(Sj2.Dq);
                if (mapSj != null) {
                    com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(mapSj);
                }
                if (Sj2.Dq.EjP() == null || Sj2.Dq.EjP().isEmpty()) {
                    sj3 = sj2;
                    tkc2 = tkc;
                } else {
                    if (z11) {
                        sj3 = sj2;
                        tkc2 = tkc;
                    } else {
                        sj3 = sj2;
                        tkc2 = tkc;
                        try {
                            Sj(sPVar.Jcg(), ibVar, wmz, wmzSP, Sj2.Sj, wmzSP2, Sj2.Dq.EjP().get(0), Mts.TKC(i10), Sj2.Dq.Dq());
                        } catch (Throwable th2) {
                            th = th2;
                            com.bytedance.sdk.component.utils.sU.Sj("NetApiImpl", "get ad error: ", th);
                            Sj(sj3, tkc2);
                            com.bytedance.sdk.openadsdk.EjP.Sj.vS.HiB.incrementAndGet();
                            com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
                            return;
                        }
                    }
                    com.bytedance.sdk.openadsdk.EjP.Sj.vS.EjP.incrementAndGet();
                }
                com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
            } catch (Throwable th3) {
                th = th3;
                sj3 = sj2;
                tkc2 = tkc;
            }
        } else {
            com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj5 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj5.sP("get_ad");
                    sj5.TKC(adSlot.getCodeId());
                    sj5.EjP(Mts.TKC(adSlot.getDurationSlotType()));
                    sj5.Sj(BuildConfig.VERSION_NAME);
                    return sj5;
                }
            });
            int iSj = sPVar.Sj();
            String strSP = sPVar.sP();
            sj2.Sj(iSj, strSP);
            tkc.Sj(iSj);
            com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.Dq.incrementAndGet();
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC.incrementAndGet();
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.Sj.incrementAndGet();
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.HiB();
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.Sj(iSj, strSP);
            com.bytedance.sdk.openadsdk.EjP.Sj.vS.TKC();
        }
    }

    @DungeonFlag
    private JSONObject sP(@NonNull String str, List<FilterWord> list, String str2, String str3, String str4) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(CampaignEx.JSON_KEY_TIMESTAMP, System.currentTimeMillis());
            jSONObject2.put(Constants.AD_FRAMEWORK_VERSION, BuildConfig.VERSION_NAME);
            JSONObject jSONObject3 = new JSONObject(str);
            jSONObject3.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            jSONObject2.put("extra", jSONObject3.toString());
            jSONObject2.put("filter_words", Sj(list));
            jSONObject2.put("dislike_source", str4);
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().xhi() && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                jSONObject2.put("creative_info", com.bytedance.sdk.component.utils.Sj.Sj(new JSONObject(str2)).toString());
                jSONObject2.put("feedback_type", 1);
                jSONObject2.put("user_description", str3);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @NonNull
    private Map<String, String> sP() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, "application/octet-stream;tt-data=a");
        return map;
    }

    private static String sP(AdSlot adSlot) {
        String strZq = uA.sP().Zq();
        if (adSlot == null) {
            return TextUtils.isEmpty(strZq) ? "" : strZq;
        }
        String userData = adSlot.getUserData();
        if (TextUtils.isEmpty(strZq)) {
            return userData;
        }
        if (TextUtils.isEmpty(userData)) {
            return strZq;
        }
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = new JSONArray(userData);
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if (jSONObject != null) {
                    hashSet.add(jSONObject.optString("name", null));
                }
            }
            try {
                JSONArray jSONArray2 = new JSONArray(strZq);
                int length2 = jSONArray2.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i11);
                    if (jSONObject2 != null && !hashSet.contains(jSONObject2.optString("name", null))) {
                        jSONArray.put(jSONObject2);
                    }
                }
                return jSONArray.toString();
            } catch (Throwable unused) {
                return userData;
            }
        } catch (Throwable unused2) {
            return strZq;
        }
    }

    @Nullable
    public static String sP(int i10, String str) {
        Object obj;
        if (i10 == 3) {
            return com.bytedance.sdk.component.utils.Sj.TKC(str);
        }
        if (i10 == 4) {
            Pair<Integer, String> pairDecryptType4 = PangleEncryptManager.decryptType4(str);
            if (pairDecryptType4 != null && (obj = pairDecryptType4.second) != null) {
                String str2 = (String) obj;
                zR.Sj(true);
                return str2;
            }
            zR.Sj(false);
            zR.Sj(2, PangleEncryptConstant.CryptDataScene.GET_ADS, pairDecryptType4 != null ? ((Integer) pairDecryptType4.first).intValue() : 0);
        }
        return null;
    }

    @Override
    public com.bytedance.sdk.openadsdk.EjP.HiB sP(JSONObject jSONObject) {
        int i10;
        boolean z10;
        boolean z11;
        String strSP = "error unknown";
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!com.bytedance.sdk.openadsdk.core.settings.uA.Sj() || !dNu.EjP().zwV() || jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
        boolean z12 = false;
        int iSj = 0;
        try {
            JSONObject jSONObjectSj = Sj(PangleEncryptConstant.CryptDataScene.STATS_LOG, jSONObject);
            ejPSP.Sj(jSONObjectSj.toString(), dNu.EjP().uvD());
            ejPSP.sP(Mts.EjP("/api/ad/union/sdk/stats/batch/"));
            Sj(ejPSP, jSONObjectSj);
            ejPSP.sP("User-Agent", Mts.TKC());
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Uc()) {
                ejPSP.sP("_disable_retry", "1");
            }
            com.bytedance.sdk.component.Jcg.sP sPVarSj = ejPSP.Sj();
            try {
                if (sPVarSj == null) {
                    return new com.bytedance.sdk.openadsdk.EjP.HiB(false, 0, "error unknown", false);
                }
                if (!sPVarSj.vS() || TextUtils.isEmpty(sPVarSj.EjP())) {
                    z11 = false;
                    z10 = false;
                } else {
                    JSONObject jSONObject2 = new JSONObject(sPVarSj.EjP());
                    int iOptInt = jSONObject2.optInt("code", -1);
                    strSP = jSONObject2.optString("data", "");
                    z10 = true;
                    z11 = iOptInt == 20000;
                    if (iOptInt != 60005) {
                        z10 = false;
                    }
                }
                try {
                    iSj = sPVarSj.Sj();
                    if (!sPVarSj.vS()) {
                        strSP = sPVarSj.sP();
                        com.bytedance.sdk.openadsdk.utils.sU.Sj(ejPSP.EjP());
                    }
                } catch (Throwable unused) {
                    i10 = iSj;
                    z12 = z11;
                    z11 = z12;
                    iSj = i10;
                }
                com.bytedance.sdk.openadsdk.EjP.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.EjP.Sj.Sj.sP, z11, iSj, System.currentTimeMillis() - jCurrentTimeMillis);
                return new com.bytedance.sdk.openadsdk.EjP.HiB(z11, iSj, strSP, z10);
            } catch (Throwable unused2) {
                i10 = 0;
                z10 = false;
            }
        } catch (Throwable unused3) {
            com.bytedance.sdk.openadsdk.EjP.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.EjP.Sj.Sj.sP, false, 0, System.currentTimeMillis() - jCurrentTimeMillis);
            return new com.bytedance.sdk.openadsdk.EjP.HiB(false, 0, "error unknown", false);
        }
    }

    public static JSONArray sP(String str) {
        try {
            Set<String> setSP = com.bytedance.sdk.component.adexpress.Sj.sP.sP.sP(str);
            if (setSP != null && setSP.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = setSP.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVarSj = com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(it.next());
                    if (sPVarSj != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", sPVarSj.sP());
                        jSONObject.put("md5", sPVarSj.TKC());
                        jSONArray.put(jSONObject);
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.Sj("NetApiImpl", "getParentTplIds: ", e10);
            return null;
        }
    }

    private boolean Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, RiZ.Sj sj3) {
        if (sj2 == null) {
            sj3.Sj(40053, Dq.Sj(40053));
            return true;
        }
        List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = sj2.EjP();
        if (listEjP.isEmpty()) {
            return false;
        }
        for (final com.bytedance.sdk.openadsdk.core.model.sU sUVar : listEjP) {
            if (TextUtils.isEmpty(sUVar.fAj().sP()) || TextUtils.isEmpty(sUVar.fAj().TKC())) {
                sj3.Sj(40053, Dq.Sj(40053));
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, Mts.Sj(sUVar), "material_error", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() {
                    @Override
                    public JSONObject Sj() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("ad_label", sUVar.fAj().vS());
                            jSONObject2.put("pag_json_data", jSONObject3.toString());
                            jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                        } catch (Exception e10) {
                            e10.getMessage();
                        }
                        return jSONObject;
                    }
                });
                return true;
            }
        }
        return false;
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = sj2.EjP();
        if (listEjP == null || listEjP.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < listEjP.size(); i10++) {
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = listEjP.get(i10);
            if (sUVar != null && sUVar.uvD() == null) {
                Sj("", 0, 0, sUVar.EZ(), sUVar);
                Sj("", 0, 0, sUVar.gY(), sUVar);
                List<com.bytedance.sdk.openadsdk.core.model.uvD> listBml = sUVar.Bml();
                if (listBml != null && listBml.size() > 0) {
                    for (int i11 = 0; i11 < listBml.size(); i11++) {
                        Sj(sUVar, listBml.get(i11));
                    }
                }
                if (sUVar.UHs() != null) {
                    Sj(sUVar.UHs().r(), sUVar.UHs().t(), sUVar.UHs().C(), (com.bytedance.sdk.openadsdk.core.model.uvD) null, sUVar);
                }
            }
        }
    }

    private void Sj(String str, int i10, int i11, com.bytedance.sdk.openadsdk.core.model.uvD uvd, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.uA.EjP.Sj(str).Sj(i10).sP(i11).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, str, null), 4);
        } else {
            if (uvd == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, uvd.Sj(), null), 4);
        }
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, com.bytedance.sdk.openadsdk.core.model.uvD uvd) {
        if (uvd == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, uvd.Sj(), new com.bytedance.sdk.component.HiB.uvD() {
            @Override
            public void Sj(int i10, String str, @Nullable Throwable th2) {
            }

            @Override
            public void Sj(com.bytedance.sdk.component.HiB.Ym ym2) {
            }
        }), 4);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    private void Sj(com.bytedance.sdk.component.sP.Sj.TEQ teq, com.bytedance.sdk.openadsdk.core.model.ib ibVar, WMZ wmz, WMZ wmz2, int i10, WMZ wmz3, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, boolean z10) {
        if (dNu.EjP().qRN()) {
            JSONObject jSONObject = new JSONObject();
            long jSj = 0;
            if (ibVar != null) {
                try {
                    WMZ wmz4 = ibVar.uA;
                    if (wmz4.Sj > 0) {
                        jSj = wmz3.Sj(wmz4);
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            long j10 = jSj;
            Sj(teq, ibVar, wmz, wmz2, i10, wmz3, sUVar, str, z10, jSONObject, false);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "load_ad_time", j10, jSONObject);
        }
    }

    private static void Sj(com.bytedance.sdk.component.sP.Sj.TEQ teq, com.bytedance.sdk.openadsdk.core.model.ib ibVar, WMZ wmz, WMZ wmz2, int i10, WMZ wmz3, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, boolean z10, JSONObject jSONObject, boolean z11) throws JSONException {
        if (ibVar != null) {
            WMZ wmz4 = ibVar.uA;
            if (wmz4.Sj > 0) {
                jSONObject.put("client_start_time", wmz.Sj(wmz4));
            }
        }
        jSONObject.put("network_time", wmz2.Sj(wmz));
        jSONObject.put("sever_time", i10);
        jSONObject.put("client_end_time", wmz3.Sj(wmz2));
        if (z10) {
            jSONObject.put("is_choose_ad", true);
        }
        if (str.equals("open_ad")) {
            jSONObject.put("is_icon_only", sUVar.yfI() ? 1 : 0);
        }
        if (sUVar != null) {
            jSONObject.put("render_control_type", sUVar.ley());
        }
        jSONObject.put("webview_cache_size", com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().TKC());
        jSONObject.put("sync_barrier_open", z11 ? 1 : 0);
        long j10 = teq.sP;
        if (j10 > 0) {
            jSONObject.put("enqueue_2_run_ts", teq.TKC - j10);
            jSONObject.put("run_2_connect_end_ts", teq.HiB - teq.sP);
            jSONObject.put("connect_end_2_response_end_ts", teq.vS - teq.HiB);
            jSONObject.put("response_end_2_callback_end_ts", SystemClock.elapsedRealtime() - teq.vS);
        }
    }

    @Override
    @DungeonFlag
    public com.bytedance.sdk.openadsdk.EjP.HiB Sj(JSONObject jSONObject, String str, boolean z10) {
        Object obj;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            byte[] bArrEncryptV3 = null;
            if (!com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
                return null;
            }
            com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
            ejPSP.sP(str);
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().kb()) {
                ejPSP.sP("_disable_retry", "1");
            }
            boolean z11 = true;
            if (z10) {
                com.bytedance.sdk.openadsdk.core.settings.vS vSVarGq = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq();
                PangleEncryptConstant.CryptDataScene cryptDataScene = PangleEncryptConstant.CryptDataScene.APP_LOG;
                boolean zSj = vSVarGq.Sj(cryptDataScene);
                byte[] bArrHiB = HiB(jSONObject.toString());
                if (zSj) {
                    Pair<Integer, byte[]> pairEncryptType4WithoutBase64 = PangleEncryptManager.encryptType4WithoutBase64(bArrHiB);
                    if (pairEncryptType4WithoutBase64 != null && (obj = pairEncryptType4WithoutBase64.second) != null && ((byte[]) obj).length > 0) {
                        bArrEncryptV3 = (byte[]) obj;
                        zR.sP(true);
                    } else {
                        int iIntValue = pairEncryptType4WithoutBase64 != null ? ((Integer) pairEncryptType4WithoutBase64.first).intValue() : 0;
                        zR.sP(false);
                        zR.Sj(1, cryptDataScene, iIntValue);
                    }
                }
                if (bArrEncryptV3 != null) {
                    ejPSP.sP(HttpHeaders.CONTENT_ENCODING, "union_sdk_encode");
                    ejPSP.sP("x-pgli18n", "4");
                    ejPSP.Sj("application/octet-stream;tt-data=a", bArrEncryptV3);
                } else {
                    bArrEncryptV3 = PangleEncryptManager.encryptV3(bArrHiB);
                    if (bArrEncryptV3 != null) {
                        Sj(sP(), ejPSP);
                        ejPSP.Sj("application/octet-stream;tt-data=a", bArrEncryptV3);
                    }
                }
            }
            if (bArrEncryptV3 == null) {
                try {
                    JSONObject jSONObjectSj = com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
                    if (!TKC(jSONObjectSj)) {
                        jSONObjectSj = jSONObject;
                    }
                    Sj(EjP(jSONObjectSj), ejPSP);
                    ejPSP.Sj(jSONObjectSj.toString(), dNu.EjP().uvD());
                } catch (OutOfMemoryError e10) {
                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e10.toString());
                    return new com.bytedance.sdk.openadsdk.EjP.HiB(false, -2, "encrypt_error", false);
                }
            }
            com.bytedance.sdk.component.Jcg.sP sPVarSj = ejPSP.Sj();
            boolean zHiB = (sPVarSj == null || !sPVarSj.vS() || TextUtils.isEmpty(sPVarSj.EjP())) ? false : HiB(new JSONObject(sPVarSj.EjP()));
            String strSP = "error unknown";
            int iSj = sPVarSj != null ? sPVarSj.Sj() : 0;
            if (!zHiB && iSj == 200) {
                strSP = "server say not success";
            } else {
                if (sPVarSj != null && sPVarSj.sP() != null) {
                    strSP = sPVarSj.sP();
                }
                z11 = false;
            }
            Sj(jSONObject, z10);
            com.bytedance.sdk.openadsdk.EjP.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.EjP.Sj.Sj.Sj, zHiB, iSj, System.currentTimeMillis() - jCurrentTimeMillis);
            return new com.bytedance.sdk.openadsdk.EjP.HiB(zHiB, iSj, strSP, z11);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("NetApiImpl", "uploadEvent error", th2);
            return new com.bytedance.sdk.openadsdk.EjP.HiB(false, DownloadException.EXCEPTION_IO_HTTP_RETRY, "service_busy", false);
        }
    }

    private void Sj(Map<String, String> map, com.bytedance.sdk.component.Jcg.sP.EjP ejP) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    ejP.sP(entry.getKey(), entry.getValue());
                } catch (Exception e10) {
                    com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", "ADD header exceptopn", e10.getMessage());
                }
            }
        }
        try {
            ejP.sP("User-Agent", Mts.TKC());
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", "ADD header exceptopn", e11.getMessage());
        }
    }

    private void Sj(JSONObject jSONObject, boolean z10) throws Throwable {
        Object obj;
        if (uA.sP().sU()) {
            try {
                jSONObject.getJSONObject("header").put("aid", "4562");
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", "reportETEvent error", e10.getMessage());
            }
            com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
            ejPSP.sP(Mts.uvD());
            byte[] bArrEncryptV3 = null;
            if (z10) {
                com.bytedance.sdk.openadsdk.core.settings.vS vSVarGq = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq();
                PangleEncryptConstant.CryptDataScene cryptDataScene = PangleEncryptConstant.CryptDataScene.APP_LOG;
                boolean zSj = vSVarGq.Sj(cryptDataScene);
                byte[] bArrHiB = HiB(jSONObject.toString());
                if (zSj) {
                    Pair<Integer, byte[]> pairEncryptType4WithoutBase64 = PangleEncryptManager.encryptType4WithoutBase64(bArrHiB);
                    if (pairEncryptType4WithoutBase64 != null && (obj = pairEncryptType4WithoutBase64.second) != null && ((byte[]) obj).length > 0) {
                        bArrEncryptV3 = (byte[]) obj;
                        zR.sP(true);
                    } else {
                        int iIntValue = pairEncryptType4WithoutBase64 != null ? ((Integer) pairEncryptType4WithoutBase64.first).intValue() : 0;
                        zR.sP(false);
                        zR.Sj(1, cryptDataScene, iIntValue);
                    }
                }
                if (bArrEncryptV3 != null) {
                    ejPSP.sP(HttpHeaders.CONTENT_ENCODING, "union_sdk_encode");
                    ejPSP.sP("x-pgli18n", "4");
                    ejPSP.Sj("application/octet-stream;tt-data=a", bArrEncryptV3);
                } else {
                    bArrEncryptV3 = PangleEncryptManager.encryptV3(bArrHiB);
                    if (bArrEncryptV3 != null) {
                        Sj(sP(), ejPSP);
                        ejPSP.Sj("application/octet-stream;tt-data=a", bArrEncryptV3);
                    }
                }
            }
            if (bArrEncryptV3 == null) {
                JSONObject jSONObjectSj = com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
                if (TKC(jSONObjectSj)) {
                    jSONObject = jSONObjectSj;
                }
                Sj(EjP(jSONObject), ejPSP);
                ejPSP.Sj(jSONObject.toString(), dNu.EjP().uvD());
            }
            ejPSP.Sj(7);
            ejPSP.Sj("et_applog");
            ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    if (sPVar == null || !sPVar.vS()) {
                        return;
                    }
                    sPVar.EjP();
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    iOException.getMessage();
                }
            });
        }
    }

    @Override
    public void Sj(@NonNull String str, List<FilterWord> list, String str2, String str3, String str4) {
        JSONObject jSONObjectSP;
        if (com.bytedance.sdk.openadsdk.core.settings.uA.Sj() && (jSONObjectSP = sP(str, list, str2, str3, str4)) != null) {
            com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
            String strEjP = Mts.EjP("/api/ad/union/dislike_event/");
            JSONObject jSONObjectSj = Sj(PangleEncryptConstant.CryptDataScene.DISLIKE, jSONObjectSP);
            String string = jSONObjectSj != null ? jSONObjectSj.toString() : null;
            Sj(ejPSP, jSONObjectSj);
            ejPSP.sP(strEjP);
            ejPSP.EjP(string);
            ejPSP.Sj(7);
            ejPSP.Sj("dislike");
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("dislike");
                    return sj2;
                }
            });
            ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    if (sPVar == null) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                            @Override
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj2.sP("dislike");
                                return sj2;
                            }
                        });
                    } else if (sPVar.vS()) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                            @Override
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj2.sP("dislike");
                                return sj2;
                            }
                        });
                    } else {
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                            @Override
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj2.sP("dislike");
                                return sj2;
                            }
                        });
                    }
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    if (tkc != null) {
                        com.bytedance.sdk.openadsdk.utils.sU.Sj(tkc.EjP());
                    }
                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP("dislike");
                            return sj2;
                        }
                    });
                }
            });
            try {
                String strOptString = new JSONObject(str).optString(BidResponsedEx.KEY_CID, "");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("dislike", strOptString, (String) null, (String) null);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.sP(e10.getMessage(), new Object[0]);
            }
        }
    }

    private static JSONObject Sj(PangleEncryptConstant.CryptDataScene cryptDataScene, JSONObject jSONObject) {
        if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(cryptDataScene)) {
            JSONObject jSONObjectEncryptType4 = PangleEncryptManager.encryptType4(jSONObject, new dx(cryptDataScene));
            zR.Sj(jSONObjectEncryptType4);
            return jSONObjectEncryptType4;
        }
        return com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
    }

    private JSONArray Sj(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<FilterWord> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().getId());
        }
        return jSONArray;
    }

    private void Sj(RiZ.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
        sj2.Sj(-1, Dq.Sj(-1));
        tkc.Sj(-1);
        com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
    }

    public void Sj(RiZ.sP sPVar) {
        sPVar.Sj(-1, Dq.Sj(-1));
    }

    public static JSONObject Sj(AdSlot adSlot) {
        ib ibVar;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("personalized_ad", dNu.EjP().jb());
            jSONObject.put("lmt", DeviceUtils.TKC());
            jSONObject.put("gdpr", uA.sP().TEQ());
            jSONObject.put("pa_consent", uA.sP().Ym());
            jSONObject.put("is_gdpr_user", dNu.EjP().Wjd());
            if (adSlot != null && ib.Sj.containsKey(Integer.valueOf(adSlot.getCodeId())) && (ibVar = ib.Sj.get(Integer.valueOf(adSlot.getCodeId()))) != null) {
                jSONObject.put("lastadomain", ibVar.sP());
                jSONObject.put("lastbundle", ibVar.TKC());
                jSONObject.put("lastclick", ibVar.EjP());
                jSONObject.put("lastskip", ibVar.HiB());
            }
            Sj(jSONObject, "keywords", uA.sP().sef());
            Sj(jSONObject, "data", sP(adSlot));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void Sj(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    private JSONObject Sj(AdSlot adSlot, int i10, com.bytedance.sdk.openadsdk.core.model.ib ibVar) {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", adSlot.getCodeId());
            jSONObject.put("adtype", i10);
            if (!TextUtils.isEmpty(adSlot.getAdId()) || !TextUtils.isEmpty(adSlot.getCreativeId()) || !TextUtils.isEmpty(adSlot.getExt())) {
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(adSlot.getAdId())) {
                    jSONObject2.put("ad_id", adSlot.getAdId());
                }
                if (!TextUtils.isEmpty(adSlot.getCreativeId())) {
                    jSONObject2.put(CampaignEx.JSON_KEY_CREATIVE_ID, adSlot.getCreativeId());
                }
                if (adSlot.getExt() != null) {
                    jSONObject2.put("ext", adSlot.getExt());
                }
                jSONObject.put("preview_ads", jSONObject2);
            }
            if (ibVar != null) {
                jSONObject.put("render_method", ibVar.Dq);
                int i11 = ibVar.Dq;
                if (i11 == 1) {
                    Sj(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
                } else if (i11 == 2) {
                    Sj(jSONObject, "accepted_size", adSlot.getExpressViewAcceptedWidth(), adSlot.getExpressViewAcceptedHeight());
                }
            } else {
                jSONObject.put("render_method", 1);
                Sj(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            }
            jSONObject.put("ptpl_ids", sP(adSlot.getCodeId()));
            jSONObject.put("ugen_ptpl_ids", TKC(adSlot.getCodeId()));
            jSONObject.put("ptpl_ids_v3", TKC(adSlot.getCodeId() + "_v3"));
            jSONObject.put("pos", AdSlot.getPosition(i10));
            jSONObject.put("is_support_dpl", adSlot.isSupportDeepLink());
            if (adSlot.getNativeAdType() > 0 || i10 == 5) {
                jSONObject.put("is_origin_ad", true);
            }
            if (ibVar != null && (obj = ibVar.Jcg) != null) {
                jSONObject.put("session_params", obj);
            }
            int adCount = adSlot.getAdCount();
            if (adCount <= 0) {
                adCount = 1;
            }
            if (adCount > 3) {
                adCount = 3;
            }
            if (i10 == 7 || i10 == 8) {
                adCount = 1;
            }
            if (ibVar != null && ibVar.HiB != null) {
                adCount = adSlot.getAdCount();
            }
            jSONObject.put(TrackingKey.AD_COUNT, adCount);
            if (i10 == 1) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("is_rotate_banner", adSlot.getIsRotateBanner());
                jSONObject3.put("rotate_time", adSlot.getRotateTime());
                jSONObject3.put("rotate_order", adSlot.getRotateOrder());
                jSONObject3.put(NativeComponentConstants.KEY_COMPONENT_TYPE, adSlot.getBannerType());
                jSONObject.put("banner", jSONObject3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void Sj(JSONObject jSONObject, String str, int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", i10);
            jSONObject2.put("height", i11);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void Sj(JSONObject jSONObject, String str, float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", (int) f10);
            jSONObject2.put("height", (int) f11);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    @Override
    public void Sj(JSONObject jSONObject, final RiZ.sP sPVar) {
        if (!com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
            if (sPVar != null) {
                sPVar.Sj(1000, "Ad request is temporarily paused, Please contact your AM");
            }
        } else {
            if (jSONObject == null || sPVar == null) {
                return;
            }
            JSONObject jSONObjectSj = Sj(PangleEncryptConstant.CryptDataScene.REWARD_VERIFY, jSONObject);
            com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
            try {
                ejPSP.sP(com.bytedance.sdk.openadsdk.Dq.EjP.Sj(ejPSP, Mts.EjP("/api/ad/union/sdk/reward_video/reward/")));
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e10.getMessage());
            }
            Sj(ejPSP, jSONObjectSj);
            ejPSP.EjP(jSONObjectSj != null ? jSONObjectSj.toString() : "");
            ejPSP.Sj(10);
            ejPSP.Sj("reward");
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("reward");
                    return sj2;
                }
            });
            ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar2) {
                    if (sPVar2 == null) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                            @Override
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj2.sP("reward");
                                return sj2;
                            }
                        });
                        sU.this.Sj(sPVar);
                        return;
                    }
                    if (!sPVar2.vS() || TextUtils.isEmpty(sPVar2.EjP())) {
                        String strSj = Dq.Sj(-2);
                        int iSj = sPVar2.Sj();
                        if (!sPVar2.vS() && !TextUtils.isEmpty(sPVar2.sP())) {
                            strSj = sPVar2.sP();
                        }
                        sPVar.Sj(iSj, strSj);
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                            @Override
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj2.sP("reward");
                                return sj2;
                            }
                        });
                        return;
                    }
                    try {
                        JSONObject jSONObject2 = new JSONObject(sPVar2.EjP());
                        String strSP = sU.sP(jSONObject2.optInt("cypher", -1), jSONObject2.optString("message"));
                        if (!TextUtils.isEmpty(strSP)) {
                            try {
                                jSONObject2 = new JSONObject(strSP);
                            } catch (Throwable unused) {
                            }
                        }
                        sP sPVarSj = sP.Sj(jSONObject2);
                        int i10 = sPVarSj.Sj;
                        if (i10 != 20000) {
                            sPVar.Sj(i10, Dq.Sj(i10));
                        } else if (sPVarSj.TKC == null) {
                            sU.this.Sj(sPVar);
                        } else {
                            sPVar.Sj(sPVarSj);
                            com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                                @Override
                                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                    sj2.sP("reward");
                                    return sj2;
                                }
                            });
                        }
                    } catch (JSONException e11) {
                        com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", e11.getMessage());
                        sU.this.Sj(sPVar);
                    }
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    String message;
                    if (iOException != null) {
                        message = iOException.getMessage();
                    } else {
                        message = "";
                    }
                    sPVar.Sj(-2, message);
                    if (tkc != null) {
                        com.bytedance.sdk.openadsdk.utils.sU.Sj(tkc.EjP());
                    }
                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP("reward");
                            return sj2;
                        }
                    });
                }
            });
        }
    }

    @Override
    public JSONObject Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return jSONObject;
        }
        try {
            int iOptInt = jSONObject.optInt("cypher", -1);
            String strOptString = jSONObject.optString("message");
            String strOptString2 = jSONObject.optString("auction_price", "");
            String strSP = sP(iOptInt, strOptString);
            if (TextUtils.isEmpty(strSP)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(strSP);
            try {
                jSONObject2.put("auction_price", strOptString2);
            } catch (Throwable unused) {
            }
            return jSONObject2;
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }

    private void Sj(com.bytedance.sdk.component.Jcg.sP.EjP ejP, JSONObject jSONObject) {
        try {
            if (TKC(jSONObject) && jSONObject.optInt("cypher") == 4) {
                ejP.sP("x-pgli18n", "4");
                ejP.sP(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8");
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public com.bytedance.sdk.component.adexpress.Sj.TKC.Sj Sj() {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj Sj2 = null;
        if (!com.bytedance.sdk.openadsdk.core.settings.uA.Sj()) {
            return null;
        }
        long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tpl_fetch_model", "date", 0L);
        String strMts = dNu.EjP().Mts();
        String strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("tpl_fetch_model", "last_url", "");
        if (jCurrentTimeMillis <= dNu.EjP().wE() && jCurrentTimeMillis >= 0 && TextUtils.equals(strMts, strSP)) {
            String strSP2 = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("tpl_fetch_model", "model", "");
            try {
                if (!TextUtils.isEmpty(strSP2)) {
                    return com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.HiB(strSP2);
                }
            } catch (Exception unused) {
            }
        }
        try {
            com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
            String strSj = com.bytedance.sdk.openadsdk.Dq.EjP.Sj(sPVarTKC, strMts);
            sPVarTKC.sP(strSj);
            com.bytedance.sdk.component.Jcg.sP sPVarSj = sPVarTKC.Sj();
            if (sPVarSj == null || !sPVarSj.vS()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(sPVarSj.EjP());
            jSONObject.put("template_fetch_url", strSj);
            Sj2 = com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.Sj(jSONObject);
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tpl_fetch_model", "date", Long.valueOf(System.currentTimeMillis() / 1000));
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tpl_fetch_model", "model", jSONObject.toString());
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tpl_fetch_model", "last_url", strMts);
            return Sj2;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("NetApiImpl", th2.getMessage());
            return Sj2;
        }
    }

    @Override
    public void Sj(String str) {
        com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
        sPVarTKC.sP(str);
        sPVarTKC.Sj("upload_bidding");
        sPVarTKC.Sj(7);
        sPVarTKC.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
            }

            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                sPVar.EjP();
            }
        });
    }

    @Override
    public void Sj(JSONObject jSONObject, String str) {
        com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
        ejPSP.sP(str);
        Pair<String, String> pairGenerateRequestHeader = ApmHelper.generateRequestHeader();
        ejPSP.sP("cypher", (String) pairGenerateRequestHeader.first);
        ejPSP.sP("transfer-param", (String) pairGenerateRequestHeader.second);
        ejPSP.sP("x-pangle-target-idc", dNu.EjP().oWa());
        ejPSP.Sj(jSONObject);
        ejPSP.Sj(5);
        ejPSP.Sj("apm_pv");
        ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
            }

            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                sPVar.EjP();
            }
        });
    }
}
