package com.bytedance.sdk.component.adexpress.HiB;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.sP.Dq;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.bytedance.sdk.component.adexpress.sP.Jcg;
import com.bytedance.sdk.component.adexpress.sP.Ym;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.uA.vS;
import com.bytedance.sdk.component.utils.sef;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public abstract class Sj implements com.bytedance.sdk.component.adexpress.Sj, com.bytedance.sdk.component.adexpress.sP.EjP<vS>, Ym, com.bytedance.sdk.component.adexpress.theme.Sj {
    private String Dq;
    private boolean Fmk;
    private String Jcg;
    protected JSONObject Sj;
    private boolean TEQ;
    protected vS TKC;
    private Dq Ym;

    private Fmk f20252aa;
    protected boolean sP;
    private int sef;
    private volatile Jcg uA;
    private Context vS;
    protected int EjP = 8;
    protected AtomicBoolean HiB = new AtomicBoolean(false);
    private boolean Zq = false;

    public Sj(Context context, Fmk fmk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.TEQ = false;
        this.vS = context;
        this.f20252aa = fmk;
        this.Jcg = fmk.EjP();
        themeStatusBroadcastReceiver.Sj(this);
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            aa();
            return;
        }
        vS vSVarFmk = Fmk();
        this.TKC = vSVarFmk;
        if (vSVarFmk != null) {
            this.TEQ = true;
        } else if (com.bytedance.sdk.component.adexpress.EjP.Sj() != null) {
            this.TKC = new vS(com.bytedance.sdk.component.adexpress.EjP.Sj());
        }
    }

    private vS Fmk() {
        return this.f20252aa.ib() ? HiB.Sj().Sj(this.vS, this.Jcg) : HiB.Sj().sP(this.vS, this.Jcg);
    }

    private void aa() {
        if (this.vS == null && com.bytedance.sdk.component.adexpress.EjP.Sj() != null) {
            this.vS = com.bytedance.sdk.component.adexpress.EjP.Sj();
        }
        if (this.vS != null) {
            vS vSVarFmk = Fmk();
            this.TKC = vSVarFmk;
            if (vSVarFmk == null) {
                this.TKC = new vS(new MutableContextWrapper(this.vS.getApplicationContext()));
            } else {
                this.TEQ = true;
            }
        }
    }

    private void sef() {
        if (this.f20252aa.ib()) {
            HiB.Sj().sP(this.TKC);
        } else {
            HiB.Sj().TKC(this.TKC);
        }
    }

    public void Dq() {
        uA();
        Activity activitySj = com.bytedance.sdk.component.utils.sP.Sj(this.TKC);
        if (activitySj != null) {
            this.sef = sP(activitySj);
        }
    }

    public void EjP() {
        if (this.HiB.get()) {
            return;
        }
        this.HiB.set(true);
        Jcg();
        if (this.TKC.getParent() != null) {
            ((ViewGroup) this.TKC.getParent()).removeView(this.TKC);
        }
        if (this.sP) {
            sef();
        } else {
            HiB.Sj().HiB(this.TKC);
        }
    }

    public abstract void Jcg();

    public abstract void Sj(int i10);

    @Override
    public int TKC() {
        return 0;
    }

    public Fmk Ym() {
        return this.f20252aa;
    }

    @Override
    public vS HiB() {
        return Sj();
    }

    public void vS() {
        if (Sj() == null) {
            return;
        }
        try {
            Sj().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    private int sP(Activity activity) {
        return activity.hashCode();
    }

    public void Sj(String str) {
        this.Dq = str;
    }

    public vS Sj() {
        return this.TKC;
    }

    public void sP(boolean z10) {
        this.Zq = z10;
    }

    public void Sj(Dq dq2) {
        this.Ym = dq2;
    }

    @Override
    public void Sj(Jcg jcg) {
        this.uA = jcg;
        if (Sj() != null && Sj().getWebView() != null) {
            if (TextUtils.isEmpty(this.Dq)) {
                this.uA.Sj(102, "url is empty");
                return;
            }
            if (!this.f20252aa.ib()) {
                if (!this.Zq && !com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(this.Sj)) {
                    Jcg jcg2 = this.uA;
                    StringBuilder sb2 = new StringBuilder("data null is ");
                    sb2.append(this.Sj == null);
                    jcg2.Sj(103, sb2.toString());
                    return;
                }
                if (this.Zq && !com.bytedance.sdk.component.adexpress.Sj.sP.sP.TKC(this.Sj)) {
                    Jcg jcg3 = this.uA;
                    StringBuilder sb3 = new StringBuilder("choice ad data null is ");
                    sb3.append(this.Sj == null);
                    jcg3.Sj(103, sb3.toString());
                    return;
                }
            } else if (TKC() == 9 && !com.bytedance.sdk.component.adexpress.Sj.sP.sP.sP(this.Sj)) {
                Jcg jcg4 = this.uA;
                StringBuilder sb4 = new StringBuilder("data null is ");
                sb4.append(this.Sj == null);
                jcg4.Sj(103, sb4.toString());
                return;
            }
            this.f20252aa.HiB().Sj(this.TEQ);
            if (this.TEQ) {
                try {
                    this.TKC.dNu();
                    this.f20252aa.HiB();
                    sef.Sj(this.TKC.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
                    return;
                } catch (Exception e10) {
                    HiB.Sj().HiB(this.TKC);
                    this.uA.Sj(102, "load exception is " + e10.getMessage());
                    return;
                }
            }
            vS vSVarSj = Sj();
            vSVarSj.dNu();
            this.f20252aa.HiB();
            vSVarSj.a_(this.Dq);
            return;
        }
        Jcg jcg5 = this.uA;
        StringBuilder sb5 = new StringBuilder("SSWebview null is ");
        sb5.append(Sj() == null);
        sb5.append(" or Webview is null");
        jcg5.Sj(102, sb5.toString());
    }

    protected void TEQ() {
    }

    protected void uA() {
    }

    public void Sj(boolean z10) {
        this.Fmk = z10;
    }

    @Override
    public void Sj(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (sefVar == null) {
            if (this.uA != null) {
                this.uA.Sj(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean zTKC = sefVar.TKC();
        final float fEjP = (float) sefVar.EjP();
        final float fHiB = (float) sefVar.HiB();
        if (TKC() == 0 && (fEjP <= 0.0f || fHiB <= 0.0f)) {
            if (this.uA != null) {
                this.uA.Sj(105, "width is " + fEjP + "height is " + fHiB);
                return;
            }
            return;
        }
        this.sP = zTKC;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Sj(sefVar, fEjP, fHiB);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    Sj.this.Sj(sefVar, fEjP, fHiB);
                }
            });
        }
    }

    public void Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar, float f10, float f11) {
        sefVar.Ym();
        boolean z10 = this.sP;
        if (z10 && !this.Fmk) {
            Sj(f10, f11);
            Sj(this.EjP);
            if (this.uA != null) {
                this.uA.Sj(Sj(), sefVar);
                return;
            }
            return;
        }
        if (!z10) {
            HiB.Sj().HiB(this.TKC);
        }
        Sj(sefVar.Ym(), sefVar.TEQ());
    }

    @Override
    public void Sj(View view, int i10, com.bytedance.sdk.component.adexpress.TKC tkc) {
        Dq dq2 = this.Ym;
        if (dq2 != null) {
            dq2.Sj(view, i10, tkc);
        }
    }

    private void Sj(float f10, float f11) {
        this.f20252aa.HiB().HiB();
        if (TKC() == 9) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) Sj().getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            Sj().setLayoutParams(layoutParams);
            return;
        }
        int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.vS, f10);
        int iSj2 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.vS, f11);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) Sj().getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iSj, iSj2);
        }
        layoutParams2.width = iSj;
        layoutParams2.height = iSj2;
        Sj().setLayoutParams(layoutParams2);
    }

    private void Sj(int i10, String str) {
        if (this.uA != null) {
            this.uA.Sj(i10, str);
        }
    }

    @Override
    public void Sj(Activity activity) {
        if (this.sef == 0 || activity == null || activity.hashCode() != this.sef) {
            return;
        }
        EjP();
        TEQ();
    }

    public void Sj(JSONObject jSONObject) {
        this.Sj = jSONObject;
    }
}
