package com.yandex.mobile.ads.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.muxer.MuxerUtil;
import com.hunantv.media.report.ReportParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class vv0 extends mv0 {
    private static final wv0 q1 = nm1.h();
    private static final int[] r1 = {1920, 1600, 1440, 1280, 960, 854, 640, ReportParams.MAX_LEAVE_VALID_TIME, 480};
    private static boolean s1;
    private static boolean t1;
    private final Context H0;
    private final te2 I0;
    private final vf2.a J0;
    private final long K0;
    private final int L0;
    private final boolean M0;
    private a N0;
    private boolean O0;
    private boolean P0;

    @Nullable
    private Surface Q0;

    @Nullable
    private oh1 R0;
    private boolean S0;
    private int T0;
    private boolean U0;
    private boolean V0;
    private boolean W0;
    private long X0;
    private long Y0;
    private long Z0;
    private int a1;
    private int b1;
    private int c1;
    private long d1;
    private long e1;
    private long f1;
    private int g1;
    private int h1;
    private int i1;
    private int j1;
    private float k1;

    @Nullable
    private cg2 l1;
    private boolean m1;
    private int n1;

    @Nullable
    b o1;

    @Nullable
    private se2 p1;

    public static final class a {
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    @RequiresApi(23)
    public final class b implements gv0.c, Handler.Callback {
        private final Handler b;

        public b(gv0 gv0Var) {
            Handler handlerA = f92.a((Handler.Callback) this);
            this.b = handlerA;
            gv0Var.a(this, handlerA);
        }

        @Override
        public final void a(long j) {
            if (f92.a < 30) {
                this.b.sendMessageAtFrontOfQueue(Message.obtain(this.b, 0, (int) (j >> 32), (int) j));
                return;
            }
            vv0 vv0Var = vv0.this;
            if (this != vv0Var.o1) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                vv0Var.Y();
                return;
            }
            try {
                vv0Var.e(j);
            } catch (m60 e) {
                vv0.this.a(e);
            }
        }

        @Override
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            int i = message.arg1;
            int i2 = message.arg2;
            int i3 = f92.a;
            long j = ((((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2));
            vv0 vv0Var = vv0.this;
            if (this != vv0Var.o1) {
                return true;
            }
            if (j == Long.MAX_VALUE) {
                vv0Var.Y();
                return true;
            }
            try {
                vv0Var.e(j);
                return true;
            } catch (m60 e) {
                vv0.this.a(e);
                return true;
            }
        }
    }

    public vv0(Context context, f00 f00Var, ov0 ov0Var, @Nullable Handler handler, @Nullable vf2 vf2Var) {
        super(2, f00Var, ov0Var, 30.0f);
        this.K0 = 5000L;
        this.L0 = 50;
        Context applicationContext = context.getApplicationContext();
        this.H0 = applicationContext;
        this.I0 = new te2(applicationContext);
        this.J0 = new vf2.a(handler, vf2Var);
        this.M0 = V();
        this.Y0 = C.TIME_UNSET;
        this.h1 = -1;
        this.i1 = -1;
        this.k1 = -1.0f;
        this.T0 = 1;
        this.n1 = 0;
        U();
    }

    private void T() {
        gv0 gv0VarE;
        this.U0 = false;
        if (f92.a < 23 || !this.m1 || (gv0VarE = E()) == null) {
            return;
        }
        this.o1 = new b(gv0VarE);
    }

    private void U() {
        this.l1 = null;
    }

    private static boolean V() {
        return q1.Z0().equals(f92.c);
    }

    private static boolean W() {
        int i = f92.a;
        if (i <= 28) {
            wv0 wv0Var = q1;
            String strR = wv0Var.r();
            String str = f92.b;
            if (strR.equals(str) || wv0Var.I().equals(str) || wv0Var.K().equals(str) || wv0Var.J().equals(str) || wv0Var.Q0().equals(str) || wv0Var.P0().equals(str) || wv0Var.d1().equals(str) || wv0Var.e1().equals(str)) {
                return true;
            }
        }
        if (i <= 27 && q1.w0().equals(f92.b)) {
            return true;
        }
        if (i > 26) {
            return false;
        }
        wv0 wv0Var2 = q1;
        String strA = wv0Var2.a();
        String str2 = f92.b;
        if (!strA.equals(str2) && !wv0Var2.b().equals(str2) && !wv0Var2.c().equals(str2) && !wv0Var2.d().equals(str2) && !wv0Var2.e().equals(str2) && !wv0Var2.f().equals(str2) && !wv0Var2.g().equals(str2) && !wv0Var2.h().equals(str2) && !wv0Var2.i().equals(str2) && !wv0Var2.j().equals(str2) && !wv0Var2.k().equals(str2) && !wv0Var2.l().equals(str2) && !wv0Var2.m().equals(str2) && !wv0Var2.s().equals(str2) && !wv0Var2.t().equals(str2) && !wv0Var2.u().equals(str2) && !wv0Var2.v().equals(str2) && !wv0Var2.w().equals(str2) && !wv0Var2.y().equals(str2) && !wv0Var2.z().equals(str2) && !wv0Var2.A().equals(str2) && !wv0Var2.B().equals(str2) && !wv0Var2.C().equals(str2) && !wv0Var2.D().equals(str2) && !wv0Var2.E().equals(str2) && !wv0Var2.F().equals(str2) && !wv0Var2.G().equals(str2) && !wv0Var2.H().equals(str2) && !wv0Var2.L().equals(str2) && !wv0Var2.M().equals(str2) && !wv0Var2.N().equals(str2) && !wv0Var2.O().equals(str2) && !wv0Var2.P().equals(str2) && !wv0Var2.Q().equals(str2) && !wv0Var2.R().equals(str2) && !wv0Var2.S().equals(str2) && !wv0Var2.T().equals(str2) && !wv0Var2.U().equals(str2) && !wv0Var2.V().equals(str2) && !wv0Var2.W().equals(str2) && !wv0Var2.X().equals(str2) && !wv0Var2.Y().equals(str2) && !wv0Var2.Z().equals(str2) && !wv0Var2.a0().equals(str2) && !wv0Var2.b0().equals(str2) && !wv0Var2.c0().equals(str2) && !wv0Var2.d0().equals(str2) && !wv0Var2.e0().equals(str2) && !wv0Var2.f0().equals(str2) && !wv0Var2.g0().equals(str2) && !wv0Var2.h0().equals(str2) && !wv0Var2.i0().equals(str2) && !wv0Var2.j0().equals(str2) && !wv0Var2.k0().equals(str2) && !wv0Var2.l0().equals(str2) && !wv0Var2.m0().equals(str2) && !wv0Var2.n0().equals(str2) && !wv0Var2.o0().equals(str2) && !wv0Var2.p0().equals(str2) && !wv0Var2.q0().equals(str2) && !wv0Var2.r0().equals(str2) && !wv0Var2.s0().equals(str2) && !wv0Var2.t0().equals(str2) && !wv0Var2.u0().equals(str2) && !wv0Var2.v0().equals(str2) && !wv0Var2.x0().equals(str2) && !wv0Var2.y0().equals(str2) && !wv0Var2.z0().equals(str2) && !wv0Var2.A0().equals(str2) && !wv0Var2.B0().equals(str2) && !wv0Var2.C0().equals(str2) && !wv0Var2.D0().equals(str2) && !wv0Var2.E0().equals(str2) && !wv0Var2.F0().equals(str2) && !wv0Var2.H0().equals(str2) && !wv0Var2.I0().equals(str2) && !wv0Var2.K0().equals(str2) && !wv0Var2.L0().equals(str2) && !wv0Var2.M0().equals(str2) && !wv0Var2.N0().equals(str2) && !wv0Var2.O0().equals(str2) && !wv0Var2.R0().equals(str2) && !wv0Var2.S0().equals(str2) && !wv0Var2.T0().equals(str2) && !wv0Var2.U0().equals(str2) && !wv0Var2.V0().equals(str2) && !wv0Var2.W0().equals(str2) && !wv0Var2.X0().equals(str2) && !wv0Var2.Y0().equals(str2) && !wv0Var2.a1().equals(str2) && !wv0Var2.b1().equals(str2) && !wv0Var2.f1().equals(str2) && !wv0Var2.g1().equals(str2) && !wv0Var2.h1().equals(str2) && !wv0Var2.i1().equals(str2) && !wv0Var2.j1().equals(str2) && !wv0Var2.k1().equals(str2) && !wv0Var2.l1().equals(str2) && !wv0Var2.m1().equals(str2) && !wv0Var2.n1().equals(str2) && !wv0Var2.o1().equals(str2) && !wv0Var2.p1().equals(str2) && !wv0Var2.q1().equals(str2) && !wv0Var2.r1().equals(str2) && !wv0Var2.s1().equals(str2) && !wv0Var2.t1().equals(str2) && !wv0Var2.u1().equals(str2) && !wv0Var2.v1().equals(str2) && !wv0Var2.w1().equals(str2) && !wv0Var2.x1().equals(str2) && !wv0Var2.y1().equals(str2) && !wv0Var2.z1().equals(str2) && !wv0Var2.A1().equals(str2) && !wv0Var2.B1().equals(str2) && !wv0Var2.C1().equals(str2) && !wv0Var2.D1().equals(str2) && !wv0Var2.E1().equals(str2) && !wv0Var2.G1().equals(str2) && !wv0Var2.H1().equals(str2) && !wv0Var2.I1().equals(str2) && !wv0Var2.F1().equals(str2) && !wv0Var2.J1().equals(str2) && !wv0Var2.K1().equals(str2) && !wv0Var2.L1().equals(str2) && !wv0Var2.M1().equals(str2) && !wv0Var2.N1().equals(str2) && !wv0Var2.O1().equals(str2) && !wv0Var2.P1().equals(str2) && !wv0Var2.Q1().equals(str2) && !wv0Var2.R1().equals(str2) && !wv0Var2.S1().equals(str2) && !wv0Var2.T1().equals(str2) && !wv0Var2.U1().equals(str2) && !wv0Var2.V1().equals(str2) && !wv0Var2.W1().equals(str2) && !wv0Var2.X1().equals(str2) && !wv0Var2.Y1().equals(str2) && !wv0Var2.Z1().equals(str2) && !wv0Var2.a2().equals(str2) && !wv0Var2.b2().equals(str2)) {
            String strN = wv0Var2.n();
            String str3 = f92.d;
            if (!strN.equals(str3) && !wv0Var2.o().equals(str3) && !wv0Var2.G0().equals(str3)) {
                return false;
            }
        }
        return true;
    }

    private void X() {
        int i = this.h1;
        if (i == -1 && this.i1 == -1) {
            return;
        }
        cg2 cg2Var = this.l1;
        if (cg2Var != null && cg2Var.b == i && cg2Var.c == this.i1 && cg2Var.d == this.j1 && cg2Var.e == this.k1) {
            return;
        }
        cg2 cg2Var2 = new cg2(this.h1, this.i1, this.j1, this.k1);
        this.l1 = cg2Var2;
        this.J0.b(cg2Var2);
    }

    public void Y() {
        R();
    }

    public static boolean b(String str) {
        if (str.startsWith(q1.c1())) {
            return false;
        }
        synchronized (vv0.class) {
            try {
                if (!s1) {
                    t1 = W();
                    s1 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t1;
    }

    @Override
    public final boolean G() {
        return this.m1 && f92.a < 23;
    }

    @Override
    public final void L() {
        T();
    }

    @Override
    @CallSuper
    public final void P() {
        super.P();
        this.c1 = 0;
    }

    @Override
    @CallSuper
    public final void c(long j) {
        super.c(j);
        if (this.m1) {
            return;
        }
        this.c1--;
    }

    @Override
    public final boolean d() {
        oh1 oh1Var;
        if (super.d() && (this.U0 || (((oh1Var = this.R0) != null && this.Q0 == oh1Var) || E() == null || this.m1))) {
            this.Y0 = C.TIME_UNSET;
            return true;
        }
        if (this.Y0 == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.Y0) {
            return true;
        }
        this.Y0 = C.TIME_UNSET;
        return false;
    }

    public final void e(long j) throws m60 {
        d(j);
        X();
        this.B0.e++;
        this.W0 = true;
        if (!this.U0) {
            this.U0 = true;
            this.J0.a(this.Q0);
            this.S0 = true;
        }
        c(j);
    }

    public final void f(long j) {
        py pyVar = this.B0;
        pyVar.k += j;
        pyVar.l++;
        this.f1 += j;
        this.g1++;
    }

    @Override
    public final String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override
    public final void u() {
        this.l1 = null;
        T();
        this.S0 = false;
        this.o1 = null;
        try {
            super.u();
        } finally {
            this.J0.a(this.B0);
        }
    }

    @Override
    @TargetApi(17)
    public final void v() {
        oh1 oh1Var;
        try {
            super.v();
            oh1Var = this.R0;
            if (oh1Var != null) {
                if (this.Q0 == oh1Var) {
                    this.Q0 = null;
                }
            }
        } finally {
            if (this.R0 != null) {
                Surface surface = this.Q0;
                oh1Var = this.R0;
                if (surface == oh1Var) {
                    this.Q0 = null;
                }
                oh1Var.release();
                this.R0 = null;
            }
        }
    }

    @Override
    public final void w() {
        this.a1 = 0;
        this.Z0 = SystemClock.elapsedRealtime();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.f1 = 0L;
        this.g1 = 0;
        this.I0.b();
    }

    @Override
    public final void x() {
        this.Y0 = C.TIME_UNSET;
        if (this.a1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.J0.a(this.a1, jElapsedRealtime - this.Z0);
            this.a1 = 0;
            this.Z0 = jElapsedRealtime;
        }
        int i = this.g1;
        if (i != 0) {
            this.J0.c(i, this.f1);
            this.f1 = 0L;
            this.g1 = 0;
        }
        this.I0.c();
    }

    @Override
    public final ty a(kv0 kv0Var, jc0 jc0Var, jc0 jc0Var2) {
        ty tyVarA = kv0Var.a(jc0Var, jc0Var2);
        int i = tyVarA.e;
        int i2 = jc0Var2.r;
        a aVar = this.N0;
        if (i2 > aVar.a || jc0Var2.s > aVar.b) {
            i |= 256;
        }
        if (b(jc0Var2, kv0Var) > this.N0.c) {
            i |= 64;
        }
        int i3 = i;
        return new ty(kv0Var.a, jc0Var, jc0Var2, i3 != 0 ? 0 : tyVarA.d, i3);
    }

    public static int a(jc0 jc0Var, kv0 kv0Var) {
        int i;
        int iIntValue;
        int i2 = 4;
        byte b2 = 1;
        int i3 = jc0Var.r;
        int i4 = jc0Var.s;
        if (i3 == -1 || i4 == -1) {
            return -1;
        }
        String str = jc0Var.m;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> pairB = sv0.b(jc0Var);
            str = (pairB == null || !((iIntValue = ((Integer) pairB.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1664118616:
                b2 = !str.equals("video/3gpp") ? (byte) -1 : (byte) 0;
                break;
            case -1662735862:
                if (!str.equals(MimeTypes.VIDEO_AV1)) {
                    b2 = -1;
                }
                break;
            case -1662541442:
                b2 = !str.equals("video/hevc") ? (byte) -1 : (byte) 2;
                break;
            case 1187890754:
                b2 = !str.equals("video/mp4v-es") ? (byte) -1 : (byte) 3;
                break;
            case 1331836730:
                b2 = !str.equals("video/avc") ? (byte) -1 : (byte) 4;
                break;
            case 1599127256:
                b2 = !str.equals("video/x-vnd.on2.vp8") ? (byte) -1 : (byte) 5;
                break;
            case 1599127257:
                b2 = !str.equals("video/x-vnd.on2.vp9") ? (byte) -1 : (byte) 6;
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
            case 1:
            case 3:
            case 5:
                i = i4 * i3;
                i2 = 2;
                return (i * 3) / (i2 * 2);
            case 2:
            case 6:
                i = i4 * i3;
                return (i * 3) / (i2 * 2);
            case 4:
                wv0 wv0Var = q1;
                String strX = wv0Var.x();
                String str2 = f92.d;
                if (strX.equals(str2) || (wv0Var.q().equals(f92.c) && (wv0Var.J0().equals(str2) || (wv0Var.p().equals(str2) && kv0Var.f)))) {
                    return -1;
                }
                i = ((i4 + 15) / 16) * ((i3 + 15) / 16) * 256;
                i2 = 2;
                return (i * 3) / (i2 * 2);
            default:
                return -1;
        }
    }

    public static int b(jc0 jc0Var, kv0 kv0Var) {
        if (jc0Var.n != -1) {
            int size = jc0Var.o.size();
            int length = 0;
            for (int i = 0; i < size; i++) {
                length += jc0Var.o.get(i).length;
            }
            return jc0Var.n + length;
        }
        return a(jc0Var, kv0Var);
    }

    public final boolean b(long j, boolean z) throws m60 {
        int iB = b(j);
        if (iB == 0) {
            return false;
        }
        if (z) {
            py pyVar = this.B0;
            pyVar.d += iB;
            pyVar.f += this.c1;
        } else {
            this.B0.j++;
            a(iB, this.c1);
        }
        C();
        return true;
    }

    @Override
    @CallSuper
    public final void b(ry ryVar) throws m60 {
        boolean z = this.m1;
        if (!z) {
            this.c1++;
        }
        if (f92.a >= 23 || !z) {
            return;
        }
        e(ryVar.f);
    }

    @Override
    public final float a(float f, jc0[] jc0VarArr) {
        float fMax = -1.0f;
        for (jc0 jc0Var : jc0VarArr) {
            float f2 = jc0Var.t;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    private boolean b(kv0 kv0Var) {
        return f92.a >= 23 && !this.m1 && !b(kv0Var.a) && (!kv0Var.f || oh1.a(this.H0));
    }

    private static kk0 a(ov0 ov0Var, jc0 jc0Var, boolean z, boolean z2) throws sv0.b {
        String str = jc0Var.m;
        if (str == null) {
            return kk0.h();
        }
        List<kv0> listA = ov0Var.a(str, z, z2);
        String strA = sv0.a(jc0Var);
        if (strA == null) {
            return kk0.a((Collection) listA);
        }
        List<kv0> listA2 = ov0Var.a(strA, z, z2);
        int i = kk0.d;
        return new kk0.a().b((List) listA).b((List) listA2).a();
    }

    @Override
    public final ArrayList a(ov0 ov0Var, jc0 jc0Var, boolean z) throws sv0.b {
        return sv0.a(a(ov0Var, jc0Var, z, this.m1), jc0Var);
    }

    /* JADX WARN: Code duplicated, block: B:77:0x013e  */
    /* JADX WARN: Instruction removed from duplicated block: B:77:0x013e, please report this as an issue */
    @Override
    @TargetApi(17)
    public final gv0.a a(kv0 kv0Var, jc0 jc0Var, @Nullable MediaCrypto mediaCrypto, float f) {
        String str;
        a aVar;
        Point point;
        boolean z;
        Pair<Integer, Integer> pairB;
        int iA;
        oh1 oh1Var = this.R0;
        if (oh1Var != null && oh1Var.b != kv0Var.f) {
            if (this.Q0 == oh1Var) {
                this.Q0 = null;
            }
            oh1Var.release();
            this.R0 = null;
        }
        String str2 = kv0Var.c;
        jc0[] jc0VarArrS = s();
        int iMax = jc0Var.r;
        int iMax2 = jc0Var.s;
        int iB = b(jc0Var, kv0Var);
        if (jc0VarArrS.length == 1) {
            if (iB != -1 && (iA = a(jc0Var, kv0Var)) != -1) {
                iB = Math.min((int) (iB * 1.5f), iA);
            }
            aVar = new a(iMax, iMax2, iB);
            str = str2;
        } else {
            int length = jc0VarArrS.length;
            boolean z2 = false;
            for (int i = 0; i < length; i++) {
                jc0 jc0VarA = jc0VarArrS[i];
                if (jc0Var.y != null && jc0VarA.y == null) {
                    jc0VarA = jc0VarA.a().a(jc0Var.y).a();
                }
                if (kv0Var.a(jc0Var, jc0VarA).d != 0) {
                    int i2 = jc0VarA.r;
                    z2 |= i2 == -1 || jc0VarA.s == -1;
                    iMax = Math.max(iMax, i2);
                    iMax2 = Math.max(iMax2, jc0VarA.s);
                    iB = Math.max(iB, b(jc0VarA, kv0Var));
                }
            }
            if (z2) {
                et0.d("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                int i3 = jc0Var.s;
                int i4 = jc0Var.r;
                boolean z3 = i3 > i4;
                int i5 = z3 ? i3 : i4;
                if (z3) {
                    i3 = i4;
                }
                float f2 = i3 / i5;
                int[] iArr = r1;
                int length2 = iArr.length;
                int i6 = 0;
                while (true) {
                    if (i6 < length2) {
                        int i7 = length2;
                        int i8 = iArr[i6];
                        int[] iArr2 = iArr;
                        int i9 = (int) (i8 * f2);
                        if (i8 > i5 && i9 > i3) {
                            int i10 = i3;
                            float f3 = f2;
                            if (f92.a >= 21) {
                                int i11 = z3 ? i9 : i8;
                                if (!z3) {
                                    i8 = i9;
                                }
                                Point pointA = kv0Var.a(i11, i8);
                                str = str2;
                                if (kv0Var.a(pointA.x, pointA.y, jc0Var.t)) {
                                    point = pointA;
                                } else {
                                    i6++;
                                    length2 = i7;
                                    iArr = iArr2;
                                    i3 = i10;
                                    f2 = f3;
                                    str2 = str;
                                }
                            } else {
                                str = str2;
                                try {
                                    int i12 = ((i8 + 15) / 16) * 16;
                                    int i13 = ((i9 + 15) / 16) * 16;
                                    if (i12 * i13 <= sv0.a()) {
                                        int i14 = z3 ? i13 : i12;
                                        if (!z3) {
                                            i12 = i13;
                                        }
                                        point = new Point(i14, i12);
                                    } else {
                                        i6++;
                                        length2 = i7;
                                        iArr = iArr2;
                                        i3 = i10;
                                        f2 = f3;
                                        str2 = str;
                                    }
                                } catch (sv0.b unused) {
                                    point = null;
                                }
                            }
                        }
                        if (point != null) {
                            iMax = Math.max(iMax, point.x);
                            iMax2 = Math.max(iMax2, point.y);
                            iB = Math.max(iB, a(jc0Var.a().o(iMax).f(iMax2).a(), kv0Var));
                            et0.d("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                        }
                    }
                    str = str2;
                    point = null;
                    if (point != null) {
                        iMax = Math.max(iMax, point.x);
                        iMax2 = Math.max(iMax2, point.y);
                        iB = Math.max(iB, a(jc0Var.a().o(iMax).f(iMax2).a(), kv0Var));
                        et0.d("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                    }
                }
            } else {
                str = str2;
            }
            aVar = new a(iMax, iMax2, iB);
        }
        this.N0 = aVar;
        boolean z4 = this.M0;
        int i15 = this.m1 ? this.n1 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", jc0Var.r);
        mediaFormat.setInteger("height", jc0Var.s);
        List<byte[]> list = jc0Var.o;
        for (int i16 = 0; i16 < list.size(); i16++) {
            mediaFormat.setByteBuffer(oe.a("csd-", i16), ByteBuffer.wrap(list.get(i16)));
        }
        float f4 = jc0Var.t;
        if (f4 != -1.0f) {
            mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE, f4);
        }
        iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_ROTATION, jc0Var.u);
        rq rqVar = jc0Var.y;
        if (rqVar != null) {
            iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_TRANSFER, rqVar.d);
            iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_STANDARD, rqVar.b);
            iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_RANGE, rqVar.c);
            byte[] bArr = rqVar.e;
            if (bArr != null) {
                mediaFormat.setByteBuffer(com.hunantv.media.player.subtitle.MediaFormat.KEY_HDR_STATIC_INFO, ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(jc0Var.m) && (pairB = sv0.b(jc0Var)) != null) {
            iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, ((Integer) pairB.first).intValue());
        }
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_WIDTH, aVar.a);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_HEIGHT, aVar.b);
        iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, aVar.c);
        if (f92.a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
            }
        }
        if (z4) {
            z = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z = true;
        }
        if (i15 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z);
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_AUDIO_SESSION_ID, i15);
        }
        if (this.Q0 == null) {
            if (b(kv0Var)) {
                if (this.R0 == null) {
                    this.R0 = oh1.a(this.H0, kv0Var.f);
                }
                this.Q0 = this.R0;
            } else {
                throw new IllegalStateException();
            }
        }
        return gv0.a.a(kv0Var, mediaFormat, jc0Var, this.Q0, mediaCrypto);
    }

    @Override
    @TargetApi(29)
    public final void a(ry ryVar) throws m60 {
        if (this.P0) {
            ByteBuffer byteBuffer = ryVar.g;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    gv0 gv0VarE = E();
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("hdr10-plus-info", bArr);
                    gv0VarE.a(bundle);
                }
            }
        }
    }

    @Override
    public final void a(int i, @Nullable Object obj) throws m60 {
        if (i == 1) {
            a(obj);
            return;
        }
        if (i == 7) {
            this.p1 = (se2) obj;
            return;
        }
        if (i == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.n1 != iIntValue) {
                this.n1 = iIntValue;
                if (this.m1) {
                    N();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                return;
            }
            this.I0.a(((Integer) obj).intValue());
        } else {
            this.T0 = ((Integer) obj).intValue();
            gv0 gv0VarE = E();
            if (gv0VarE != null) {
                gv0VarE.a(this.T0);
            }
        }
    }

    private void a(long j, long j2, jc0 jc0Var) {
        se2 se2Var = this.p1;
        if (se2Var != null) {
            se2Var.a(j, j2, jc0Var, H());
        }
    }

    @Override
    public final void a(Exception exc) {
        et0.a("MediaCodecVideoRenderer", "Video codec error", exc);
        this.J0.b(exc);
    }

    @Override
    public final void a(String str, long j, long j2) {
        this.J0.a(str, j, j2);
        this.O0 = b(str);
        kv0 kv0VarF = F();
        kv0VarF.getClass();
        this.P0 = kv0VarF.a();
        if (f92.a < 23 || !this.m1) {
            return;
        }
        gv0 gv0VarE = E();
        gv0VarE.getClass();
        this.o1 = new b(gv0VarE);
    }

    @Override
    public final void a(String str) {
        this.J0.a(str);
    }

    @Override
    public final void a(boolean z, boolean z2) throws m60 {
        super.a(z, z2);
        boolean z3 = p().a;
        if (z3 && this.n1 == 0) {
            throw new IllegalStateException();
        }
        if (this.m1 != z3) {
            this.m1 = z3;
            N();
        }
        this.J0.b(this.B0);
        this.V0 = z2;
        this.W0 = false;
    }

    @Override
    @Nullable
    public final ty a(kc0 kc0Var) throws m60 {
        ty tyVarA = super.a(kc0Var);
        this.J0.a(kc0Var.b, tyVarA);
        return tyVarA;
    }

    @Override
    public final void a(jc0 jc0Var, @Nullable MediaFormat mediaFormat) {
        int integer;
        int integer2;
        gv0 gv0VarE = E();
        if (gv0VarE != null) {
            gv0VarE.a(this.T0);
        }
        if (this.m1) {
            this.h1 = jc0Var.r;
            this.i1 = jc0Var.s;
        } else {
            mediaFormat.getClass();
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            if (z) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            this.h1 = integer;
            if (z) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.i1 = integer2;
        }
        float f = jc0Var.v;
        this.k1 = f;
        if (f92.a >= 21) {
            int i = jc0Var.u;
            if (i == 90 || i == 270) {
                int i2 = this.h1;
                this.h1 = this.i1;
                this.i1 = i2;
                this.k1 = 1.0f / f;
            }
        } else {
            this.j1 = jc0Var.u;
        }
        this.I0.a(jc0Var.t);
    }

    @Override
    public final void a(long j, boolean z) throws m60 {
        super.a(j, z);
        T();
        this.I0.a();
        long jElapsedRealtime = C.TIME_UNSET;
        this.d1 = C.TIME_UNSET;
        this.X0 = C.TIME_UNSET;
        this.b1 = 0;
        if (z) {
            if (this.K0 > 0) {
                jElapsedRealtime = SystemClock.elapsedRealtime() + this.K0;
            }
            this.Y0 = jElapsedRealtime;
            return;
        }
        this.Y0 = C.TIME_UNSET;
    }

    @Override
    public final boolean a(long j, long j2, @Nullable gv0 gv0Var, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, jc0 jc0Var) throws m60 {
        boolean z3;
        gv0Var.getClass();
        if (this.X0 == C.TIME_UNSET) {
            this.X0 = j;
        }
        if (j3 != this.d1) {
            this.I0.b(j3);
            this.d1 = j3;
        }
        long jI = I();
        long j4 = j3 - jI;
        if (z && !z2) {
            u52.a("skipVideoBuffer");
            gv0Var.a(false, i);
            u52.a();
            this.B0.f++;
            return true;
        }
        double dJ = J();
        boolean z4 = getState() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j5 = (long) ((j3 - j) / dJ);
        if (z4) {
            j5 -= jElapsedRealtime - j2;
        }
        if (this.Q0 == this.R0) {
            if (j5 >= -30000) {
                return false;
            }
            u52.a("skipVideoBuffer");
            gv0Var.a(false, i);
            u52.a();
            this.B0.f++;
            f(j5);
            return true;
        }
        long j6 = jElapsedRealtime - this.e1;
        boolean z5 = this.W0 ? !this.U0 : z4 || this.V0;
        if (this.Y0 == C.TIME_UNSET && j >= jI && (z5 || (z4 && j5 < -30000 && j6 > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US))) {
            long jNanoTime = System.nanoTime();
            a(j4, jNanoTime, jc0Var);
            if (f92.a >= 21) {
                a(gv0Var, i, jNanoTime);
            } else {
                a(gv0Var, i);
            }
            f(j5);
            return true;
        }
        if (!z4 || j == this.X0) {
            return false;
        }
        long jNanoTime2 = System.nanoTime();
        long jA = this.I0.a((j5 * 1000) + jNanoTime2);
        long j7 = (jA - jNanoTime2) / 1000;
        boolean z6 = this.Y0 != C.TIME_UNSET;
        if (j7 < -500000 && !z2 && b(j, z6)) {
            return false;
        }
        if (j7 < -30000 && !z2) {
            if (z6) {
                u52.a("skipVideoBuffer");
                gv0Var.a(false, i);
                u52.a();
                z3 = true;
                this.B0.f++;
            } else {
                z3 = true;
                u52.a("dropVideoBuffer");
                gv0Var.a(false, i);
                u52.a();
                a(0, 1);
            }
            f(j7);
            return z3;
        }
        if (f92.a >= 21) {
            if (j7 < 50000) {
                a(j4, jA, jc0Var);
                a(gv0Var, i, jA);
                f(j7);
                return true;
            }
        } else if (j7 < 30000) {
            if (j7 > 11000) {
                try {
                    Thread.sleep((j7 - 10000) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return false;
                }
            }
            a(j4, jA, jc0Var);
            a(gv0Var, i);
            f(j7);
            return true;
        }
        return false;
    }

    public final void a(gv0 gv0Var, int i) {
        X();
        u52.a("releaseOutputBuffer");
        gv0Var.a(true, i);
        u52.a();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.e++;
        this.b1 = 0;
        this.W0 = true;
        if (this.U0) {
            return;
        }
        this.U0 = true;
        this.J0.a(this.Q0);
        this.S0 = true;
    }

    @RequiresApi(21)
    public final void a(gv0 gv0Var, int i, long j) {
        X();
        u52.a("releaseOutputBuffer");
        gv0Var.a(i, j);
        u52.a();
        this.e1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.e++;
        this.b1 = 0;
        this.W0 = true;
        if (this.U0) {
            return;
        }
        this.U0 = true;
        this.J0.a(this.Q0);
        this.S0 = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.yandex.mobile.ads.impl.te2] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.yandex.mobile.ads.impl.gv0] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11, types: [com.yandex.mobile.ads.impl.oh1] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(@Nullable Object obj) throws m60 {
        ?? A;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            A = 0;
        }
        if (A == 0) {
            oh1 oh1Var = this.R0;
            if (oh1Var != null) {
                A = surface;
                A = oh1Var;
            } else {
                kv0 kv0VarF = F();
                if (kv0VarF != null && b(kv0VarF)) {
                    A = surface;
                    A = oh1.a(this.H0, kv0VarF.f);
                    this.R0 = A;
                }
            }
        }
        A = surface;
        A = surface;
        A = surface;
        if (this.Q0 != A) {
            this.Q0 = A;
            this.I0.a(A);
            this.S0 = false;
            int state = getState();
            ?? E = E();
            if (E != 0) {
                if (f92.a >= 23 && A != 0 && !this.O0) {
                    E.a(A);
                } else {
                    N();
                    K();
                }
            }
            if (A != 0 && A != this.R0) {
                cg2 cg2Var = this.l1;
                if (cg2Var != null) {
                    this.J0.b(cg2Var);
                }
                T();
                if (state == 2) {
                    this.Y0 = this.K0 > 0 ? SystemClock.elapsedRealtime() + this.K0 : C.TIME_UNSET;
                    return;
                }
                return;
            }
            this.l1 = null;
            T();
            return;
        }
        if (A == 0 || A == this.R0) {
            return;
        }
        cg2 cg2Var2 = this.l1;
        if (cg2Var2 != null) {
            this.J0.b(cg2Var2);
        }
        if (this.S0) {
            this.J0.a(this.Q0);
        }
    }

    @Override
    public final void a(float f, float f2) throws m60 {
        super.a(f, f2);
        this.I0.b(f);
    }

    @Override
    public final boolean a(kv0 kv0Var) {
        return this.Q0 != null || b(kv0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int a(ov0 ov0Var, jc0 jc0Var) throws sv0.b {
        boolean z;
        int i = 0;
        if (!w01.f(jc0Var.m)) {
            return zo1.a(0, 0, 0);
        }
        boolean z2 = jc0Var.p != null;
        kk0 kk0VarA = a(ov0Var, jc0Var, z2, false);
        if (z2 && kk0VarA.isEmpty()) {
            kk0VarA = a(ov0Var, jc0Var, false, false);
        }
        if (kk0VarA.isEmpty()) {
            return zo1.a(1, 0, 0);
        }
        int i2 = jc0Var.F;
        if (i2 != 0 && i2 != 2) {
            return zo1.a(2, 0, 0);
        }
        kv0 kv0Var = (kv0) kk0VarA.get(0);
        boolean zA = kv0Var.a(jc0Var);
        if (!zA) {
            int i3 = 1;
            while (true) {
                if (i3 >= kk0VarA.size()) {
                    z = true;
                    break;
                }
                kv0 kv0Var2 = (kv0) kk0VarA.get(i3);
                if (kv0Var2.a(jc0Var)) {
                    z = false;
                    zA = true;
                    kv0Var = kv0Var2;
                    break;
                }
                i3++;
            }
        } else {
            z = true;
            break;
        }
        int i4 = zA ? 4 : 3;
        int i5 = kv0Var.b(jc0Var) ? 16 : 8;
        int i6 = kv0Var.g ? 64 : 0;
        int i7 = z ? 128 : 0;
        if (zA) {
            kk0 kk0VarA2 = a(ov0Var, jc0Var, z2, true);
            if (!kk0VarA2.isEmpty()) {
                kv0 kv0Var3 = (kv0) sv0.a(kk0VarA2, jc0Var).get(0);
                if (kv0Var3.a(jc0Var) && kv0Var3.b(jc0Var)) {
                    i = 32;
                }
            }
        }
        return i4 | i5 | i | i6 | i7;
    }

    public final void a(int i, int i2) {
        int i3;
        py pyVar = this.B0;
        pyVar.h += i;
        int i4 = i + i2;
        pyVar.g += i4;
        this.a1 += i4;
        int i5 = this.b1 + i4;
        this.b1 = i5;
        pyVar.i = Math.max(i5, pyVar.i);
        int i6 = this.L0;
        if (i6 <= 0 || (i3 = this.a1) < i6 || i3 <= 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.J0.a(this.a1, jElapsedRealtime - this.Z0);
        this.a1 = 0;
        this.Z0 = jElapsedRealtime;
    }

    @Override
    public final jv0 a(IllegalStateException illegalStateException, @Nullable kv0 kv0Var) {
        return new uv0(illegalStateException, kv0Var, this.Q0);
    }
}
