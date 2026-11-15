package com.bytedance.sdk.openadsdk.core.aa.Sj;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.Sj.Sj.Sj.vS.EjP;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.Ym.vS;
import com.bytedance.sdk.openadsdk.core.aa.EjP.TKC;
import com.bytedance.sdk.openadsdk.core.aa.sP.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.TzV;
import e6.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import w5.b;
import w5.c;

public abstract class Sj implements b, LqL.Sj, com.bytedance.sdk.openadsdk.core.aa.sP.Sj {

    @NonNull
    protected final sU Dq;
    protected SurfaceHolder EjP;
    protected SurfaceTexture HiB;
    protected HiB Jcg;
    protected vS LqL;
    protected long Yf;

    @NonNull
    protected final Context Ym;

    protected boolean f20429dx;
    private long fF;

    protected sP f20430ib;
    protected boolean kF;
    protected b.InterfaceC0920b ley;
    protected final ViewGroup uP;
    protected boolean uvD;
    protected TKC vS;
    protected WeakReference<b.d> wE;
    protected String Sj = "TTAD.VideoController";
    protected final int sP = 100;
    protected final LqL TKC = new LqL(Looper.getMainLooper(), this);
    protected long uA = 0;
    protected long TEQ = 0;

    protected final List<Runnable> f20428aa = new ArrayList();
    protected boolean Fmk = false;
    protected boolean sef = false;
    protected boolean Zq = true;
    protected boolean dNu = false;
    protected boolean TzV = false;
    protected boolean RiZ = false;
    protected AtomicBoolean sU = new AtomicBoolean(false);
    protected boolean zR = true;
    protected Runnable LD = new Runnable() {
        @Override
        public void run() {
            boolean z10 = Sj.this.Fmk;
            Sj.this.dx();
        }
    };
    private long JcM = 0;
    private boolean WMZ = true;
    private int Mts = 1;
    private final AtomicBoolean FPG = new AtomicBoolean(false);

    static class AnonymousClass4 {
        static final int[] Sj;

        static {
            int[] iArr = new int[TzV.Sj.values().length];
            Sj = iArr;
            try {
                iArr[TzV.Sj.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[TzV.Sj.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[TzV.Sj.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Sj(Context context, @NonNull sU sUVar, ViewGroup viewGroup) {
        this.Dq = sUVar;
        this.Ym = context;
        this.uP = viewGroup;
        this.Sj += hashCode();
    }

    private void JcM() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.EjP(0);
            this.Jcg.Sj(false, false);
            this.Jcg.TKC(false);
            this.Jcg.HiB();
            this.Jcg.Jcg();
        }
    }

    private boolean TzV() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            return hiB.Fmk() instanceof EjP;
        }
        return false;
    }

    @Override
    public final long Dq() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0L;
        }
        return tkc.uvD();
    }

    @Override
    public abstract void EjP();

    @Override
    public void EjP(boolean z10) {
        this.zR = z10;
    }

    @Override
    public long HiB() {
        return this.uA;
    }

