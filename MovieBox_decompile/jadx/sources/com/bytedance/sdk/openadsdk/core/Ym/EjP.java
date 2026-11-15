package com.bytedance.sdk.openadsdk.core.Ym;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EjP {
    private final Sj Fmk;
    private boolean RiZ;
    private boolean TzV;
    private sU dNu;

    private String f20424dx;
    private boolean sU;
    private long uvD;
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Sj = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> sP = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> TKC = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> EjP = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> HiB = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> vS = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Jcg = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Dq = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> uA = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> TEQ = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.sP> Ym = new ArrayList();

    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.Sj> f20423aa = new ArrayList();
    private final AtomicBoolean sef = new AtomicBoolean(false);
    private final AtomicBoolean Zq = new AtomicBoolean(false);

    public EjP(Sj sj2) {
        this.Fmk = sj2;
    }

    public void Dq(long j10) {
        Sj(j10, this.uA, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
    }

    public void EjP(long j10) {
        Sj(j10, this.HiB, null, new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("video_progress", this.dNu, 1.0f));
    }

    public void HiB(long j10) {
        if (this.Zq.compareAndSet(false, true)) {
            Sj(j10, this.vS, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
        }
    }

    public void Jcg(long j10) {
        Sj(j10, this.Dq, null, new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("click", this.dNu));
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2) {
        Sj(-1L, this.Sj, sj2);
    }

    public void TEQ(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.Sj.addAll(list);
    }

    public void TKC(long j10) {
        Sj(j10, this.EjP, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
    }

    public void Ym(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.uA.addAll(list);
    }

    public void aa(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.TEQ.addAll(list);
    }

    public void sP(long j10) {
        Sj(j10, this.TKC, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
    }

    public void uA(long j10) {
        Sj(j10, this.TEQ, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
    }

    public void vS(long j10) {
        Sj(j10, this.Jcg, (com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj) null);
    }

    private void sP(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.dNu, this.f20424dx, "vast_play_track", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void Dq(List<com.bytedance.sdk.openadsdk.core.Ym.sP.sP> list) {
        this.Ym.addAll(list);
        Collections.sort(this.Ym);
    }

    public void EjP(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.HiB.addAll(list);
    }

    public void Jcg(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.Dq.addAll(list);
    }

    public void Sj(long j10) {
        if (this.sef.compareAndSet(false, true)) {
            Sj(j10, this.sP, null, new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("show_impression", this.dNu));
        }
    }

    public void TKC(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.EjP.addAll(list);
    }

    public void uA(List<com.bytedance.sdk.openadsdk.core.Ym.sP.Sj> list) {
        this.f20423aa.addAll(list);
        Collections.sort(this.f20423aa);
    }

    public void vS(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.Jcg.addAll(list);
    }

    private JSONArray TKC() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.bytedance.sdk.openadsdk.core.Ym.sP.Sj> it = this.f20423aa.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().Sj());
        }
        return jSONArray;
    }

    public void HiB(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.vS.addAll(list);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0077  */
    public void Sj(long j10, long j11, vS vSVar) {
        if (System.currentTimeMillis() - this.uvD >= 1000 && j10 >= 0 && j11 > 0) {
            this.uvD = System.currentTimeMillis();
            float f10 = j10 / j11;
            List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> listSj = Sj(j10, f10);
            float f11 = 0.25f;
            if (f10 >= 0.25f && !this.TzV) {
                sP("firstQuartile");
                this.TzV = true;
                if (vSVar != null) {
                    Sj(vSVar, 6);
                }
            } else {
                f11 = 0.5f;
                if (f10 >= 0.5f && !this.RiZ) {
                    sP(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
                    this.RiZ = true;
                    if (vSVar != null) {
                        Sj(vSVar, 7);
                    }
                } else {
                    f11 = 0.75f;
                    if (f10 >= 0.75f && !this.sU) {
                        sP("thirdQuartile");
                        this.sU = true;
                        if (vSVar != null) {
                            Sj(vSVar, 8);
                        }
                    }
                    if (f10 < 0.03f) {
                        f10 = 0.0f;
                    }
                    Sj(j10, listSj, null, new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("video_progress", this.dNu, f10));
                }
            }
            f10 = f11;
            if (f10 < 0.03f) {
                f10 = 0.0f;
            }
            Sj(j10, listSj, null, new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("video_progress", this.dNu, f10));
        }
    }

    public void sP(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.TKC.addAll(list);
    }

    private JSONArray sP() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.bytedance.sdk.openadsdk.core.Ym.sP.sP> it = this.Ym.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().sP());
        }
        return jSONArray;
    }

    private void Sj(final vS vSVar, final int i10) {
        com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() {
            @Override
            public void run() {
                vS vSVar2 = vSVar;
                if (vSVar2 != null) {
                    vSVar2.Sj(i10);
                }
            }
        });
    }

    private void Sj(long j10, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list, com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2, com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP sPVar) {
        Sj sj3 = this.Fmk;
        com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(list, sj2, j10, sj3 != null ? sj3.Jcg() : null, sPVar);
    }

    private void Sj(long j10, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list, com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj sj2) {
        Sj(j10, list, sj2, null);
    }

    public List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Sj(long j10, float f10) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.Ym.size(); i10++) {
            com.bytedance.sdk.openadsdk.core.Ym.sP.sP sPVar = this.Ym.get(i10);
            if (sPVar.Sj(f10)) {
                arrayList.add(sPVar);
            }
        }
        for (int i11 = 0; i11 < this.f20423aa.size(); i11++) {
            com.bytedance.sdk.openadsdk.core.Ym.sP.Sj sj2 = this.f20423aa.get(i11);
            if (sj2.Sj(j10)) {
                arrayList.add(sj2);
            }
        }
        return arrayList;
    }

    public void Sj(List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) {
        this.sP.addAll(list);
    }

    public JSONObject Sj() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.Sj));
        jSONObject.put("impressionTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.sP));
        jSONObject.put("pauseTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.TKC));
        jSONObject.put("resumeTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.EjP));
        jSONObject.put("completeTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.HiB));
        jSONObject.put("closeTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.vS));
        jSONObject.put("skipTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.Jcg));
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.Dq));
        jSONObject.put("muteTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.uA));
        jSONObject.put("unMuteTrackers", com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(this.TEQ));
        jSONObject.put("fractionalTrackers", sP());
        jSONObject.put("absoluteTrackers", TKC());
        return jSONObject;
    }

    public void Sj(JSONObject jSONObject) {
        TEQ(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("errorTrackers")));
        Sj(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("impressionTrackers")));
        sP(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("pauseTrackers"), true));
        TKC(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("resumeTrackers"), true));
        EjP(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("completeTrackers")));
        HiB(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("closeTrackers")));
        vS(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("skipTrackers")));
        Jcg(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("clickTrackers")));
        Ym(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("muteTrackers"), true));
        aa(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(jSONObject.optJSONArray("unMuteTrackers"), true));
        Dq(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP(jSONObject.optJSONArray("fractionalTrackers")));
        uA(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.TKC(jSONObject.optJSONArray("absoluteTrackers")));
    }

    public void Sj(sU sUVar) {
        this.dNu = sUVar;
    }

    public void Sj(String str) {
        this.f20424dx = str;
    }

    public void Sj(String str, long j10) {
        if (TextUtils.isEmpty(str) || j10 < 0) {
            return;
        }
        uA(Collections.singletonList(new com.bytedance.sdk.openadsdk.core.Ym.sP.Sj.C0248Sj(str, j10).Sj()));
    }

    public void Sj(String str, float f10) {
        if (TextUtils.isEmpty(str) || f10 < 0.0f) {
            return;
        }
        Dq(Collections.singletonList(new com.bytedance.sdk.openadsdk.core.Ym.sP.sP.Sj(str, f10).Sj()));
    }

    public void Sj(EjP ejP) {
        TEQ(ejP.Sj);
        Sj(ejP.sP);
        sP(ejP.TKC);
        TKC(ejP.EjP);
        EjP(ejP.HiB);
        HiB(ejP.vS);
        vS(ejP.Jcg);
        Jcg(ejP.Dq);
        Ym(ejP.uA);
        aa(ejP.TEQ);
        Dq(ejP.Ym);
        uA(ejP.f20423aa);
    }
}
