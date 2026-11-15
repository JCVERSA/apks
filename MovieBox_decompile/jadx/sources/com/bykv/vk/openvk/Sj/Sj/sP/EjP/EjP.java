package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

import android.graphics.SurfaceTexture;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.Dq.uA;
import com.bytedance.sdk.component.utils.LqL;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.logging.type.LogSeverity;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class EjP implements v5.a, b.a, b.InterfaceC0168b, b.c, b.d, b.e, b.f, b.g, LqL.Sj {
    private int EjP;
    private volatile boolean FPG;
    private LqL Fmk;
    private SurfaceTexture Sj;
    private boolean TEQ;

    private ArrayList<Runnable> f19544dx;
    private SurfaceHolder sP;
    private boolean sU;
    private boolean uA;
    private boolean uP;
    private static final SparseIntArray kF = new SparseIntArray();

    private static boolean f19542jb = false;
    private int TKC = 0;
    private boolean HiB = false;
    private volatile b vS = null;
    private final boolean Jcg = false;
    private boolean Dq = false;
    private volatile int Ym = 201;

    private long f19543aa = -1;
    private boolean sef = false;
    private long Zq = 0;
    private long uvD = Long.MIN_VALUE;
    private long dNu = 0;
    private long TzV = 0;
    private long RiZ = 0;
    private int zR = 0;

    private String f19545ib = "0";
    private final List<WeakReference<v5.a.InterfaceC0909a>> wE = new CopyOnWriteArrayList();
    private TKC ley = null;
    private boolean LqL = false;
    private CountDownLatch Yf = new CountDownLatch(1);
    private volatile int LD = 200;
    private AtomicBoolean fF = new AtomicBoolean(false);
    private Surface JcM = null;
    private final Runnable WMZ = new Runnable() {
        @Override
        public void run() {
            if (EjP.this.vS == null) {
                return;
            }
            long jDNu = EjP.this.dNu();
            if (jDNu > 0 && EjP.this.vS() && EjP.this.uvD != Long.MIN_VALUE) {
                try {
                    if (EjP.this.uvD == jDNu) {
                        if (!EjP.this.sef && EjP.this.dNu >= 400) {
                            EjP.this.l(701, LogSeverity.EMERGENCY_VALUE);
                            EjP.this.sef = true;
                        }
                        EjP.this.dNu += (long) EjP.this.LD;
                    } else {
                        if (EjP.this.sef) {
                            EjP.this.Zq += EjP.this.dNu;
                            EjP.this.l(702, LogSeverity.EMERGENCY_VALUE);
                            long unused = EjP.this.Zq;
                            int unused2 = EjP.this.TKC;
                        }
                        EjP.this.dNu = 0L;
                        EjP.this.sef = false;
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
            if (EjP.this.uvD() > 0) {
                if (EjP.this.uvD != jDNu) {
                    if (v5.b.b()) {
                        long unused3 = EjP.this.uvD;
                    }
                    EjP ejP = EjP.this;
                    ejP.c(jDNu, ejP.uvD());
                }
                EjP.this.uvD = jDNu;
            }
            if (EjP.this.sP()) {
                EjP ejP2 = EjP.this;
                ejP2.c(ejP2.uvD(), EjP.this.uvD());
            } else if (EjP.this.Fmk != null) {
                EjP.this.Fmk.postDelayed(this, EjP.this.LD);
            }
        }
    };
    private final Sj Mts = new Sj();
    private long Wjd = 0;
    private long xD = 0;
    private boolean Fm = false;

    class Sj implements Runnable {
        private boolean TKC;
        private long sP;

        Sj() {
        }

        public void Sj(boolean z10) {
            this.TKC = z10;
        }

        @Override
        public void run() {
            if (EjP.this.vS != null) {
                try {
                    if (!this.TKC) {
                        long jUA = EjP.this.vS.uA();
                        EjP.this.f19543aa = Math.max(this.sP, jUA);
                    }
                    long unused = EjP.this.f19543aa;
                } catch (Throwable th2) {
                    th2.toString();
                }
            }
            if (EjP.this.Fmk != null) {
                EjP.this.Fmk.sendEmptyMessageDelayed(100, 0L);
            }
        }

        public void Sj(long j10) {
            this.sP = j10;
        }
    }

    public EjP() {
        e("SSMediaPlayerWrapper");
    }

    private void a() {
        ArrayList<Runnable> arrayList = this.f19544dx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.f19544dx.clear();
    }

    private void b() {
        if (this.uA) {
            return;
        }
        this.uA = true;
        Iterator it = new ArrayList(this.f19544dx).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f19544dx.clear();
        this.uA = false;
    }

    public void c(long j10, long j11) {
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, j10, j11);
            }
        }
    }

    private void d(Runnable runnable) {
        try {
            if (this.f19544dx == null) {
                this.f19544dx = new ArrayList<>();
            }
            this.f19544dx.add(runnable);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    private void e(String str) {
        this.zR = 0;
        this.Fmk = com.bytedance.sdk.component.Dq.Sj.Sj.Sj().Sj(this, uA.THREAD_NAME_PRE.concat(String.valueOf(str)));
        this.Fm = true;
        h();
    }

    private boolean f(int i10, int i11) {
        boolean z10 = i10 == -1010 || i10 == -1007 || i10 == -1004 || i10 == -110 || i10 == 100 || i10 == 200;
        if (i11 == 1 || i11 == 700 || i11 == 800) {
            return true;
        }
        return z10;
    }

    private void g() {
        ArrayList<Runnable> arrayList = this.f19544dx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        b();
    }

    public void h() {
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() {
                @Override
                public void run() {
                    if (EjP.this.vS == null) {
                        try {
                            EjP.this.vS = new c();
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        if (EjP.this.vS == null) {
                            return;
                        }
                        b unused = EjP.this.vS;
                        EjP.this.f19545ib = "0";
                        EjP.this.vS.j(EjP.this);
                        EjP.this.vS.d(EjP.this);
                        EjP.this.vS.e(EjP.this);
                        EjP.this.vS.b(EjP.this);
                        EjP.this.vS.a(EjP.this);
                        EjP.this.vS.c(EjP.this);
                        EjP.this.vS.h(EjP.this);
                        try {
                            EjP.this.vS.TKC(false);
                        } catch (Throwable unused2) {
                        }
                        EjP.this.Dq = false;
                    }
                }
            });
        }
    }

    private void i() {
        if (this.vS == null) {
            return;
        }
        try {
            this.vS.aa();
        } catch (Throwable unused) {
        }
        this.vS.d(null);
        this.vS.h(null);
        this.vS.b(null);
        this.vS.c(null);
        this.vS.e(null);
        this.vS.j(null);
        this.vS.a(null);
        try {
            this.vS.Ym();
        } catch (Throwable unused2) {
        }
    }

    private void j() {
        LqL lqL = this.Fmk;
        if (lqL == null || lqL.getLooper() == null) {
            return;
        }
        try {
            this.Fmk.post(new Runnable() {
                @Override
                public void run() {
                    if (EjP.this.Fmk == null || EjP.this.Fmk.getLooper() == null) {
                        return;
                    }
                    try {
                        com.bytedance.sdk.component.Dq.Sj.Sj.Sj().Sj(EjP.this.Fmk);
                        EjP.this.Fmk = null;
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void k() {
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        EjP.this.vS.Jcg();
                        EjP.this.Ym = Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE;
                        EjP.this.FPG = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public void l(int i10, int i11) {
        if (i10 == 701) {
            this.Wjd = SystemClock.elapsedRealtime();
            this.TKC++;
            for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Sj(this, Integer.MAX_VALUE, 0, 0);
                }
            }
            return;
        }
        if (i10 != 702) {
            if (this.Fm && i10 == 3) {
                g();
                s();
                sP(this.LqL);
                return;
            }
            return;
        }
        if (this.Wjd > 0) {
            this.xD += SystemClock.elapsedRealtime() - this.Wjd;
            this.Wjd = 0L;
        }
        for (WeakReference<v5.a.InterfaceC0909a> weakReference2 : this.wE) {
            if (weakReference2 != null && weakReference2.get() != null) {
                weakReference2.get().Sj((v5.a) this, Integer.MAX_VALUE);
            }
        }
    }

    private void m(long j10) {
        this.Mts.Sj(j10);
        if (this.uP) {
            n(this.Mts);
        } else if (p(this.ley)) {
            n(this.Mts);
        } else {
            d(this.Mts);
        }
    }

    private void n(Runnable runnable) {
        if (runnable == null || Dq()) {
            return;
        }
        if (this.TEQ) {
            d(runnable);
        } else {
            runnable.run();
        }
    }

    private void o(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.vS.f(fileInputStream.getFD());
        fileInputStream.close();
    }

    private boolean p(TKC tkc) {
        return tkc != null && tkc.EjP();
    }

    private void q() {
        this.Zq = 0L;
        this.TKC = 0;
        this.dNu = 0L;
        this.sef = false;
        this.uvD = Long.MIN_VALUE;
    }

    private void r() {
        SparseIntArray sparseIntArray = kF;
        sparseIntArray.put(this.zR, sparseIntArray.get(this.zR) + 1);
    }

    private void s() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.RiZ;
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, jElapsedRealtime);
            }
        }
        this.HiB = true;
    }

    private void t() {
        n(new Runnable() {
            @Override
            public void run() {
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.sendEmptyMessage(104);
                }
            }
        });
    }

    public boolean Fmk() {
        return this.Ym == 205;
    }

    public SurfaceTexture RiZ() {
        return this.Sj;
    }

    public SurfaceHolder TzV() {
        return this.sP;
    }

    public int Zq() {
        return this.TKC;
    }

    public void aa() {
        if (Dq()) {
            return;
        }
        this.TEQ = true;
        a();
        LqL lqL = this.Fmk;
        if (lqL != null) {
            try {
                lqL.removeCallbacksAndMessages(null);
                if (this.vS != null) {
                    this.Fmk.sendEmptyMessage(103);
                }
                j();
            } catch (Throwable unused) {
                j();
            }
        }
    }

    public long dNu() {
        if (Dq()) {
            return 0L;
        }
        if (this.Ym == 206 || this.Ym == 207) {
            try {
                return this.vS.uA();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public long sef() {
        if (this.sef) {
            long j10 = this.dNu;
            if (j10 > 0) {
                return this.Zq + j10;
            }
        }
        return this.Zq;
    }

    public long uvD() {
        long j10 = this.TzV;
        if (j10 != 0) {
            return j10;
        }
        if (this.Ym == 206 || this.Ym == 207) {
            try {
                this.TzV = this.vS.TEQ();
            } catch (Throwable unused) {
            }
        }
        return this.TzV;
    }

    @Override
    public boolean Dq() {
        return this.TEQ;
    }

    @Override
    public int HiB() {
        if (this.vS == null || Dq()) {
            return 0;
        }
        return this.vS.sef();
    }

    @Override
    public boolean Jcg() {
        LqL lqL;
        return ((this.Ym != 207 && !this.FPG) || (lqL = this.Fmk) == null || lqL.hasMessages(100)) ? false : true;
    }

    public void TEQ() {
        if (Dq() || this.Fmk == null) {
            return;
        }
        this.fF.set(true);
        this.Fmk.post(new Runnable() {
            @Override
            public void run() {
                if (!EjP.this.Jcg() || EjP.this.vS == null) {
                    return;
                }
                try {
                    EjP.this.vS.HiB();
                    for (WeakReference weakReference : EjP.this.wE) {
                        if (weakReference != null && weakReference.get() != null) {
                            ((v5.a.InterfaceC0909a) weakReference.get()).HiB(EjP.this);
                        }
                    }
                    EjP.this.Ym = Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE;
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        });
    }

    public void Ym() {
        LqL lqL;
        if (Dq() || (lqL = this.Fmk) == null) {
            return;
        }
        lqL.removeMessages(100);
        this.FPG = true;
        if (this.Fm) {
            if (!this.HiB && !p(this.ley)) {
                d(new Runnable() {
                    @Override
                    public void run() {
                        if (EjP.this.Fmk != null) {
                            EjP.this.Fmk.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            }
            LqL lqL2 = this.Fmk;
            if (lqL2 != null) {
                lqL2.sendEmptyMessage(101);
                return;
            }
            return;
        }
        if (!this.sU && !p(this.ley)) {
            d(new Runnable() {
                @Override
                public void run() {
                    if (EjP.this.Fmk != null) {
                        EjP.this.Fmk.sendEmptyMessage(101);
                    }
                }
            });
            return;
        }
        LqL lqL3 = this.Fmk;
        if (lqL3 != null) {
            lqL3.sendEmptyMessage(101);
        }
    }

    public void uA() {
        if (Dq() || this.vS == null) {
            return;
        }
        this.fF.set(true);
        if (this.Ym != 206) {
            q();
            this.FPG = false;
            this.Mts.Sj(true);
            m(0L);
            LqL lqL = this.Fmk;
            if (lqL != null) {
                lqL.removeCallbacks(this.WMZ);
                this.Fmk.postDelayed(this.WMZ, this.LD);
            }
        }
        this.Yf.countDown();
    }

    @Override
    public boolean vS() {
        LqL lqL;
        return (this.Ym == 206 || ((lqL = this.Fmk) != null && lqL.hasMessages(100))) && !this.FPG;
    }

    @Override
    public int EjP() {
        if (this.vS == null || Dq()) {
            return 0;
        }
        return this.vS.Fmk();
    }

    @Override
    public boolean TKC() {
        return Fmk() || vS() || Jcg();
    }

    @Override
    public boolean sP() {
        return this.Ym == 209;
    }

    @Override
    public void TKC(b bVar) {
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj((v5.a) this, true);
            }
        }
    }

    @Override
    public boolean sP(b bVar, int i10, int i11) {
        if (this.vS != bVar) {
            return false;
        }
        if (i11 == -1004) {
            a6.a aVar = new a6.a(i10, i11);
            for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Sj(this, aVar);
                }
            }
        }
        l(i10, i11);
        return false;
    }

    public static void TKC(boolean z10) {
        f19542jb = z10;
    }

    public void Sj(final boolean z10) {
        if (Dq()) {
            return;
        }
        this.uP = z10;
        if (this.vS != null) {
            this.vS.Sj(z10);
            return;
        }
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() {
                @Override
                public void run() {
                    if (EjP.this.vS != null) {
                        EjP.this.vS.Sj(z10);
                    }
                }
            });
        }
    }

    @Override
    public void sP(b bVar) {
        if (Dq()) {
            return;
        }
        this.Ym = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
        try {
            TKC tkc = this.ley;
            if (tkc != null) {
                float fAa = tkc.aa();
                if (fAa > 0.0f) {
                    v5.c cVar = new v5.c();
                    cVar.b(fAa);
                    this.vS.i(cVar);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.Fmk != null) {
            if (this.FPG) {
                k();
            } else {
                LqL lqL = this.Fmk;
                lqL.sendMessage(lqL.obtainMessage(100, -1, -1));
            }
        }
        kF.delete(this.zR);
        boolean z10 = this.Fm;
        boolean z11 = this.sU;
        if (!z10 && !z11) {
            s();
            this.sU = true;
        }
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().sP(this);
            }
        }
    }

    public void Sj(boolean z10, long j10, boolean z11) {
        if (Dq()) {
            return;
        }
        h();
        this.LqL = z11;
        this.fF.set(true);
        this.FPG = false;
        sP(z11);
        if (z10) {
            this.f19543aa = j10;
            t();
        } else {
            m(j10);
        }
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
            this.Fmk.postDelayed(this.WMZ, this.LD);
        }
        this.Yf.countDown();
    }

    public void Sj(final long j10) {
        if (Dq()) {
            return;
        }
        if (this.Ym == 207 || this.Ym == 206 || this.Ym == 209) {
            n(new Runnable() {
                @Override
                public void run() {
                    if (EjP.this.Fmk != null) {
                        EjP.this.Fmk.obtainMessage(106, Long.valueOf(j10)).sendToTarget();
                    }
                }
            });
        }
    }

    public void sP(final boolean z10) {
        LqL lqL;
        if (Dq() || (lqL = this.Fmk) == null) {
            return;
        }
        lqL.post(new Runnable() {
            @Override
            public void run() {
                if (EjP.this.Dq() || EjP.this.vS == null) {
                    return;
                }
                try {
                    EjP.this.LqL = z10;
                    EjP.this.vS.EjP(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override
    public boolean Sj() {
        return this.HiB;
    }

    public void sP(int i10) {
        this.EjP = i10;
    }

    public void Sj(final SurfaceTexture surfaceTexture) {
        if (Dq()) {
            return;
        }
        this.Sj = surfaceTexture;
        Sj(true);
        n(new Runnable() {
            @Override
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    public void Sj(final SurfaceHolder surfaceHolder) {
        if (Dq()) {
            return;
        }
        this.sP = surfaceHolder;
        Sj(true);
        n(new Runnable() {
            @Override
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    public void Sj(final TKC tkc) {
        if (Dq()) {
            return;
        }
        this.ley = tkc;
        if (tkc != null) {
            this.Fm = this.Fm && !tkc.EjP();
        }
        n(new Runnable() {
            @Override
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(107, tkc).sendToTarget();
                }
            }
        });
    }

    @Override
    public void Sj(Message message) {
        int i10 = this.Ym;
        int i11 = message.what;
        if (this.vS != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.Ym == 205 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.HiB();
                            this.RiZ = SystemClock.elapsedRealtime();
                            this.Ym = Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE;
                            if (this.f19543aa > 0) {
                                this.vS.Sj(this.f19543aa, this.EjP);
                                this.f19543aa = -1L;
                            }
                            if (this.ley != null) {
                                sP(this.LqL);
                                return;
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.sef) {
                            this.Zq += this.dNu;
                        }
                        this.sef = false;
                        this.dNu = 0L;
                        this.uvD = Long.MIN_VALUE;
                        if (this.Ym == 206 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.Jcg();
                            this.Ym = Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE;
                            this.FPG = false;
                            for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get().EjP(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.vS.aa();
                        this.Ym = 201;
                        return;
                    case 103:
                        try {
                            i();
                            break;
                        } catch (Throwable unused) {
                        }
                        for (WeakReference<v5.a.InterfaceC0909a> weakReference2 : this.wE) {
                            if (weakReference2 != null && weakReference2.get() != null) {
                                weakReference2.get().TKC(this);
                            }
                        }
                        this.Ym = Sdk$SDKError.Reason.AD_IS_LOADING_VALUE;
                        return;
                    case 104:
                        if (this.Ym == 202 || this.Ym == 208) {
                            this.vS.Dq();
                            return;
                        }
                        break;
                    case 105:
                        if (this.Ym == 205 || this.Ym == 206 || this.Ym == 208 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.vS();
                            this.Ym = Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE;
                            return;
                        }
                        break;
                    case 106:
                        if (this.Ym == 206 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.Sj(((Long) message.obj).longValue(), this.EjP);
                            return;
                        }
                        break;
                    case 107:
                        q();
                        if (this.Ym == 201 || this.Ym == 203) {
                            TKC tkc = (TKC) message.obj;
                            if (TextUtils.isEmpty(tkc.sP())) {
                                tkc.Sj(v5.b.i());
                            }
                            File file = new File(tkc.sP(), tkc.sef());
                            if (file.exists()) {
                                file.getAbsolutePath();
                                if (v5.b.h()) {
                                    o(file.getAbsolutePath());
                                } else {
                                    this.vS.Sj(file.getAbsolutePath());
                                }
                            } else {
                                tkc.Fmk();
                                if (!f19542jb) {
                                    int i12 = tkc.sP;
                                }
                                this.vS.Sj(tkc);
                                tkc.Fmk();
                            }
                            this.Ym = Sdk$SDKError.Reason.AD_CONSUMED_VALUE;
                            return;
                        }
                        break;
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.vS.Sj((SurfaceHolder) message.obj);
                        this.vS.sP(true);
                        this.Yf.await(1L, TimeUnit.SECONDS);
                        g();
                        return;
                    case 111:
                        this.JcM = new Surface((SurfaceTexture) message.obj);
                        this.vS.g(this.JcM);
                        this.vS.sP(true);
                        this.Yf.await(1L, TimeUnit.SECONDS);
                        g();
                        return;
                }
                this.Ym = 200;
                if (this.Dq) {
                    return;
                }
                a6.a aVar = new a6.a(308, i11);
                aVar.b(i10 + "," + i11);
                for (WeakReference<v5.a.InterfaceC0909a> weakReference3 : this.wE) {
                    if (weakReference3 != null && weakReference3.get() != null) {
                        weakReference3.get().Sj(this, aVar);
                    }
                }
                this.Dq = true;
            } catch (Throwable unused2) {
            }
        }
    }

    @Override
    public void Sj(b bVar, int i10) {
        if (this.vS != bVar) {
            return;
        }
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().sP(this, i10);
            }
        }
    }

    @Override
    public void Sj(b bVar) {
        this.Ym = Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE;
        kF.delete(this.zR);
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
        }
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this);
            }
        }
    }

    @Override
    public boolean Sj(b bVar, int i10, int i11) {
        r();
        this.Ym = 200;
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
        }
        if (f(i10, i11)) {
            j();
        }
        if (!this.fF.get()) {
            return true;
        }
        this.fF.set(false);
        a6.a aVar = new a6.a(i10, i11);
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, aVar);
            }
        }
        return true;
    }

    @Override
    public void Sj(b bVar, int i10, int i11, int i12, int i13) {
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj((v5.a) this, i10, i11);
            }
        }
    }

    public void Sj(v5.a.InterfaceC0909a interfaceC0909a) {
        if (interfaceC0909a == null) {
            return;
        }
        for (WeakReference<v5.a.InterfaceC0909a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() == interfaceC0909a) {
                return;
            }
        }
        this.wE.add(new WeakReference<>(interfaceC0909a));
    }

    public void Sj(int i10) {
        if (Dq()) {
            return;
        }
        this.LD = i10;
    }
}
