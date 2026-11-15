package com.bytedance.sdk.openadsdk.uvD;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj implements Comparable<Sj> {
    private int HiB;
    private int Jcg;
    private int TKC;
    private final String sP;
    private long sef;
    private final ArrayList<Long> Sj = new ArrayList<>();
    private final ArrayList<Long> EjP = new ArrayList<>();
    private final ArrayList<Long> vS = new ArrayList<>();
    private final ArrayList<Long> Dq = new ArrayList<>();
    private final HashMap<String, sP> uA = new HashMap<>();
    private int TEQ = 0;
    private int Ym = 0;

    private final HashMap<String, sP> f20524aa = new HashMap<>();
    private int Fmk = 0;
    private final ArrayList<String> Zq = new ArrayList<>();

    public Sj(String str) {
        this.sP = str;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0107 A[PHI: r10 r14
      0x0107: PHI (r10v3 int) = (r10v2 int), (r10v5 int), (r10v5 int) binds: [B:34:0x00e6, B:39:0x00fa, B:41:0x00ff] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r14v2 long) = (r14v1 long), (r14v4 long), (r14v4 long) binds: [B:34:0x00e6, B:39:0x00fa, B:41:0x00ff] A[DONT_GENERATE, DONT_INLINE]] */
    private void sP(@NonNull JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i10;
        int i11;
        int i12;
        long j10;
        HashSet hashSet;
        HashSet hashSet2;
        HashSet hashSet3;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        int[] iArrAa = com.bytedance.sdk.openadsdk.vS.Sj.Sj().aa();
        long j11 = 60000;
        if (iArrAa != null) {
            int i13 = 0;
            while (i13 < iArrAa.length) {
                int i14 = iArrAa[i13];
                long j12 = jElapsedRealtime - (((long) i14) * j11);
                Iterator<String> it = this.f20524aa.keySet().iterator();
                long j13 = 0;
                while (it.hasNext()) {
                    String next = it.next();
                    Iterator<String> it2 = it;
                    sP sPVar = this.f20524aa.get(next);
                    if (sPVar != null) {
                        long jSj = sPVar.Sj(j12, jElapsedRealtime);
                        j13 += jSj;
                        if (jSj <= 0 && i13 == iArrAa.length - 1) {
                            hashSet4.add(next);
                        }
                    }
                    it = it2;
                }
                if (j13 != 0) {
                    jSONObject.put("lp_stay_t_".concat(String.valueOf(i14)), j13);
                    hashSet2 = hashSet4;
                    hashSet3 = hashSet5;
                    long jOptInt = ((long) jSONObject2.optInt("lp_stay_t_".concat(String.valueOf(i14)))) + j13;
                    if (jOptInt != 0) {
                        jSONObject2.put("lp_stay_t_".concat(String.valueOf(i14)), jOptInt);
                    }
                } else {
                    hashSet2 = hashSet4;
                    hashSet3 = hashSet5;
                }
                i13++;
                hashSet4 = hashSet2;
                hashSet5 = hashSet3;
                j11 = 60000;
            }
        }
        HashSet hashSet6 = hashSet4;
        HashSet hashSet7 = hashSet5;
        int[] iArrFmk = com.bytedance.sdk.openadsdk.vS.Sj.Sj().Fmk();
        if (iArrFmk != null) {
            int i15 = 0;
            while (i15 < iArrFmk.length) {
                int i16 = iArrFmk[i15];
                long j14 = jElapsedRealtime - (((long) i16) * 60000);
                Iterator<String> it3 = this.uA.keySet().iterator();
                int i17 = 0;
                long j15 = 0;
                while (it3.hasNext()) {
                    String next2 = it3.next();
                    Iterator<String> it4 = it3;
                    sP sPVar2 = this.uA.get(next2);
                    if (sPVar2 != null) {
                        long jSj2 = sPVar2.Sj(j14, jElapsedRealtime);
                        j15 += jSj2;
                        if (jSj2 > DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
                            i17++;
                        }
                        if (jSj2 > 0 || i15 != iArrFmk.length - 1) {
                            hashSet = hashSet7;
                        } else {
                            hashSet = hashSet7;
                            hashSet.add(next2);
                        }
                    } else {
                        hashSet = hashSet7;
                    }
                    hashSet7 = hashSet;
                    it3 = it4;
                }
                HashSet hashSet8 = hashSet7;
                if (j15 != 0) {
                    jSONObject.put("v_stay_t_".concat(String.valueOf(i16)), j15);
                    j10 = jElapsedRealtime;
                    long jOptInt2 = ((long) jSONObject2.optInt("v_stay_t_".concat(String.valueOf(i16)))) + j15;
                    if (jOptInt2 != 0) {
                        jSONObject2.put("v_stay_t_".concat(String.valueOf(i16)), jOptInt2);
                    }
                } else {
                    j10 = jElapsedRealtime;
                }
                if (i17 != 0) {
                    jSONObject.put("v_20s_play_c_".concat(String.valueOf(i16)), i17);
                    int iOptInt = jSONObject2.optInt("v_20s_play_c_".concat(String.valueOf(i16))) + i17;
                    if (iOptInt != 0) {
                        jSONObject2.put("v_20s_play_c_".concat(String.valueOf(i16)), iOptInt);
                    }
                }
                i15++;
                hashSet7 = hashSet8;
                jElapsedRealtime = j10;
            }
        }
        HashSet hashSet9 = hashSet7;
        if (!hashSet6.isEmpty()) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                this.f20524aa.remove((String) it5.next());
            }
        }
        if (!hashSet9.isEmpty()) {
            Iterator it6 = hashSet9.iterator();
            while (it6.hasNext()) {
                this.uA.remove((String) it6.next());
            }
        }
        if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().Zq() && (i12 = this.TEQ) != 0) {
            jSONObject.put("v_stay_t_s", i12);
            int iOptInt2 = jSONObject2.optInt("v_stay_t_s") + this.TEQ;
            if (iOptInt2 != 0) {
                jSONObject2.put("v_stay_t_s", iOptInt2);
            }
        }
        if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().sef() && (i11 = this.Fmk) != 0) {
            jSONObject.put("lp_stay_t_s", i11);
            int iOptInt3 = jSONObject2.optInt("lp_stay_t_s") + this.Fmk;
            if (iOptInt3 != 0) {
                jSONObject2.put("lp_stay_t_s", iOptInt3);
            }
        }
        if (!com.bytedance.sdk.openadsdk.vS.Sj.Sj().dNu() || (i10 = this.Ym) == 0) {
            return;
        }
        jSONObject.put("v_30p_play_c_s", i10);
        int iOptInt4 = jSONObject2.optInt("v_30p_play_c_s") + this.Ym;
        if (iOptInt4 != 0) {
            jSONObject2.put("v_30p_play_c_s", iOptInt4);
        }
    }

    public void Sj(@NonNull String str, @Nullable String str2) {
        sP sPVar;
        sP sPVar2;
        sP sPVar3;
        sP sPVar4;
        sP sPVar5;
        sP sPVar6;
        str.hashCode();
        switch (str) {
            case "landingContinue":
                if (!TextUtils.isEmpty(str2) && (sPVar = this.f20524aa.get(str2)) != null) {
                    sPVar.EjP(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingPause":
                if (!TextUtils.isEmpty(str2) && (sPVar2 = this.f20524aa.get(str2)) != null) {
                    sPVar2.TKC(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingStart":
                if (!TextUtils.isEmpty(str2) && this.f20524aa.get(str2) == null) {
                    sP sPVar7 = new sP();
                    this.f20524aa.put(str2, sPVar7);
                    sPVar7.Sj(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_over":
            case "feed_break":
            case "videoForceBreak":
            case "play_error":
                if (!TextUtils.isEmpty(str2) && (sPVar3 = this.uA.get(str2)) != null && sPVar3.Sj() != sP.HiB) {
                    sPVar3.sP(SystemClock.elapsedRealtime());
                    if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().Zq()) {
                        this.TEQ = (int) (((long) this.TEQ) + sPVar3.Sj(this.sef, SystemClock.elapsedRealtime()));
                    }
                    break;
                }
                break;
            case "feed_play":
                this.vS.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().Dq()) {
                    this.Jcg++;
                }
                if (!TextUtils.isEmpty(str2) && this.uA.get(str2) == null) {
                    sP sPVar8 = new sP();
                    this.uA.put(str2, sPVar8);
                    sPVar8.Sj(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "show":
                this.Sj.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().vS()) {
                    this.TKC++;
                    break;
                }
                break;
            case "click":
                if (!this.Zq.contains(str2)) {
                    if (this.Zq.size() > 50) {
                        this.Zq.subList(0, 25).clear();
                    }
                    this.Zq.add(str2);
                    this.EjP.add(Long.valueOf(SystemClock.elapsedRealtime()));
                    if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().Jcg()) {
                        this.HiB++;
                    }
                    break;
                }
                break;
            case "feed_continue":
                if (!TextUtils.isEmpty(str2) && (sPVar4 = this.uA.get(str2)) != null) {
                    sPVar4.EjP(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_pause":
                if (!TextUtils.isEmpty(str2) && (sPVar5 = this.uA.get(str2)) != null) {
                    sPVar5.TKC(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingFinish":
                if (!TextUtils.isEmpty(str2) && (sPVar6 = this.f20524aa.get(str2)) != null && sPVar6.Sj() != sP.HiB) {
                    sPVar6.sP(SystemClock.elapsedRealtime());
                    if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().sef()) {
                        this.Fmk = (int) (((long) this.Fmk) + sPVar6.Sj(this.sef, SystemClock.elapsedRealtime()));
                    }
                    break;
                }
                break;
            case "videoPercent30":
                if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().dNu()) {
                    this.Ym++;
                    break;
                }
                break;
            case "dislike":
                this.Dq.add(Long.valueOf(SystemClock.elapsedRealtime()));
                break;
        }
    }

    public JSONObject Sj(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            Sj(jSONObject2, jSONObject);
            sP(jSONObject2, jSONObject);
        } catch (Throwable th2) {
            sU.sP(th2.getMessage(), new Object[0]);
        }
        return jSONObject2;
    }

    public String sP() {
        return this.sP;
    }

    private void Sj(String str, JSONObject jSONObject, ArrayList<Long> arrayList, int[] iArr, long j10, JSONObject jSONObject2) throws JSONException {
        int size = arrayList.size() - 1;
        int i10 = 0;
        for (int i11 : iArr) {
            long j11 = j10 - (((long) i11) * 60000);
            while (size >= 0 && arrayList.get(size).longValue() >= j11) {
                i10++;
                size--;
            }
            if (i10 != 0) {
                jSONObject.put(str + i11, i10);
                int iOptInt = jSONObject2.optInt(str + i11) + i10;
                if (iOptInt != 0) {
                    jSONObject2.put(str + i11, iOptInt);
                }
            }
        }
        while (size >= 0) {
            arrayList.remove(0);
            size--;
        }
    }

    private void Sj(@NonNull JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i10;
        int i11;
        int i12;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Sj("show_c_", jSONObject, this.Sj, com.bytedance.sdk.openadsdk.vS.Sj.Sj().uA(), jElapsedRealtime, jSONObject2);
        Sj("click_c_", jSONObject, this.EjP, com.bytedance.sdk.openadsdk.vS.Sj.Sj().TEQ(), jElapsedRealtime, jSONObject2);
        Sj("v_play_c_", jSONObject, this.vS, com.bytedance.sdk.openadsdk.vS.Sj.Sj().Ym(), jElapsedRealtime, jSONObject2);
        Sj("dislike_c_", jSONObject, this.Dq, com.bytedance.sdk.openadsdk.vS.Sj.Sj().uvD(), jElapsedRealtime, jSONObject2);
        if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().vS() && (i12 = this.TKC) != 0) {
            jSONObject.put("show_c_s", i12);
            int iOptInt = jSONObject2.optInt("show_c_s") + this.TKC;
            if (iOptInt != 0) {
                jSONObject2.put("show_c_s", iOptInt);
            }
        }
        if (com.bytedance.sdk.openadsdk.vS.Sj.Sj().Jcg() && (i11 = this.HiB) != 0) {
            jSONObject.put("click_c_s", i11);
            int iOptInt2 = jSONObject2.optInt("click_c_s") + this.HiB;
            if (iOptInt2 != 0) {
                jSONObject2.put("click_c_s", iOptInt2);
            }
        }
        if (!com.bytedance.sdk.openadsdk.vS.Sj.Sj().Dq() || (i10 = this.Jcg) == 0) {
            return;
        }
        jSONObject.put("v_play_c_s", i10);
        int iOptInt3 = jSONObject2.optInt("v_play_c_s") + this.Jcg;
        if (iOptInt3 != 0) {
            jSONObject2.put("v_play_c_s", iOptInt3);
        }
    }

    public void Sj() {
        this.sef = SystemClock.elapsedRealtime();
        this.Ym = 0;
        this.HiB = 0;
        this.TKC = 0;
        this.Fmk = 0;
        this.TEQ = 0;
        this.Jcg = 0;
    }

    @Override
    public int compareTo(Sj sj2) {
        return sj2.TKC - this.TKC;
    }
}
