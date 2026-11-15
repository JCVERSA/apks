package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import x5.b;
import y5.c;

public class Fmk {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Fmk Sj;
    private com.bytedance.sdk.component.Dq.Dq HiB;
    private final Context sP;
    private final AtomicBoolean TKC = new AtomicBoolean(false);
    private final List<sP> EjP = Collections.synchronizedList(new ArrayList());
    private final wE.Sj vS = new wE.Sj() {
        @Override
        public void Sj(Context context, Intent intent, boolean z10, int i10) {
            if (z10) {
                if (Fmk.this.HiB == null) {
                    Fmk fmk = Fmk.this;
                    fmk.HiB = new com.bytedance.sdk.openadsdk.component.reward.sP("net connect task", fmk.EjP);
                }
                com.bytedance.sdk.component.utils.uA.Sj().post(Fmk.this.HiB);
            }
        }
    };

    class AnonymousClass6 implements com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0227Sj<Object> {
        final com.bytedance.sdk.openadsdk.core.model.Sj EjP;
        final TKC HiB;
        final boolean Sj;
        final AdSlot TKC;
        final Zq sP;
        final boolean vS;

        AnonymousClass6(boolean z10, Zq zq2, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, TKC tkc, boolean z11) {
            this.Sj = z10;
            this.sP = zq2;
            this.TKC = adSlot;
            this.EjP = sj2;
            this.HiB = tkc;
            this.vS = z11;
        }

        @Override
        public void Sj(boolean z10, Object obj) {
            if (z10) {
                this.sP.sP();
            }
            if (this.Sj) {
                if (z10) {
                    aa.Sj(Fmk.this.sP).Sj(this.TKC, this.EjP);
                }
            } else {
                if (z10) {
                    if (this.HiB != null) {
                        if (this.vS || dNu.EjP().TzV() == 1) {
                            this.HiB.onAdLoaded(this.sP.Sj());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.HiB != null) {
                    if (this.vS || dNu.EjP().TzV() == 1) {
                        this.HiB.onError(-1, "");
                    }
                }
            }
        }
    }

    private static class Sj implements PAGRewardedAdLoadListener {
        private final PAGRewardedAdLoadListener EjP;
        private final boolean HiB;
        private final Context Sj;
        private final com.bytedance.sdk.openadsdk.core.model.Sj TKC;
        private final AdSlot sP;

        public Sj(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, PAGRewardedAdLoadListener pAGRewardedAdLoadListener, boolean z10) {
            this.Sj = context;
            this.sP = adSlot;
            this.TKC = sj2;
            this.EjP = pAGRewardedAdLoadListener;
            this.HiB = z10;
        }

        @Override
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            Fmk.Sj(this.Sj).Sj(this.sP, this.TKC, this.EjP, pAGRewardedAd, this.HiB);
        }

        @Override
        public void onError(int i10, String str) {
            PAGRewardedAdLoadListener pAGRewardedAdLoadListener = this.EjP;
            if (pAGRewardedAdLoadListener != null) {
                pAGRewardedAdLoadListener.onError(i10, str);
            }
        }
    }

    private static class TKC implements PAGRewardedAdLoadListener {
        private final com.bytedance.sdk.openadsdk.core.model.Sj EjP;
        private final PAGRewardedAdLoadListener Sj;
        private final AtomicInteger TKC;
        private final AtomicBoolean sP;

