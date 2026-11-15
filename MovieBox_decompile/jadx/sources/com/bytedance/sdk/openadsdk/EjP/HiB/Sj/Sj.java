package com.bytedance.sdk.openadsdk.EjP.HiB.Sj;

import a6.b;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import b6.a;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Dq;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.EjP;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Fmk;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.HiB;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.TEQ;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.sP;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.sef;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.uA;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.vS;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ib;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj {
    private static final Map<a, Zq> Sj = Collections.synchronizedMap(new WeakHashMap());

    public static void EjP(a aVar, Zq.Sj sj2) {
        Zq zq2;
        if (aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        sP sPVar = new sP();
        sPVar.Sj(sj2.sP());
        sPVar.sP(jTKC);
        sPVar.Sj(sj2.EjP());
        sPVar.sP(sj2.HiB());
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP), sPVar);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "endcard_skip", jSONObject);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
        }
    }

    public static void HiB(a aVar, Zq.Sj sj2) {
        Zq zq2;
        if (aVar == null || sj2 == null || sj2.uA() <= 0 || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jTKC = sj2.TKC();
        Fmk fmk = new Fmk();
        fmk.Sj(sj2.sP());
        fmk.sP(jTKC);
        fmk.Sj(sj2.uA());
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, fmk);
        sj3.Sj(sj2.TEQ());
        Sj(sj3, "play_buffer");
    }

    public static void TKC(a aVar, Zq.Sj sj2) {
        Zq zq2;
        if (aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        sef sefVar = new sef(sj2.aa());
        sefVar.Sj(sj2.sP());
        sefVar.sP(jTKC);
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, sefVar);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "play_error", jSONObject);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e11);
        }
        Sj.remove(aVar);
    }

    public static JSONObject Sj(sU sUVar, String str, int i10, TKC tkc) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("session_id", str);
            }
            if (i10 > 0) {
                jSONObject.put("play_type", String.valueOf(i10));
            }
            if (sUVar != null) {
                b bVarUHs = sUVar.UHs();
                if (bVarUHs != null) {
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, bVarUHs.H());
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, Long.valueOf(bVarUHs.g()));
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, bVarUHs.x());
                    jSONObject.put("player_type", tkc.Zq());
                    jSONObject.put("video_encode_type", tkc.Ym() ? 1 : 0);
                }
                jSONObject.put("dp_creative_type", sUVar.AE());
            }
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
        }
        return jSONObject;
    }

    public static void sP(com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj<uA> sj2) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_video_cancel", sj2);
    }

    public static void sP(a aVar, Zq.Sj sj2) {
        Zq zq2;
        if (aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        if (jTKC <= 0 || jSj <= 0) {
            return;
        }
        HiB hiB = new HiB();
        hiB.Sj(sj2.sP());
        hiB.sP(jTKC);
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, hiB);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "feed_continue", jSONObject);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e11);
        }
    }

    public static void Sj(com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj<TEQ> sj2) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_video_error", sj2);
    }

    public static void Sj(sU sUVar, a aVar, TKC tkc) {
        if (sUVar == null || aVar == null || tkc == null) {
            return;
        }
        String strSj = ib.Sj();
        int i10 = CacheDirFactory.getICacheDir(sUVar.Gn()).Sj(tkc) ? 1 : 2;
        Sj.put(aVar, new Zq(SystemClock.elapsedRealtime(), strSj, i10, tkc, sUVar));
        JSONObject jSONObjectSj = Sj(sUVar, strSj, i10, tkc);
        String strSj2 = Mts.Sj(sUVar);
        try {
            int i11 = tkc.EjP;
            if (i11 > 0) {
                jSONObjectSj.put("play_time", i11);
            }
            jSONObjectSj.put("is_mute", tkc.Dq() ? 1 : 0);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVar, strSj2, jSONObjectSj, null);
        sj2.Sj(tkc.Zq() == -1);
        Sj(sj2, "play_start");
    }

    public static String EjP(TKC tkc) {
        return new File(tkc.sP(), tkc.sef()).getAbsolutePath();
    }

    public static long TKC(TKC tkc) {
        if (tkc == null) {
            return 0L;
        }
        b bVarDx = tkc.Ym() ? tkc.dx() : tkc.sU();
        if (bVarDx != null) {
            return Double.valueOf(bVarDx.K() * 1000.0d).longValue();
        }
        return 0L;
    }

    public static void sP(a aVar, Zq.Sj sj2, Jcg jcg) {
        if (aVar == null || sj2 == null) {
            return;
        }
        HiB(aVar, sj2);
        Zq zq2 = Sj.get(aVar);
        if (zq2 == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        vS vSVar = new vS();
        vSVar.sP(sj2.sP());
        vSVar.Sj(jTKC);
        vSVar.Sj(sj2.Dq());
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, vSVar);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "feed_over", jSONObject, jcg);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e11);
        }
        Sj.remove(aVar);
    }

    public static void Sj(Context context, a aVar, Zq.Sj sj2, Jcg jcg) {
        Zq zq2;
        if (context == null || aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        if (!sj2.TEQ()) {
            Sj(sUVarHiB, tkcEjP, sj2);
        }
        Dq dq2 = new Dq();
        dq2.Sj(sj2.Ym() ? 1 : 0);
        dq2.sP(CacheDirFactory.getICacheDir(sUVarHiB.Gn()).sP(tkcEjP));
        dq2.Sj(SystemClock.elapsedRealtime() - zq2.Sj());
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, dq2);
        sj3.Sj(sj2.TEQ());
        Sj(sj3, "feed_play", jcg);
    }

    public static void Sj(a aVar, Zq.Sj sj2) {
        Zq zq2;
        if (aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        if (jTKC <= 0 || jSj <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Jcg jcg = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Jcg();
        jcg.Sj(sj2.sP());
        jcg.sP(jTKC);
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, jcg);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "feed_pause", jSONObject);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e11);
        }
    }

    public static void Sj(a aVar, Zq.Sj sj2, Jcg jcg) {
        Zq zq2;
        if (aVar == null || sj2 == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        long jSj = sj2.Sj();
        long jTKC = sj2.TKC();
        EjP ejP = new EjP();
        ejP.sP(sj2.sP());
        ejP.Sj(jTKC);
        ejP.Sj(sj2.Jcg());
        ejP.sP(sj2.Dq());
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        int i10 = tkcEjP.EjP;
        if (i10 > 0) {
            try {
                jSONObjectSj.put("play_time", i10);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, ejP);
        sj3.Sj(sj2.TEQ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", jSj);
            jSONObject.put("percent", sj2.vS());
            Sj(sj3, "feed_break", jSONObject, jcg);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e11);
        }
    }

    public static void Sj(a aVar, boolean z10, String str) {
        Zq zq2;
        if (aVar == null || (zq2 = Sj.get(aVar)) == null) {
            return;
        }
        TKC tkcEjP = zq2.EjP();
        sU sUVarHiB = zq2.HiB();
        if (tkcEjP == null || sUVarHiB == null) {
            return;
        }
        JSONObject jSONObjectSj = Sj(sUVarHiB, zq2.sP(), zq2.TKC(), tkcEjP);
        try {
            int i10 = tkcEjP.EjP;
            if (i10 > 0) {
                jSONObjectSj.put("play_time", i10);
            }
            jSONObjectSj.put("is_mute", z10 ? 1 : 0);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("from", str);
            jSONObjectSj.put("pag_json_data", jSONObject);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.VideoEventManager", "", e10);
        }
        Sj(new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj(sUVarHiB, Mts.Sj(sUVarHiB), jSONObjectSj, null), "mute_state_change");
    }

    private static void Sj(com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2, String str) {
        Sj(sj2, str, (JSONObject) null, (Jcg) null);
    }

    private static void Sj(com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2, String str, JSONObject jSONObject) {
        Sj(sj2, str, jSONObject, (Jcg) null);
    }

    private static void Sj(com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2, String str, Jcg jcg) {
        Sj(sj2, str, (JSONObject) null, jcg);
    }

    private static void Sj(final com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2, String str, final JSONObject jSONObject, final Jcg jcg) {
        if (sj2 == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (sj2.HiB() && !TextUtils.isEmpty(sj2.sP())) {
            String strSP = sj2.sP();
            strSP.hashCode();
            if (strSP.equals("stream") || strSP.equals("embeded_ad")) {
                str = "customer_".concat(String.valueOf(str));
            }
        }
        final String str2 = str;
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sj2.Sj(), sj2.sP(), str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() {
            @Override
            public JSONObject Sj() {
                Jcg jcg2;
                try {
                    JSONObject jSONObjectTKC = sj2.TKC();
                    if (sj2.EjP() != null) {
                        sj2.EjP().Sj(jSONObjectTKC);
                    }
                    if (("feed_play".equals(str2) || "feed_over".equals(str2) || "feed_break".equals(str2)) && (jcg2 = jcg) != null) {
                        jcg2.Sj(jSONObjectTKC);
                    }
                    jSONObject.put("ad_extra_data", jSONObjectTKC.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    private static void Sj(final sU sUVar, final TKC tkc, final Zq.Sj sj2) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("pangle_video_play_state", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", Sj.TKC(tkc));
                jSONObject.put("player_duration", sj2.TKC());
                jSONObject.put("cache_path_type", CacheDirFactory.getCacheType());
                jSONObject.put("url", tkc.Fmk());
                jSONObject.put("path", Sj.EjP(tkc));
                jSONObject.put("player_type", tkc.Zq());
                com.bytedance.sdk.openadsdk.Zq.Sj.EjP ejPSj = com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("pangle_video_play_state");
                sU sUVar2 = sUVar;
                return ejPSj.Sj(sUVar2 != null ? sUVar2.DKa() : 0).sP(jSONObject.toString());
            }
        });
    }
}
