package com.bytedance.sdk.openadsdk.core.Ym.sP;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

public class TKC {
    private static final Map<String, sP> HiB = new ConcurrentHashMap();
    private static final AtomicBoolean vS = new AtomicBoolean(false);
    private boolean EjP;
    private final String Sj;
    private boolean TKC;
    private EnumC0249TKC sP;

    public static class Sj {
        private final String Sj;
        private EnumC0249TKC sP = EnumC0249TKC.TRACKING_URL;
        private boolean TKC = false;

        public Sj(String str) {
            this.Sj = str;
        }

        public Sj Sj(boolean z10) {
            this.TKC = z10;
            return this;
        }

        public TKC Sj() {
            return new TKC(this.Sj, this.sP, Boolean.valueOf(this.TKC));
        }
    }

    enum EnumC0249TKC {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public static class sP {
        String Sj;
        float TKC;
        sU sP;

        public sP(String str, sU sUVar) {
            this(str, sUVar, -1.0f);
        }

        public sP(String str, sU sUVar, float f10) {
            this.Sj = str;
            this.sP = sUVar;
            this.TKC = f10;
        }
    }

    static {
        wE.Sj(new wE.Sj() {
            @Override
            public void Sj(Context context, Intent intent, boolean z10, int i10) {
                if (i10 == 0 || TKC.HiB.size() <= 0) {
                    return;
                }
                TKC.sP();
            }
        }, dNu.Sj());
    }

    protected TKC(String str, EnumC0249TKC enumC0249TKC, Boolean bool) {
        this.Sj = str;
        this.sP = enumC0249TKC;
        this.TKC = bool.booleanValue();
    }

    public static void sP(@NonNull List<TKC> list, @Nullable com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2, @Nullable long j10, @Nullable String str) {
        Sj(list, sj2, j10, str, null);
    }

    public boolean EjP() {
        return this.TKC;
    }

    public boolean HiB() {
        return this.EjP;
    }

    public String TKC() {
        return this.Sj;
    }

    public void j_() {
        this.EjP = true;
    }

    public static List<String> Sj(@NonNull List<TKC> list, @Nullable com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2, @Nullable long j10, @Nullable String str) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (TKC tkc : list) {
            if (tkc != null && (!tkc.HiB() || tkc.EjP())) {
                arrayList.add(tkc.TKC());
                tkc.j_();
            }
        }
        return new com.bytedance.sdk.openadsdk.core.Ym.TKC.TKC(arrayList).Sj(sj2).Sj(j10).Sj(str).Sj();
    }

    public static List<com.bytedance.sdk.openadsdk.core.Ym.sP.Sj> TKC(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.Sj.C0248Sj(jSONObjectOptJSONObject.optString("content"), jSONObjectOptJSONObject.optLong("trackingMilliseconds", 0L)).Sj());
                }
            }
        }
        return arrayList;
    }

    public static void sP() {
        if (vS.compareAndSet(false, true)) {
            Map<String, sP> map = HiB;
            HashSet<Map.Entry> hashSet = new HashSet(map.entrySet());
            map.clear();
            for (Map.Entry entry : hashSet) {
                if (entry != null) {
                    Sj((String) entry.getKey(), (sP) entry.getValue(), true);
                }
            }
            vS.set(false);
        }
    }

    public static void sP(final boolean z10, final String str, final String str2, final sP sPVar, final String str3, final boolean z11) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new Dq("dsp_track_link_result") {
            @Override
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, sPVar.Sj);
                    jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, z10);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put(TrackingKey.DESCRIPTION, str);
                    }
                    jSONObject.put("url", str3);
                    float f10 = sPVar.TKC;
                    if (f10 >= 0.0f) {
                        jSONObject.put(NotificationCompat.CATEGORY_PROGRESS, ((double) Math.round(f10 * 100.0f)) / 100.0d);
                    }
                    if (z11) {
                        jSONObject.put("retry", true);
                    }
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sPVar.sP, str2, "dsp_track_link_result", jSONObject);
            }
        });
    }

    public static List<com.bytedance.sdk.openadsdk.core.Ym.sP.sP> sP(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.sP.Sj(jSONObjectOptJSONObject.optString("content"), (float) jSONObjectOptJSONObject.optDouble("trackingFraction", 0.0d)).Sj());
                }
            }
        }
        return arrayList;
    }

    public static void Sj(@NonNull List<TKC> list, @Nullable com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2, @Nullable long j10, @Nullable String str, sP sPVar) {
        Sj(Sj(list, sj2, j10, str), sPVar);
    }

    public static void Sj(List<String> list, sP sPVar) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            if (!TextUtils.isEmpty(str)) {
                Sj(str, sPVar, false);
            }
        }
    }

    private static void Sj(final String str, final sP sPVar, final boolean z10) {
        com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
        if (sPVarTKC == null) {
            return;
        }
        sPVarTKC.Sj(true);
        sPVarTKC.sP(str);
        sPVarTKC.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar2) {
                boolean z11;
                sP sPVar3 = sPVar;
                if (sPVar3 == null || sPVar3.sP == null) {
                    return;
                }
                String str2 = null;
                if (sPVar2 == null || !sPVar2.vS()) {
                    z11 = false;
                    if (sPVar2 != null) {
                        str2 = sPVar2.Sj() + ":" + sPVar2.sP();
                        if (!z10 && (sPVar2.Sj() <= 300 || sPVar2.Sj() >= 400)) {
                            TKC.HiB.put(str, sPVar);
                        }
                    }
                } else {
                    z11 = true;
                }
                TKC.sP(z11, str2, Mts.TKC(sPVar.sP.DKa()), sPVar, str, z10);
                if (sPVar2 == null || sPVar2.Sj() != 200 || TKC.HiB.size() <= 0) {
                    return;
                }
                TKC.sP();
            }

            @Override
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                sU sUVar;
                sP sPVar2 = sPVar;
                if (sPVar2 != null && (sUVar = sPVar2.sP) != null) {
                    TKC.sP(false, iOException != null ? iOException.getMessage() : null, Mts.TKC(sUVar.DKa()), sPVar, str, z10);
                }
                if (z10 || sPVar == null) {
                    return;
                }
                TKC.HiB.put(str, sPVar);
            }
        });
    }

    public static JSONArray Sj(List<TKC> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            jSONArray.put(list.get(i10).TKC());
        }
        return jSONArray;
    }

    public static List<TKC> Sj(JSONArray jSONArray) {
        return Sj(jSONArray, false);
    }

    public static List<TKC> Sj(JSONArray jSONArray, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String strOptString = jSONArray.optString(i10);
                if (!TextUtils.isEmpty(strOptString)) {
                    arrayList.add(new Sj(strOptString).Sj(z10).Sj());
                }
            }
        }
        return arrayList;
    }
}