        @Override
        public void onError(int i10, String str) {
            if (this.TKC.decrementAndGet() > 0 || this.Sj == null || !this.sP.compareAndSet(false, true)) {
                return;
            }
            this.Sj.onError(i10, str);
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
                @Override
                @Nullable
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", TKC.this.EjP.sP());
                    return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("choose_ad_load_error").sP(jSONObject.toString());
                }
            });
        }

        private TKC(PAGRewardedAdLoadListener pAGRewardedAdLoadListener, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
            this.sP = new AtomicBoolean(false);
            this.Sj = pAGRewardedAdLoadListener;
            this.EjP = sj2;
            this.TKC = new AtomicInteger(Sj());
        }

        private int Sj() {
            if (!this.EjP.HiB()) {
                return 0;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.EjP.EjP().size(); i11++) {
                sU sUVar = this.EjP.EjP().get(i11);
                if (sUVar != null && !uP.TKC(sUVar) && sUVar.UHs() != null) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            this.TKC.decrementAndGet();
            if (this.Sj == null || !this.sP.compareAndSet(false, true)) {
                return;
            }
            this.Sj.onAdLoaded(pAGRewardedAd);
        }
    }

    public static class sP extends com.bytedance.sdk.component.Dq.Dq {
        final sU Sj;
        final com.bytedance.sdk.openadsdk.core.model.Sj TKC;
        final AdSlot sP;

        class AnonymousClass2 implements com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0227Sj<Object> {
            AnonymousClass2() {
            }

            @Override
            public void Sj(boolean z10, Object obj) {
                if (z10) {
                    aa aaVarSj = aa.Sj(dNu.Sj());
                    sP sPVar = sP.this;
                    aaVarSj.Sj(sPVar.sP, sPVar.TKC);
                }
            }
        }

        sP(sU sUVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
            super("Reward Task");
            this.Sj = sUVar;
            this.sP = adSlot;
            this.TKC = sj2;
        }

        @Override
        public void run() {
            sU sUVar = this.Sj;
            if (sUVar == null || sUVar.UHs() == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).Sj(), this.Sj);
            sPVarSj.Sj("material_meta", this.Sj);
            sPVarSj.Sj("ad_slot", this.sP);
            com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() {
                @Override
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i10, String str) {
                }

                @Override
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i10) {
                    aa aaVarSj = aa.Sj(dNu.Sj());
                    sP sPVar = sP.this;
                    aaVarSj.Sj(sPVar.sP, sPVar.TKC);
                }
            });
        }
    }

    private Fmk(Context context) {
        this.sP = context == null ? dNu.Sj() : context.getApplicationContext();
        sP();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.HiB != null) {
            try {
                com.bytedance.sdk.component.utils.uA.Sj().removeCallbacks(this.HiB);
            } catch (Exception unused) {
            }
            this.HiB = null;
        }
        TKC();
    }

    private void TKC() {
        if (this.TKC.get()) {
            this.TKC.set(false);
            try {
                wE.Sj(this.vS);
            } catch (Exception unused) {
            }
        }
    }

    private void sP(AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        com.bytedance.sdk.openadsdk.core.model.Sj Sj2;
        if (!TextUtils.isEmpty(adSlot.getBidAdm()) || (Sj2 = aa.Sj(this.sP).Sj(adSlot.getCodeId(), true)) == null || !Sj2.HiB()) {
            Sj(adSlot, false, pAGRewardedAdLoadListener);
            return;
        }
        sU sUVarVS = Sj2.vS();
        for (sU sUVar : Sj2.EjP()) {
            if (sUVar.xD() == null) {
                sUVar.Sj(adSlot);
            }
        }
        Zq zq2 = new Zq(this.sP, Sj2, adSlot);
        if (!Sj2.Jcg() && !uP.TKC(sUVarVS)) {
            zq2.sP();
        }
        if (pAGRewardedAdLoadListener != null) {
            if (!Sj2.Jcg() && dNu.EjP().TzV() == 0) {
                Sj(adSlot, Sj2, pAGRewardedAdLoadListener, (PAGRewardedAd) zq2.Sj(), true);
            }
            TKC tkc = new TKC(new Sj(this.sP, adSlot, Sj2, pAGRewardedAdLoadListener, true), Sj2);
            for (int i10 = 0; i10 < Sj2.EjP().size(); i10++) {
                Sj(Sj2.EjP().get(i10), adSlot, tkc, zq2, Sj2.Jcg());
                if (Sj2.aa()) {
                    break;
                }
            }
        }
        for (int i11 = 0; i11 < Sj2.EjP().size(); i11++) {
            com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj2.EjP().get(i11), new com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.InterfaceC0253Sj() {
            });
        }
    }

    public static Fmk Sj(Context context) {
        if (Sj == null) {
            synchronized (Fmk.class) {
                try {
                    if (Sj == null) {
                        Sj = new Fmk(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void Sj(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || !TextUtils.isEmpty(adSlot.getBidAdm()) || aa.Sj(this.sP).Sj(adSlot.getCodeId(), false) != null) {
            return;
        }
        Sj(adSlot, true, null);
    }

    public void Sj(String str, sU sUVar) {
        aa.Sj(this.sP).Sj(str, sUVar);
    }

    public void Sj() {
        try {
            aa.Sj(this.sP).Sj();
        } catch (Throwable unused) {
        }
    }

    public void Sj(AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        sP(adSlot, pAGRewardedAdLoadListener);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    private void Sj(sU sUVar, AdSlot adSlot, final TKC tkc, final Zq zq2, final boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (tkc != null) {
            z11 = true;
            if (!z10 && dNu.EjP().TzV() != 1) {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        if (uP.TKC(sUVar)) {
            z12 = z11;
        } else {
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).Sj(), sUVar);
            sPVarSj.Sj("material_meta", sUVar);
            sPVarSj.Sj("ad_slot", adSlot);
            com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() {
                @Override
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc2, int i10) {
                    if (tkc != null) {
                        if (z10 || dNu.EjP().TzV() == 1) {
                            tkc.onAdLoaded(zq2.Sj());
                        }
                    }
                }

                @Override
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc2, int i10, String str) {
                    if (tkc != null) {
                        if (z10 || dNu.EjP().TzV() == 1) {
                            tkc.onError(i10, str);
                        }
                    }
                }
            });
        }
        if (z12) {
            tkc.onAdLoaded(zq2.Sj());
        }
    }

    private void Sj(final AdSlot adSlot, final boolean z10, final PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        if (com.bytedance.sdk.component.utils.Zq.EjP()) {
            c.a(adSlot.getBidAdm());
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ib ibVar = new ib();
        ibVar.sP = z10 ? 2 : 1;
        if (dNu.EjP().aa(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            ibVar.Dq = 2;
        }
        dNu.TKC().Sj(adSlot, ibVar, 7, new RiZ.Sj() {
            @Override
            public void Sj(int i10, String str) {
                PAGRewardedAdLoadListener pAGRewardedAdLoadListener2;
                if (z10 || (pAGRewardedAdLoadListener2 = pAGRewardedAdLoadListener) == null) {
                    return;
                }
                pAGRewardedAdLoadListener2.onError(i10, str);
            }

            @Override
            public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                PAGRewardedAdLoadListener pAGRewardedAdLoadListener2;
                if (sj2.EjP() != null && !sj2.EjP().isEmpty()) {
                    Zq zq2 = new Zq(Fmk.this.sP, sj2, adSlot);
                    if (!z10) {
                        if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                            com.bytedance.sdk.openadsdk.sU.Sj.EjP.Sj().Sj(sj2.EjP().isEmpty() ? null : sj2.EjP().get(0));
                            com.bytedance.sdk.openadsdk.Zq.TKC.Sj(sj2.vS(), System.currentTimeMillis() - jCurrentTimeMillis);
                        }
                        if (!sj2.Jcg() && pAGRewardedAdLoadListener != null && dNu.EjP().TzV() == 0) {
                            Fmk.this.Sj(adSlot, sj2, pAGRewardedAdLoadListener, (PAGRewardedAd) zq2.Sj(), false);
                        }
                    }
                    com.bytedance.sdk.openadsdk.Fmk.Sj.Sj().Sj(sj2.vS());
                    TKC tkc2 = new TKC(new Sj(Fmk.this.sP, adSlot, sj2, pAGRewardedAdLoadListener, false), sj2);
                    for (int i10 = 0; i10 < sj2.EjP().size(); i10++) {
                        Fmk.this.Sj(sj2, sj2.EjP().get(i10), zq2, adSlot, z10, tkc2, sj2.Jcg());
                        if (sj2.aa()) {
                            return;
                        }
                    }
                    return;
                }
                if (z10 || (pAGRewardedAdLoadListener2 = pAGRewardedAdLoadListener) == null) {
                    return;
                }
                pAGRewardedAdLoadListener2.onError(-3, com.bytedance.sdk.openadsdk.core.Dq.Sj(-3));
                tkc.Sj(-3);
                com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
            }
        });
    }

    private void sP(AdSlot adSlot) {
        if (HiB.sP() != 2) {
            return;
        }
        aa.Sj(this.sP).Sj(adSlot.getCodeId());
    }

    private void sP() {
        if (this.TKC.get()) {
            return;
        }
        this.TKC.set(true);
        wE.Sj(this.vS, this.sP);
    }

    public void Sj(final com.bytedance.sdk.openadsdk.core.model.Sj sj2, sU sUVar, final Zq zq2, final AdSlot adSlot, final boolean z10, final TKC tkc, final boolean z11) {
        com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(sUVar, new com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.InterfaceC0253Sj() {
        });
        boolean z12 = true;
        if (z10 && !uP.TKC(sUVar) && dNu.EjP().ley(adSlot.getCodeId()).EjP == 1 && !TzV.EjP(this.sP)) {
            Sj(new sP(sUVar, adSlot, sj2));
            return;
        }
        boolean z13 = false;
        if (tkc == null || (!z11 && dNu.EjP().TzV() != 1)) {
            z12 = false;
        }
        if (!uP.TKC(sUVar)) {
            if (sUVar.UHs() != null) {
                com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).Sj(), sUVar);
                sPVarSj.Sj("material_meta", sUVar);
                sPVarSj.Sj("ad_slot", adSlot);
                com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() {
                    @Override
                    public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc2, int i10) {
                        zq2.sP();
                        if (z10) {
                            aa.Sj(Fmk.this.sP).Sj(adSlot, sj2);
                        } else if (tkc != null) {
                            if (z11 || dNu.EjP().TzV() == 1) {
                                tkc.onAdLoaded(zq2.Sj());
                            }
                        }
                    }

                    @Override
                    public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc2, int i10, String str) {
                        if (tkc != null) {
                            if (z11 || dNu.EjP().TzV() == 1) {
                                tkc.onError(i10, str);
                            }
                        }
                    }
                });
            } else {
                z13 = z12;
            }
            z12 = z13;
        } else if (z10) {
            aa.Sj(this.sP).Sj(adSlot, sj2);
        }
        if (z12) {
            tkc.onAdLoaded(zq2.Sj());
        }
    }

    public void Sj(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, PAGRewardedAdLoadListener pAGRewardedAdLoadListener, PAGRewardedAd pAGRewardedAd, boolean z10) {
        if (pAGRewardedAdLoadListener != null) {
            pAGRewardedAdLoadListener.onAdLoaded(pAGRewardedAd);
        }
        int iSP = HiB.sP();
        if (!z10) {
            if (iSP == 2) {
                aa.Sj(this.sP).Sj(adSlot, sj2);
                sP(adSlot);
                return;
            }
            return;
        }
        if (iSP == 2) {
            sP(adSlot);
        } else if (iSP == 1) {
            aa.Sj(this.sP).Sj(adSlot.getCodeId(), (sU) null);
        }
    }

    private void Sj(sP sPVar) {
        if (sPVar == null) {
            return;
        }
        if (this.EjP.size() > 0) {
            this.EjP.remove(0);
        }
        this.EjP.add(sPVar);
    }
}
