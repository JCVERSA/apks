package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class Jcg {
    private Sj Dq;
    private PAGBannerAdLoadListener EjP;
    private List<com.bytedance.sdk.openadsdk.core.model.sU> Jcg;
    private AdSlot Sj;
    private final Context TKC;
    private List<com.bytedance.sdk.openadsdk.core.model.sU> vS;
    private final AtomicBoolean HiB = new AtomicBoolean(false);
    private int uA = 5;
    private final WMZ TEQ = WMZ.TKC();
    private final com.bytedance.sdk.openadsdk.core.RiZ sP = com.bytedance.sdk.openadsdk.core.dNu.TKC();

    public interface Sj {
    }

    private Jcg(Context context) {
        if (context != null) {
            this.TKC = context.getApplicationContext();
        } else {
            this.TKC = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        }
    }

    public static Jcg Sj(Context context) {
        return new Jcg(context);
    }

    public void Sj(AdSlot adSlot, int i10, @NonNull com.bytedance.sdk.openadsdk.common.vS vSVar, int i11) {
        Sj(adSlot, i10, vSVar, null, i11);
    }

    public void Sj(AdSlot adSlot, int i10, @Nullable com.bytedance.sdk.openadsdk.common.vS vSVar, @Nullable Sj sj2, int i11) {
        this.TEQ.HiB();
        if (this.HiB.get()) {
            return;
        }
        this.uA = i10;
        this.HiB.set(true);
        this.Sj = adSlot;
        if (vSVar instanceof PAGBannerAdLoadListener) {
            this.EjP = (PAGBannerAdLoadListener) vSVar;
        }
        this.Dq = sj2;
        Sj(adSlot, vSVar);
    }

    private void Sj(final AdSlot adSlot, com.bytedance.sdk.openadsdk.common.vS vSVar) {
        if (adSlot == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.ib ibVar = new com.bytedance.sdk.openadsdk.core.model.ib();
        ibVar.Dq = 2;
        this.sP.Sj(adSlot, ibVar, this.uA, new com.bytedance.sdk.openadsdk.core.RiZ.Sj() {
            @Override
            public void Sj(int i10, String str) {
                Jcg.this.Sj(i10, str);
            }

            @Override
            public void Sj(final com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                if (sj2.EjP() == null || sj2.EjP().isEmpty()) {
                    Jcg.this.Sj(-3, com.bytedance.sdk.openadsdk.core.Dq.Sj(-3));
                    tkc.Sj(-3);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                Jcg.this.vS = sj2.EjP();
                Jcg.this.Jcg = sj2.EjP();
                Jcg.this.Sj(adSlot);
                if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                    Log.e("ExpressAdLoadManager", "onAdLoad: net work response duration = " + Jcg.this.TEQ.EjP() + "run in  " + Thread.currentThread().getName());
                }
                if (Jcg.this.HiB.getAndSet(false)) {
                    JcM.Sj(new Runnable() {
                        @Override
                        public void run() {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            if (Jcg.this.Jcg != null && Jcg.this.Jcg.size() > 0) {
                                Jcg jcg = Jcg.this;
                                jcg.Sj(sj2, jcg.TEQ, jElapsedRealtime);
                                if (Jcg.this.Dq != null) {
                                    Sj unused = Jcg.this.Dq;
                                    List unused2 = Jcg.this.Jcg;
                                }
                            } else if (Jcg.this.Dq != null) {
                                Sj unused3 = Jcg.this.Dq;
                            }
                            Jcg.this.Sj();
                        }
                    });
                }
            }
        });
    }

    public void Sj(AdSlot adSlot) {
        List<com.bytedance.sdk.openadsdk.core.model.sU> list = this.vS;
        if (list == null) {
            return;
        }
        for (com.bytedance.sdk.openadsdk.core.model.sU sUVar : list) {
            if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(sUVar) && sUVar.UHs() != null && sUVar.UHs().x() != null) {
                if (com.bytedance.sdk.openadsdk.core.dNu.EjP().HiB(String.valueOf(sUVar.If())) && com.bytedance.sdk.openadsdk.core.dNu.EjP().UHs()) {
                    com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = com.bytedance.sdk.openadsdk.core.model.sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).TKC(), sUVar);
                    sPVarSj.Sj("material_meta", sUVar);
                    sPVarSj.Sj("ad_slot", adSlot);
                    com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, null);
                }
            }
        }
    }

    @Nullable
    private PAGBannerAd Sj(WMZ wmz) {
        int width;
        int height;
        PAGBannerAd pAGBannerAdSj = null;
        for (com.bytedance.sdk.openadsdk.core.model.sU sUVar : this.Jcg) {
            PAGBannerSize pAGBannerSizeOvo = sUVar.Ovo();
            float fMin = Math.min(this.Sj.getExpressViewAcceptedHeight(), 250.0f);
            if (pAGBannerSizeOvo != null) {
                width = pAGBannerSizeOvo.getWidth();
                height = pAGBannerSizeOvo.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            float expressViewAcceptedWidth = width > 0 ? width : this.Sj.getExpressViewAcceptedWidth();
            if (height > 0) {
                fMin = height;
            }
            this.Sj.setExpressViewAccepted(expressViewAcceptedWidth, fMin);
            pAGBannerAdSj = Sj(sUVar);
            if (pAGBannerAdSj != null) {
                break;
            }
        }
        return pAGBannerAdSj;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, WMZ wmz, long j10) {
        if (this.EjP != null) {
            PAGBannerAd pAGBannerAdSj = Sj(wmz);
            if (pAGBannerAdSj != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long jEjP = this.TEQ.EjP();
                if (!TextUtils.isEmpty(this.Sj.getBidAdm())) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(this.Jcg.get(0), jEjP);
                }
                this.EjP.onAdLoaded(pAGBannerAdSj);
                Sj(sj2, jEjP, j10, jElapsedRealtime);
                return;
            }
            this.EjP.onError(103, com.bytedance.sdk.openadsdk.core.Dq.Sj(103));
            Sj(103);
        }
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, final long j10, final long j11, final long j12) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        try {
            if (com.bytedance.sdk.openadsdk.core.dNu.EjP().qRN() && com.bytedance.sdk.openadsdk.dx.Sj.EjP()) {
                try {
                    if (this.uA != 1 || sj2 == null || sj2.EjP() == null || sj2.EjP().isEmpty() || sj2.Sj() == null || (sUVar = sj2.EjP().get(0)) == null) {
                        return;
                    }
                    final JSONObject jSONObjectSj = sj2.Sj();
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVar, jSONObjectSj.optString("tag", ""), "load_ad_time", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() {
                        @Override
                        public JSONObject Sj() {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                long jOptLong = jSONObjectSj.optLong("callback_start", 0L);
                                long j13 = j11;
                                long j14 = j13 - jOptLong;
                                long j15 = j12 - j13;
                                long jOptLong2 = jSONObjectSj.optLong("duration", 0L);
                                JSONObject jSONObjectOptJSONObject = jSONObjectSj.optJSONObject("extra_data");
                                if (jSONObjectOptJSONObject == null) {
                                    jSONObjectOptJSONObject = new JSONObject();
                                }
                                jSONObjectOptJSONObject.put("thread_dispatch_duration", j14);
                                jSONObjectOptJSONObject.put("build_banner_ad_duration", j15);
                                jSONObjectOptJSONObject.put("ad_load_duration_full", j10);
                                jSONObject.put("duration", jOptLong2);
                                jSONObject.put("ad_extra_data", jSONObjectOptJSONObject.toString());
                                if (com.bytedance.sdk.component.utils.Zq.EjP()) {
                                    jSONObject.toString();
                                }
                            } catch (Throwable unused) {
                            }
                            return jSONObject;
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private void Sj(int i10) {
        String strCKW;
        List<com.bytedance.sdk.openadsdk.core.model.sU> list = this.vS;
        if (list != null && list.size() > 0) {
            strCKW = this.vS.get(0).cKW();
        } else {
            strCKW = "";
        }
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj(this.uA).TKC(this.Sj.getCodeId()).HiB(strCKW).sP(i10).vS(com.bytedance.sdk.openadsdk.core.Dq.Sj(i10)));
    }

    public void Sj(int i10, String str) {
        if (this.HiB.getAndSet(false)) {
            PAGBannerAdLoadListener pAGBannerAdLoadListener = this.EjP;
            if (pAGBannerAdLoadListener != null) {
                pAGBannerAdLoadListener.onError(i10, str);
            }
            Sj();
        }
    }

    private PAGBannerAd Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (this.uA != 1) {
            return null;
        }
        if (sUVar.UHs() != null) {
            return new com.bytedance.sdk.openadsdk.core.TKC.vS(this.TKC, sUVar, this.Sj);
        }
        return new com.bytedance.sdk.openadsdk.core.TKC.EjP(this.TKC, sUVar, this.Sj);
    }

    public void Sj() {
        List<com.bytedance.sdk.openadsdk.core.model.sU> list = this.vS;
        if (list != null) {
            list.clear();
        }
        List<com.bytedance.sdk.openadsdk.core.model.sU> list2 = this.Jcg;
        if (list2 != null) {
            list2.clear();
        }
    }
}