    @Override
    public final int Jcg() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0;
        }
        return tkc.Zq();
    }

    public int LD() {
        return this.Mts;
    }

    protected final void LqL() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2);
    }

    protected void RiZ() {
        if (this.vS == null) {
            return;
        }
        if (TzV()) {
            SurfaceTexture surfaceTexture = this.HiB;
            if (surfaceTexture == null || surfaceTexture == this.vS.RiZ()) {
                return;
            }
            this.vS.Sj(this.HiB);
            return;
        }
        SurfaceHolder surfaceHolder = this.EjP;
        if (surfaceHolder == null || surfaceHolder == this.vS.TzV()) {
            return;
        }
        this.vS.Sj(this.EjP);
    }

    @Override
    public void Sj(Message message) {
    }

    public abstract void Sj(c cVar, View view);

    @Override
    public abstract void Sj(boolean z10, int i10);

    @Override
    public abstract boolean Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc);

    @Override
    public final int TEQ() {
        return a.a(this.TEQ, this.Yf);
    }

    @Override
    public abstract void TKC();

    @Override
    public void TKC(long j10) {
        this.Yf = j10;
    }

    public final void Yf() {
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Dq, this.Jcg, this.f20430ib);
    }

    @Override
    public boolean Ym() {
        return this.dNu;
    }

    @Override
    public boolean Zq() {
        return this.sef;
    }

    @Override
    public v5.a aa() {
        return this.vS;
    }

    @Override
    public boolean dNu() {
        return true;
    }

    protected void dx() {
        this.TKC.postAtFrontOfQueue(new Runnable() {
            @Override
            public void run() {
                Sj sj2 = Sj.this;
                if (sj2.vS != null) {
                    boolean z10 = sj2.Fmk;
                    Sj.this.vS.TEQ();
                }
            }
        });
    }

    public final void fF() {
        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(this.Dq.Uc(), true, this.Dq), 5, this.Dq.aZ());
    }

    public boolean ib() {
        return this.Zq;
    }

    public boolean kF() {
        return this.WMZ;
    }

    protected final void ley() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(Fmk(), sj2);
    }

    @Override
    public abstract void sP();

    protected void sP(Runnable runnable) {
        this.f20428aa.add(runnable);
    }

    protected void sU() {
        if (this.f20428aa.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.f20428aa).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f20428aa.clear();
    }

    @Override
    public boolean sef() {
        return this.uvD;
    }

    @Override
    public final long uA() {
        return HiB() + vS();
    }

    public final boolean uP() {
        TKC tkc = this.vS;
        return tkc == null || tkc.sP();
    }

    @Override
    public final boolean uvD() {
        return this.kF;
    }

    @Override
    public final long vS() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0L;
        }
        return tkc.sef();
    }

    public final boolean wE() {
        TKC tkc = this.vS;
        return tkc != null && tkc.vS();
    }

    @Override
    public final HiB Fmk() {
        return this.Jcg;
    }

    @Override
    public final void EjP(c cVar, View view) {
        if (!this.RiZ) {
            Sj(true, 3);
            return;
        }
        HiB(false);
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.sP(this.uP);
        }
        Sj(1);
    }

    protected void HiB(boolean z10) {
        this.RiZ = z10;
    }

    @Override
    public void Sj(long j10) {
        this.uA = j10;
        this.TEQ = Math.max(this.TEQ, j10);
    }

    @Override
    public final void TKC(boolean z10) {
        this.WMZ = z10;
    }

    @Override
    public void sP(c cVar, SurfaceHolder surfaceHolder) {
        this.Fmk = false;
        this.EjP = null;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(false);
        }
    }

    @Override
    public final void HiB(c cVar, View view) {
        Sj(cVar, view, false);
    }

    @Override
    public final void TKC(c cVar, View view) {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.uA();
        }
        Sj(true, 3);
    }

    protected void Sj(Runnable runnable) {
        if (this.Jcg.zR() && this.Fmk) {
            runnable.run();
        } else {
            sP(runnable);
        }
    }

    private boolean TKC(int i10) {
        return this.Jcg.sP(i10);
    }

    @Override
    public void sP(c cVar, SurfaceTexture surfaceTexture) {
        this.Fmk = false;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(false);
        }
        this.HiB = null;
        sU();
    }

    @Override
    public void Sj(c cVar, SurfaceHolder surfaceHolder) {
        this.Fmk = true;
        this.EjP = surfaceHolder;
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        tkc.Sj(surfaceHolder);
        sU();
    }

    public final void EjP(long j10) {
        this.uA = j10;
        this.TEQ = Math.max(this.TEQ, j10);
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
        }
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(true, this.uA, this.uvD);
        }
    }

    @Override
    public void sP(long j10) {
        this.JcM = j10;
    }

    @Override
    public void Sj(c cVar, SurfaceTexture surfaceTexture) {
        this.Fmk = true;
        this.HiB = surfaceTexture;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(surfaceTexture);
            this.vS.Sj(this.Fmk);
        }
        sU();
    }

    @Override
    public final void sP(boolean z10) {
        this.sef = z10;
    }

    @Override
    public void sP(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        sP sPVar = (sP) tkc;
        this.f20430ib = sPVar;
        this.uvD = sPVar.Dq();
        tkc.EjP(String.valueOf(this.Dq.If()));
    }

    @Override
    public final void sP(c cVar, View view) {
        sP(cVar, view, false, false);
    }

    public final void sP(c cVar, View view, boolean z10, boolean z11) {
        HiB(!this.RiZ);
        Context context = this.Ym;
        if (context != null && (context instanceof Activity)) {
            if (this.RiZ) {
                Sj(z10 ? 8 : 0);
                HiB hiB = this.Jcg;
                if (hiB != null) {
                    hiB.Sj(this.uP);
                    this.Jcg.TKC(false);
                }
            } else {
                Sj(1);
                HiB hiB2 = this.Jcg;
                if (hiB2 != null) {
                    hiB2.sP(this.uP);
                    this.Jcg.TKC(false);
                }
            }
            WeakReference<b.d> weakReference = this.wE;
            b.d dVar = weakReference != null ? weakReference.get() : null;
            if (dVar != null) {
                dVar.Sj(this.RiZ);
            }
        }
    }

    @Override
    public void Sj(boolean z10) {
        this.Zq = z10;
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.EjP(z10);
        }
    }

    @Override
    public final void Sj(final boolean z10, String str) {
        this.uvD = z10;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.sP(z10);
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, z10, str);
        }
        if (this.LqL != null) {
            if (h6.a.x()) {
                this.LqL.Sj(z10);
            } else {
                this.TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        Sj.this.LqL.Sj(z10);
                    }
                });
            }
        }
    }

    @Override
    public final void Sj(b.d dVar) {
        this.wE = new WeakReference<>(dVar);
    }

    public void Sj(c cVar, View view, boolean z10) {
    }

    public final void Sj(int i10) {
        Context context = this.Ym;
        if (context == null) {
            return;
        }
        boolean z10 = i10 == 0 || i10 == 8;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            try {
                activity.setRequestedOrientation(i10);
            } catch (Throwable unused) {
            }
            if (!z10) {
                activity.getWindow().setFlags(1024, 1024);
            } else {
                activity.getWindow().clearFlags(1024);
            }
        }
    }

    @Override
    public final void sP(c cVar, int i10) {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.vS();
        }
    }

    public final void sP(Jcg jcg) {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        sj2.EjP(Jcg());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(this.Jcg, sj2, jcg);
    }

    @Override
    public final void Sj(c cVar, View view, boolean z10, boolean z11) {
        if (this.Zq) {
            Sj();
        }
        if (z10 && !this.Zq && !uP()) {
            this.Jcg.sP(!wE(), false);
            this.Jcg.Sj(z11, true, false);
        }
        TKC tkc = this.vS;
        if (tkc != null && tkc.vS()) {
            this.Jcg.vS();
            this.Jcg.HiB();
        } else {
            this.Jcg.vS();
        }
    }

    public void sP(int i10) {
        this.Mts = i10;
    }

    @Override
    public final void Sj(c cVar, int i10, boolean z10) {
        if (this.Ym == null) {
            return;
        }
        long j10 = this.Yf;
        long j11 = (long) (((((long) i10) * j10) * 1.0f) / 100.0f);
        if (j10 > 0) {
            this.fF = (int) j11;
        } else {
            this.fF = 0L;
        }
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj(this.fF);
        }
    }

    @Override
    public final void Sj(c cVar, int i10) {
        if (this.vS == null) {
            return;
        }
        Sj(this.fF, TKC(i10));
    }

    private void Sj(long j10, boolean z10) {
        if (this.vS == null) {
            return;
        }
        if (z10) {
            JcM();
        }
        this.vS.Sj(j10);
    }

    public final void Sj(Jcg jcg) {
        if (this.sU.compareAndSet(false, true)) {
            vS vSVar = this.LqL;
            if (vSVar != null) {
                vSVar.Sj(Dq(), sef());
            }
            Zq.Sj sj2 = new Zq.Sj();
            sj2.Sj(kF());
            sj2.TKC(Dq());
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(dNu.Sj(), this.Jcg, sj2, jcg);
        }
    }

    public final void Sj(a6.a aVar) {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.sP(vS());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.Sj(HiB());
        sj2.Sj(aVar);
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.TKC(Fmk(), sj2);
    }

    @Override
    public final void Sj(b.InterfaceC0920b interfaceC0920b) {
        this.ley = interfaceC0920b;
    }

    @Override
    public final void Sj(TzV.Sj sj2, String str) {
        int i10 = AnonymousClass4.Sj[sj2.ordinal()];
        if (i10 == 1) {
            Sj();
            return;
        }
        if (i10 == 2) {
            TKC();
        } else {
            if (i10 != 3) {
                return;
            }
            sP();
            this.dNu = false;
            this.TzV = true;
        }
    }

    @Override
    public void Sj(b.a aVar) {
    }

    @Override
    public final void Sj() {
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Ym();
        }
        if (this.f20429dx || !this.sU.get()) {
            return;
        }
        LqL();
    }

    public void Sj(long j10, long j11) {
        if (!this.FPG.get() && com.bytedance.sdk.openadsdk.vS.Sj.Sj().TKC() && (j10 * 1.0d) / j11 > 0.3d) {
            this.FPG.set(true);
            if (this.Dq != null) {
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoPercent30", this.Dq);
            }
        }
    }
}
