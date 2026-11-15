package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.component.reward.Fmk;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Dq;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Ym;
import com.bytedance.sdk.openadsdk.component.reward.sP.Jcg;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class TTBaseVideoActivity extends TTBaseActivity implements LqL.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP {
    boolean Dq;
    final LqL EjP;
    private final AtomicBoolean Fmk;
    protected IListenerManager HiB;
    public final String Sj;
    protected com.bytedance.sdk.openadsdk.aa.vS TEQ;

    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.sP.sP TKC;
    private boolean Ym;

    private int f20340aa;
    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sP;
    int uA;
    int vS;

    private static class Sj implements Runnable {
        boolean Sj;
        AdSlot sP;

        Sj(boolean z10, AdSlot adSlot) {
            this.Sj = z10;
            this.sP = adSlot;
        }

        @Override
        public void run() {
            if (this.Sj) {
                Fmk.Sj(dNu.Sj()).Sj(this.sP);
            } else {
                com.bytedance.sdk.openadsdk.component.reward.HiB.Sj(dNu.Sj()).Sj(this.sP);
            }
        }
    }

    public TTBaseVideoActivity() {
        this.Sj = RiZ() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.EjP = new LqL(Looper.getMainLooper(), this);
        this.Ym = false;
        this.f20340aa = 0;
        this.uA = 1;
        this.Fmk = new AtomicBoolean(false);
        this.TEQ = new com.bytedance.sdk.openadsdk.aa.vS() {
            @Override
            public void Sj() {
                TTBaseVideoActivity.this.sef();
            }
        };
    }

    private void dx() {
        this.TKC.Sj(this.TEQ);
        this.vS = (int) this.sP.f20376ib.Yf();
        TzV();
        HiB();
        if (this.sP.sP.GMp() == null || this.sP.sP.GMp().Sj() == null) {
            return;
        }
        this.sP.sP.GMp().Sj().Sj(0L);
    }

    private boolean zR() {
        if (this.sP.TEQ.get() && this.sP.Jcg) {
            return false;
        }
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.sP.TEQ.get();
        }
        return true;
    }

    @Override
    public void Dq() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Fmk();
    }

    protected void Fmk() {
        if (sU() && !this.Ym) {
            this.Ym = true;
            getWindow().getDecorView().post(new Runnable() {
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override
                public void run() {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = tTBaseVideoActivity.sP;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.vS vSVar = sj2.Yf;
                    float[] fArrSj = sj2.ley.Sj(tTBaseVideoActivity.uA);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    vSVar.Sj(fArrSj, tTBaseVideoActivity2, tTBaseVideoActivity2.TKC);
                    TTBaseVideoActivity.this.Zq();
                }
            });
        }
    }

    protected void HiB() {
        if (uP.TKC(this.sP.sP)) {
            Sj(false, com.bytedance.sdk.openadsdk.EjP.sP.C0218sP.TKC);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar != null) {
            sPVar.Sj(this.sP.Wjd.vS());
            this.TKC.wE();
        }
    }

    protected abstract void Jcg();

    public abstract boolean RiZ();

    protected void Sj(@NonNull Intent intent) {
    }

    @Override
    public View TEQ() {
        return this.sP.f20376ib.fF();
    }

    protected abstract void TKC();

    protected abstract void TzV();

    @Override
    public void Ym() {
        if (!this.sP.sef.getAndSet(true) || uP.TKC(this.sP.sP)) {
            this.sP.LqL.Sj();
        }
    }

    protected void dNu() {
        this.EjP.removeMessages(400);
    }

    @Override
    public void finish() {
        super.finish();
        if (this.sP == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.uP.HiB()) {
            FPG.sP((Activity) this);
        }
        if (uP.Jcg(this.sP.sP) && !this.sP.TEQ.get()) {
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        } else {
            if (!uP.HiB(this.sP.sP) || this.sP.uP.Dq(Dq.sP)) {
                return;
            }
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            return;
        }
        sj2.ley.Sj();
    }

    @Override
    public void onBackPressed() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        if (this.sP == null || (sPVar = this.TKC) == null) {
            super.onBackPressed();
        } else {
            sPVar.ib();
        }
    }

    @Override
    protected void onCreate(@Nullable Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        super.onCreate(bundle);
        sU.Sj("BVA", "onCreate ".concat(String.valueOf(this)));
        dNu.sP(getApplicationContext());
        if (!sef.HiB()) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.sU sUVarSj = com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(getIntent(), bundle, this);
        if (sUVarSj == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.utils.sP.Sj(sUVarSj);
        this.uA = sUVarSj.liH();
        Sj(sUVarSj, bundle);
        if (bundle != null) {
            if (sUVarSj.Vd()) {
                this.Fmk.set(true);
            }
            if (sUVarSj.xH() && (sj2 = this.sP) != null) {
                sj2.Fmk.set(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            if (sj3 != null) {
                sj3.LqL.Jcg();
            }
        }
        try {
            Sj();
            dx();
        } catch (Throwable th2) {
            sU.Sj("TTAD.BVA", "onCreate: ", th2);
            com.bytedance.sdk.openadsdk.Zq.TKC.sP();
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        sU.Sj("BVA", "onDestroy ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || this.TKC == null) {
            return;
        }
        if (sj2.Bml > 0 && sj2.Fmk.get()) {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.sP.Bml);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(strValueOf, sj3.sP, this.Sj, sj3.f20376ib.Sj());
            this.sP.Bml = 0L;
        }
        this.sP.LD.sP();
        this.EjP.removeCallbacksAndMessages(null);
        this.TKC.zR();
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.sP.sP);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.sP.sP);
        AdSlot adSlotXD = this.sP.sP.xD();
        if (!this.sP.f20376ib.uP() && adSlotXD != null && TextUtils.isEmpty(adSlotXD.getBidAdm()) && !this.sP.sP.ODI()) {
            sef.sP().post(new Sj(RiZ(), adSlotXD));
        }
        com.bytedance.sdk.openadsdk.utils.sef.Sj();
    }

    @Override
    protected void onPause() {
        super.onPause();
        sU.Sj("BVA", "onPause ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.sU();
    }

    @Override
    protected void onRestart() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        super.onRestart();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (sUVar = sj2.sP) == null) {
            return;
        }
        if (this.Jcg && !sUVar.Xqg() && !TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.sU.Sj(this, sUVar))) {
            finish();
        }
        if (sUVar.Xqg()) {
            sUVar.HiB(false);
        }
    }

    @Override
    protected void onResume() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        super.onResume();
        sU.Sj("BVA", "onResume ".concat(String.valueOf(this)));
        if (this.sP == null || (sPVar = this.TKC) == null) {
            return;
        }
        sPVar.dNu();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        sj2.qRN = true;
        sj2.ley.sP(this.EjP);
        if (zR()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            sj3.Mts.Sj(sj3.sP.RrR());
        }
        this.sP.Wjd.Zq();
        this.sP.JcM.zR();
        this.sP.uP.Fmk();
        if (this.TKC.sP()) {
            this.sP.f20376ib.Sj(this.TKC);
            this.sP.f20376ib.Sj(false, this, this.f20340aa != 0);
        }
        this.f20340aa++;
        Fmk();
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2 = this.sP.wE;
        if (dq2 != null) {
            dq2.Jcg();
        }
        this.sP.ley.Sj(this.EjP);
        this.TKC.RiZ();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            super.onSaveInstanceState(bundle);
            return;
        }
        if (sj2.Fmk.get()) {
            this.sP.sP.Dq(true);
        }
        if (this.Fmk.get()) {
            this.sP.sP.AL();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(this.sP, bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        sU.Sj("BVA", "onStart ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            return;
        }
        sj2.JcM.JcM();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.sP.sP);
    }

    @Override
    protected void onStop() {
        super.onStop();
        sU.Sj("BVA", "onStop ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.dx();
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        Ym ym2;
        super.onWindowFocusChanged(z10);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 != null && (ym2 = sj2.LqL) != null) {
            ym2.sP(z10);
            this.sP.LqL.TKC(z10);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        if (sj3 != null) {
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = sj3.f20378kb;
            if (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.vS) {
                ((com.bytedance.sdk.openadsdk.component.reward.sP.vS) sPVar).sP(z10);
            }
        }
    }

    protected IListenerManager sP(int i10) {
        if (this.HiB == null) {
            this.HiB = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(i10));
        }
        return this.HiB;
    }

    public boolean sU() {
        return false;
    }

    @Override
    public void uA() {
        this.sP.f20376ib.LD();
    }

    protected void uvD() {
        Message message = new Message();
        message.what = 400;
        if (RiZ()) {
            Sj(10000);
        }
        this.EjP.sendMessageDelayed(message, 2000L);
    }

    @Override
    public final void vS() {
        if (this.Fmk.compareAndSet(false, true)) {
            sU.Sj("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
            Jcg();
        }
    }

    @Override
    public void Sj(Bundle bundle) {
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.component.reward.Sj.Sj(this, this.EjP, sUVar, this, 0);
        this.sP = sj2;
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(sj2, getIntent(), bundle);
        Intent intent = getIntent();
        if (intent != null) {
            Sj(intent);
            sUVar.Sj(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.sP.gY) {
            TKC();
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVarSj = Jcg.Sj(this.sP);
        this.TKC = sPVarSj;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        sj3.f20378kb = sPVarSj;
        com.bytedance.sdk.openadsdk.utils.sef.Sj(sj3);
        Objects.toString(this.TKC);
    }

    protected void Sj() {
        setContentView(this.sP.xD);
        this.sP.xD.Sj(this.TKC);
        this.TKC.Sj(this, this.EjP);
        this.TKC.Ym();
    }

    protected void Zq() {
    }

    @Override
    public void aa() {
    }

    public void Sj(boolean z10, int i10) {
        Sj(z10, false, i10);
    }

    public void Sj(boolean z10, boolean z11, int i10) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(z10, z11, false, i10);
    }

    @Override
    public void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(message);
    }
}
