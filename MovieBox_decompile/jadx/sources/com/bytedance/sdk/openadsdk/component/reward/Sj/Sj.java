package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.util.concurrent.atomic.AtomicBoolean;

public class Sj {
    public boolean Chv;
    public boolean EZ;
    public final Context Ei;
    public final boolean EjP;
    public final HiB FPG;

    @NonNull
    public final Activity Fm;

    @Nullable
    public com.bytedance.sdk.openadsdk.activity.vS HS;
    public final String HiB;
    public final LqL HpB;
    public int IOh;
    public boolean Ir;
    public final TzV JcM;
    public final boolean Jcg;
    public final TKC LD;
    public final Ym LqL;

    @NonNull
    public final sef Mts;
    public float MuB;
    public final int Sj;
    private long TFd;
    public final boolean TKC;
    public int UHs;
    public boolean Uc;
    public final Zq WMZ;
    public final com.bytedance.sdk.openadsdk.component.reward.view.TEQ Wjd;
    public final vS Yf;
    public com.bytedance.sdk.openadsdk.common.Fmk aNB;
    public com.bytedance.sdk.openadsdk.component.reward.top.TKC aZ;
    public boolean cX;

    public String f20374db;
    public boolean dwU;
    public com.bytedance.sdk.openadsdk.aa.TEQ fF;
    public boolean gR;
    public boolean gY;

    @NonNull
    public final dNu f20376ib;

    public final com.bytedance.sdk.openadsdk.core.aa.EjP.sP f20377jb;
    public final EjP kF;

    public com.bytedance.sdk.openadsdk.component.reward.sP.sP f20378kb;
    public final aa ley;
    private long mZN;
    public boolean ndK;
    public int pfr;
    public final sU sP;

    public com.bytedance.sdk.openadsdk.component.reward.Ym f20379tz;
    public final Dq uP;
    public final int vS;
    public final com.bytedance.sdk.openadsdk.component.reward.view.Dq wE;
    public final com.bytedance.sdk.openadsdk.component.reward.view.Jcg xD;
    public final boolean xhi;

    public com.bytedance.sdk.openadsdk.utils.Fmk f20380xu;
    public int Dq = 0;
    public int uA = 0;
    public final AtomicBoolean TEQ = new AtomicBoolean(false);
    public final AtomicBoolean Ym = new AtomicBoolean(false);

    public final AtomicBoolean f20373aa = new AtomicBoolean(false);
    public final AtomicBoolean Fmk = new AtomicBoolean(false);
    public final AtomicBoolean sef = new AtomicBoolean(false);
    public final AtomicBoolean Zq = new AtomicBoolean(false);
    public final AtomicBoolean uvD = new AtomicBoolean(false);
    public final AtomicBoolean dNu = new AtomicBoolean(false);
    public final AtomicBoolean TzV = new AtomicBoolean(false);
    public final AtomicBoolean RiZ = new AtomicBoolean(false);
    public final AtomicBoolean sU = new AtomicBoolean(false);

    public final AtomicBoolean f20375dx = new AtomicBoolean(false);
    public final AtomicBoolean zR = new AtomicBoolean(false);
    public boolean qRN = false;
    public int sdp = 1;
    public long Bml = 0;

    public Sj(@NonNull Activity activity, LqL lqL, @NonNull sU sUVar, com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, int i10) {
        this.Fm = activity;
        this.f20377jb = sPVar;
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        this.Ei = contextSj;
        this.sP = sUVar;
        this.Sj = i10;
        this.xhi = i10 == 0 || i10 == 2;
        this.Uc = i10 == 0 || i10 == 1;
        this.HpB = lqL;
        boolean z10 = sUVar.xD().getDurationSlotType() == 7;
        this.EjP = z10;
        this.HiB = z10 ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.cX = sUVar.EjP();
        this.Jcg = com.bytedance.sdk.openadsdk.core.model.TzV.TEQ(sUVar);
        int iIf = sUVar.If();
        this.vS = iIf;
        this.ndK = com.bytedance.sdk.openadsdk.core.dNu.EjP().dNu(String.valueOf(iIf));
        this.TKC = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().sef(String.valueOf(iIf));
        this.ley = i10 == 2 ? new Fmk(this) : new aa(this);
        this.Wjd = i10 == 2 ? new com.bytedance.sdk.openadsdk.component.reward.view.Ym(this) : sUVar.EjP() ? new com.bytedance.sdk.openadsdk.component.reward.view.TEQ(this) : new com.bytedance.sdk.openadsdk.component.reward.view.uA(this);
        this.xD = new com.bytedance.sdk.openadsdk.component.reward.view.Jcg(this);
        this.f20376ib = new dNu(this);
        this.kF = new EjP(this);
        this.uP = new Dq(this, sUVar);
        this.wE = new com.bytedance.sdk.openadsdk.component.reward.view.Dq(this);
        this.JcM = new TzV(this);
        this.WMZ = new Zq(this);
        this.Mts = new sef(this);
        this.FPG = new HiB(this);
        this.LqL = new Ym(this);
        this.Yf = new vS(this);
        this.LD = new TKC(this);
        this.fF = new com.bytedance.sdk.openadsdk.aa.TEQ(contextSj);
        this.f20380xu = com.bytedance.sdk.openadsdk.utils.Dq.Sj(activity, new com.bytedance.sdk.openadsdk.utils.Dq.Sj() {
            @Override
            public View Sj() {
                com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = Sj.this.Wjd;
                if (teq != null) {
                    return teq.TEQ();
                }
                return null;
            }

            @Override
            public void sP() {
                sef sefVar = Sj.this.Mts;
                if (sefVar != null) {
                    sefVar.HiB();
                }
            }
        });
    }

    public void Sj(boolean z10) {
        this.gY = z10;
        this.Mts.EjP(z10);
    }

    public long TKC() {
        return this.mZN + (SystemClock.elapsedRealtime() - this.TFd);
    }

    public void sP() {
        if (this.TFd <= 0) {
            this.TFd = SystemClock.elapsedRealtime();
        }
        this.mZN += SystemClock.elapsedRealtime() - this.TFd;
    }

    public void Sj() {
        this.TFd = SystemClock.elapsedRealtime();
    }
}
