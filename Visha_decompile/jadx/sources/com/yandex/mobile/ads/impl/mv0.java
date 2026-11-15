package com.yandex.mobile.ads.impl;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public abstract class mv0 extends sk {
    private static final nv0 F0 = nm1.f();
    private static final byte[] G0 = {0, 0, 1, 103, 66, -64, ByteCode.T_LONG, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;

    @Nullable
    private m60 A0;

    @Nullable
    private jc0 B;
    protected py B0;

    @Nullable
    private jc0 C;
    private long C0;

    @Nullable
    private g40 D;
    private long D0;

    @Nullable
    private g40 E;
    private int E0;

    @Nullable
    private MediaCrypto F;
    private boolean G;
    private long H;
    private float I;
    private float J;

    @Nullable
    private gv0 K;

    @Nullable
    private jc0 L;

    @Nullable
    private MediaFormat M;
    private boolean N;
    private float O;

    @Nullable
    private ArrayDeque<kv0> P;

    @Nullable
    private b Q;

    @Nullable
    private kv0 R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;
    private boolean a0;
    private boolean b0;
    private boolean c0;

    @Nullable
    private qm d0;
    private long e0;
    private int f0;
    private int g0;

    @Nullable
    private ByteBuffer h0;
    private boolean i0;
    private boolean j0;
    private boolean k0;
    private boolean l0;
    private boolean m0;
    private final gv0.b n;
    private boolean n0;
    private final ov0 o;
    private int o0;
    private final boolean p;
    private int p0;
    private final float q;
    private int q0;
    private final ry r;
    private boolean r0;
    private final ry s;
    private boolean s0;
    private final ry t;
    private boolean t0;
    private final zk u;
    private long u0;
    private final h52<jc0> v;
    private long v0;
    private final ArrayList<Long> w;
    private boolean w0;
    private final MediaCodec.BufferInfo x;
    private boolean x0;
    private final long[] y;
    private boolean y0;
    private final long[] z;
    private boolean z0;

    @RequiresApi(31)
    public static final class a {
        @DoNotInline
        public static void a(gv0.a aVar, mi1 mi1Var) {
            LogSessionId logSessionIdA = mi1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public static class b extends Exception {
        public final String b;
        public final boolean c;

        @Nullable
        public final kv0 d;

        @Nullable
        public final String e;

        private static String a(int i) {
            return "com.monetization.ads.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        public b(int i, jc0 jc0Var, @Nullable sv0.b bVar, boolean z) {
            this("Decoder init failed: [" + i + "], " + jc0Var, bVar, jc0Var.m, z, null, a(i));
        }

        @Nullable
        @RequiresApi(21)
        public static String a(@Nullable Exception exc) {
            if (exc instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) exc).getDiagnosticInfo();
            }
            return null;
        }

        private b(String str, @Nullable Throwable th, String str2, boolean z, @Nullable kv0 kv0Var, @Nullable String str3) {
            super(str, th);
            this.b = str2;
            this.c = z;
            this.d = kv0Var;
            this.e = str3;
        }
    }

    public mv0(int i, f00 f00Var, ov0 ov0Var, float f) {
        super(i);
        this.n = f00Var;
        this.o = (ov0) hg.a(ov0Var);
        this.p = false;
        this.q = f;
        this.r = ry.j();
        this.s = new ry(0);
        this.t = new ry(2);
        zk zkVar = new zk();
        this.u = zkVar;
        this.v = new h52<>();
        this.w = new ArrayList<>();
        this.x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = C.TIME_UNSET;
        this.y = new long[10];
        this.z = new long[10];
        this.A = new long[10];
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        zkVar.e(0);
        zkVar.d.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.o0 = 0;
        this.f0 = -1;
        this.g0 = -1;
        this.e0 = C.TIME_UNSET;
        this.u0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        this.p0 = 0;
        this.q0 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:145:0x026d  */
    /* JADX WARN: Code duplicated, block: B:146:0x0270  */
    /* JADX WARN: Code duplicated, block: B:147:0x0273  */
    /* JADX WARN: Code duplicated, block: B:74:0x012a  */
    /* JADX WARN: Code duplicated, block: B:75:0x012d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0130  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.yandex.mobile.ads.impl.mv0, com.yandex.mobile.ads.impl.sk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.yandex.mobile.ads.impl.mv0, com.yandex.mobile.ads.impl.sk] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    private boolean A() throws m60 {
        int i;
        int i2;
        ?? r1 = this;
        gv0 gv0Var = r1.K;
        if (gv0Var == null || r1.p0 == 2 || r1.w0) {
            return false;
        }
        if (r1.f0 < 0) {
            int iB = gv0Var.b();
            r1.f0 = iB;
            if (iB < 0) {
                return false;
            }
            r1.s.d = r1.K.b(iB);
            r1.s.b();
        }
        if (r1.p0 == 1) {
            if (!r1.c0) {
                r1.s0 = true;
                r1.K.a(r1.f0, 0, 0L, 4);
                r1.f0 = -1;
                r1.s.d = null;
            }
            r1.p0 = 2;
            return false;
        }
        if (r1.a0) {
            r1.a0 = false;
            ByteBuffer byteBuffer = r1.s.d;
            byte[] bArr = G0;
            byteBuffer.put(bArr);
            r1.K.a(r1.f0, bArr.length, 0L, 0);
            r1.f0 = -1;
            r1.s.d = null;
            r1.r0 = true;
            return true;
        }
        if (r1.o0 == 1) {
            for (int i3 = 0; i3 < r1.L.o.size(); i3++) {
                r1.s.d.put(r1.L.o.get(i3));
            }
            r1.o0 = 2;
        }
        int iPosition = r1.s.d.position();
        kc0 kc0VarQ = q();
        try {
            int iA = r1.a(kc0VarQ, r1.s, 0);
            if (e()) {
                r1.v0 = r1.u0;
            }
            if (iA == -3) {
                return false;
            }
            if (iA == -5) {
                if (r1.o0 == 2) {
                    r1.s.b();
                    r1.o0 = 1;
                }
                r1.a(kc0VarQ);
                return true;
            }
            if (r1.s.f()) {
                if (r1.o0 == 2) {
                    r1.s.b();
                    r1.o0 = 1;
                }
                r1.w0 = true;
                if (!r1.r0) {
                    M();
                    return false;
                }
                try {
                    if (!r1.c0) {
                        r1.s0 = true;
                        r1.K.a(r1.f0, 0, 0L, 4);
                        r1.f0 = -1;
                        r1.s.d = null;
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    jc0 jc0Var = r1.B;
                    int errorCode = e.getErrorCode();
                    int i4 = f92.a;
                    if (errorCode == 2 || errorCode == 4) {
                        i2 = 6005;
                    } else if (errorCode == 10) {
                        i2 = 6004;
                    } else if (errorCode == 7) {
                        i2 = 6005;
                    } else if (errorCode != 8) {
                        switch (errorCode) {
                            case 15:
                                i2 = 6003;
                                break;
                            case 16:
                            case 18:
                                i2 = 6005;
                                break;
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                i2 = 6004;
                                break;
                            default:
                                switch (errorCode) {
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                        i2 = 6002;
                                        break;
                                    default:
                                        i2 = 6006;
                                        break;
                                }
                                break;
                        }
                    } else {
                        i2 = 6003;
                    }
                    throw r1.a(e, jc0Var, i2);
                }
            }
            if (!r1.r0 && !r1.s.g()) {
                r1.s.b();
                if (r1.o0 == 2) {
                    r1.o0 = 1;
                }
                return true;
            }
            boolean zI = r1.s.i();
            if (zI) {
                r1.s.c.a(iPosition);
            }
            if (r1.T && !zI) {
                ByteBuffer byteBuffer2 = r1.s.d;
                byte[] bArr2 = e41.a;
                int iPosition2 = byteBuffer2.position();
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    int i7 = i5 + 1;
                    if (i7 >= iPosition2) {
                        byteBuffer2.clear();
                        break;
                    }
                    int i8 = byteBuffer2.get(i5) & 255;
                    if (i6 == 3) {
                        if (i8 == 1 && (byteBuffer2.get(i7) & 31) == 7) {
                            ByteBuffer byteBufferDuplicate = byteBuffer2.duplicate();
                            byteBufferDuplicate.position(i5 - 3);
                            byteBufferDuplicate.limit(iPosition2);
                            byteBuffer2.position(0);
                            byteBuffer2.put(byteBufferDuplicate);
                            break;
                        }
                    } else if (i8 == 0) {
                        i6++;
                    }
                    if (i8 != 0) {
                        i6 = 0;
                    }
                    i5 = i7;
                }
                if (r1.s.d.position() == 0) {
                    return true;
                }
                r1.T = false;
            }
            ry ryVar = r1.s;
            long jA = ryVar.f;
            qm qmVar = r1.d0;
            if (qmVar != null) {
                jA = qmVar.a(r1.B, ryVar);
                r1.u0 = Math.max(r1.u0, r1.d0.a(r1.B));
            }
            if (r1.s.e()) {
                r1.w.add(Long.valueOf(jA));
            }
            if (r1.y0) {
                r1.v.a(r1.B, jA);
                r1.y0 = false;
            }
            r1.u0 = Math.max(r1.u0, jA);
            r1.s.h();
            if (r1.s.d()) {
                r1.a(r1.s);
            }
            r1.b(r1.s);
            try {
                if (zI) {
                    r1.K.a(r1.f0, r1.s.c, jA);
                } else {
                    r1.K.a(r1.f0, r1.s.d.limit(), jA, 0);
                }
                r1.f0 = -1;
                r1.s.d = null;
                r1.r0 = true;
                r1.o0 = 0;
                py pyVar = r1.B0;
                r1 = pyVar.c + 1;
                pyVar.c = r1;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                jc0 jc0Var2 = r1.B;
                int errorCode2 = e2.getErrorCode();
                int i9 = f92.a;
                if (errorCode2 == 2 || errorCode2 == 4) {
                    i = 6005;
                } else if (errorCode2 == 10) {
                    i = 6004;
                } else if (errorCode2 == 7) {
                    i = 6005;
                } else if (errorCode2 != 8) {
                    switch (errorCode2) {
                        case 15:
                            i = 6003;
                            break;
                        case 16:
                        case 18:
                            i = 6005;
                            break;
                        case 17:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            i = 6004;
                            break;
                        default:
                            switch (errorCode2) {
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                case 28:
                                    i = 6002;
                                    break;
                                default:
                                    i = 6006;
                                    break;
                            }
                            break;
                    }
                } else {
                    i = 6003;
                }
                throw r1.a(e2, jc0Var2, i);
            }
        } catch (ry.a e3) {
            r1.a(e3);
            r1.c(0);
            B();
            return true;
        }
    }

    private void B() {
        try {
            this.K.flush();
        } finally {
            P();
        }
    }

    @TargetApi(23)
    private void M() throws m60 {
        int i = this.q0;
        if (i == 1) {
            B();
            return;
        }
        if (i == 2) {
            B();
            S();
        } else if (i != 3) {
            this.x0 = true;
            O();
        } else {
            N();
            K();
        }
    }

    @RequiresApi(23)
    private void S() throws m60 {
        try {
            this.F.setMediaDrmSession(a(this.E).b);
            g40 g40Var = this.E;
            g40.a(this.D, g40Var);
            this.D = g40Var;
            this.p0 = 0;
            this.q0 = 0;
        } catch (MediaCryptoException e) {
            throw a(e, this.B, 6006);
        }
    }

    private boolean c(long j, long j2) throws m60 {
        boolean z;
        boolean zA;
        int iA;
        boolean z2;
        if (this.g0 < 0) {
            if (this.X && this.s0) {
                try {
                    iA = this.K.a(this.x);
                } catch (IllegalStateException unused) {
                    M();
                    if (this.x0) {
                        N();
                    }
                    return false;
                }
            } else {
                iA = this.K.a(this.x);
            }
            if (iA < 0) {
                if (iA != -2) {
                    if (this.c0 && (this.w0 || this.p0 == 2)) {
                        M();
                    }
                    return false;
                }
                this.t0 = true;
                MediaFormat mediaFormatA = this.K.a();
                if (this.S != 0 && mediaFormatA.getInteger("width") == 32 && mediaFormatA.getInteger("height") == 32) {
                    this.b0 = true;
                } else {
                    if (this.Z) {
                        mediaFormatA.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT, 1);
                    }
                    this.M = mediaFormatA;
                    this.N = true;
                }
                return true;
            }
            if (this.b0) {
                this.b0 = false;
                this.K.a(false, iA);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.x;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                M();
                return false;
            }
            this.g0 = iA;
            ByteBuffer byteBufferC = this.K.c(iA);
            this.h0 = byteBufferC;
            if (byteBufferC != null) {
                byteBufferC.position(this.x.offset);
                ByteBuffer byteBuffer = this.h0;
                MediaCodec.BufferInfo bufferInfo2 = this.x;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Y) {
                MediaCodec.BufferInfo bufferInfo3 = this.x;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.u0;
                    if (j3 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            long j4 = this.x.presentationTimeUs;
            int size = this.w.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z2 = false;
                    break;
                }
                if (this.w.get(i).longValue() == j4) {
                    this.w.remove(i);
                    z2 = true;
                    break;
                }
                i++;
            }
            this.i0 = z2;
            long j5 = this.v0;
            long j6 = this.x.presentationTimeUs;
            this.j0 = j5 == j6;
            d(j6);
        }
        if (this.X && this.s0) {
            try {
                gv0 gv0Var = this.K;
                ByteBuffer byteBuffer2 = this.h0;
                int i2 = this.g0;
                MediaCodec.BufferInfo bufferInfo4 = this.x;
                z = false;
                try {
                    zA = a(j, j2, gv0Var, byteBuffer2, i2, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.i0, this.j0, this.C);
                } catch (IllegalStateException unused2) {
                    M();
                    if (this.x0) {
                        N();
                    }
                    return z;
                }
            } catch (IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            gv0 gv0Var2 = this.K;
            ByteBuffer byteBuffer3 = this.h0;
            int i3 = this.g0;
            MediaCodec.BufferInfo bufferInfo5 = this.x;
            zA = a(j, j2, gv0Var2, byteBuffer3, i3, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.i0, this.j0, this.C);
        }
        if (zA) {
            c(this.x.presentationTimeUs);
            boolean z3 = (this.x.flags & 4) != 0 ? true : z;
            this.g0 = -1;
            this.h0 = null;
            if (!z3) {
                return r14;
            }
            M();
        }
        return z;
    }

    private void y() throws m60 {
        if (this.w0) {
            throw new IllegalStateException();
        }
        kc0 kc0VarQ = q();
        this.t.b();
        do {
            this.t.b();
            int iA = a(kc0VarQ, this.t, 0);
            if (iA == -5) {
                a(kc0VarQ);
                return;
            }
            if (iA != -4) {
                if (iA != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.t.f()) {
                    this.w0 = true;
                    return;
                }
                if (this.y0) {
                    jc0 jc0Var = this.B;
                    jc0Var.getClass();
                    this.C = jc0Var;
                    a(jc0Var, (MediaFormat) null);
                    this.y0 = false;
                }
                this.t.h();
            }
        } while (this.u.a(this.t));
        this.l0 = true;
    }

    @TargetApi(23)
    private boolean z() throws m60 {
        if (this.r0) {
            this.p0 = 1;
            if (this.U || this.W) {
                this.q0 = 3;
                return false;
            }
            this.q0 = 2;
        } else {
            S();
        }
        return true;
    }

    public final void C() throws m60 {
        if (D()) {
            K();
        }
    }

    public final boolean D() {
        if (this.K == null) {
            return false;
        }
        int i = this.q0;
        if (i == 3 || this.U || ((this.V && !this.t0) || (this.W && this.s0))) {
            N();
            return true;
        }
        if (i == 2) {
            int i2 = f92.a;
            if (i2 < 23) {
                throw new IllegalStateException();
            }
            if (i2 >= 23) {
                try {
                    S();
                } catch (m60 e) {
                    et0.b("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                    N();
                    return true;
                }
            }
        }
        B();
        return false;
    }

    @Nullable
    public final gv0 E() {
        return this.K;
    }

    @Nullable
    public final kv0 F() {
        return this.R;
    }

    public boolean G() {
        return false;
    }

    @Nullable
    public final MediaFormat H() {
        return this.M;
    }

    public final long I() {
        return this.D0;
    }

    public final float J() {
        return this.I;
    }

    public final void K() throws m60 {
        jc0 jc0Var;
        if (this.K != null || this.k0 || (jc0Var = this.B) == null) {
            return;
        }
        boolean z = false;
        if (this.E == null && b(jc0Var)) {
            jc0 jc0Var2 = this.B;
            this.m0 = false;
            this.u.b();
            this.t.b();
            this.l0 = false;
            this.k0 = false;
            String str = jc0Var2.m;
            if ("audio/mp4a-latm".equals(str) || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                this.u.f(32);
            } else {
                this.u.f(1);
            }
            this.k0 = true;
            return;
        }
        g40 g40Var = this.E;
        g40.a(this.D, g40Var);
        this.D = g40Var;
        String str2 = this.B.m;
        if (g40Var != null) {
            if (this.F == null) {
                rc0 rc0VarA = a(g40Var);
                if (rc0VarA != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(rc0VarA.a, rc0VarA.b);
                        this.F = mediaCrypto;
                        if (!rc0VarA.c && mediaCrypto.requiresSecureDecoderComponent(str2)) {
                            z = true;
                        }
                        this.G = z;
                    } catch (MediaCryptoException e) {
                        throw a(e, this.B, 6006);
                    }
                } else if (this.D.getError() == null) {
                    return;
                }
            }
            if (rc0.d) {
                int state = this.D.getState();
                if (state == 1) {
                    g40.a error = this.D.getError();
                    error.getClass();
                    throw a(error, this.B, error.b);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            a(this.F, this.G);
        } catch (b e2) {
            throw a(e2, this.B, 4001);
        }
    }

    public abstract void L();

    /* JADX WARN: Multi-variable type inference failed */
    public final void N() {
        try {
            gv0 gv0Var = this.K;
            if (gv0Var != null) {
                gv0Var.release();
                this.B0.b++;
                a(this.R.a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.F = null;
                g40.a(this.D, null);
                this.D = null;
                Q();
            }
        } catch (Throwable th) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.F = null;
                g40.a(this.D, null);
                this.D = null;
                Q();
            }
        }
    }

    public void O() throws m60 {
    }

    @CallSuper
    public void P() {
        this.f0 = -1;
        this.s.d = null;
        this.g0 = -1;
        this.h0 = null;
        this.e0 = C.TIME_UNSET;
        this.s0 = false;
        this.r0 = false;
        this.a0 = false;
        this.b0 = false;
        this.i0 = false;
        this.j0 = false;
        this.w.clear();
        this.u0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        qm qmVar = this.d0;
        if (qmVar != null) {
            qmVar.a();
        }
        this.p0 = 0;
        this.q0 = 0;
        this.o0 = this.n0 ? 1 : 0;
    }

    @CallSuper
    public final void Q() {
        P();
        this.A0 = null;
        this.d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.c0 = false;
        this.n0 = false;
        this.o0 = 0;
        this.G = false;
    }

    public final void R() {
        this.z0 = true;
    }

    public abstract float a(float f, jc0[] jc0VarArr);

    public abstract int a(ov0 ov0Var, jc0 jc0Var) throws sv0.b;

    public abstract gv0.a a(kv0 kv0Var, jc0 jc0Var, @Nullable MediaCrypto mediaCrypto, float f);

    public abstract ty a(kv0 kv0Var, jc0 jc0Var, jc0 jc0Var2);

    public abstract ArrayList a(ov0 ov0Var, jc0 jc0Var, boolean z) throws sv0.b;

    public abstract void a(jc0 jc0Var, @Nullable MediaFormat mediaFormat) throws m60;

    public void a(ry ryVar) throws m60 {
    }

    public abstract void a(Exception exc);

    public abstract void a(String str);

    public abstract void a(String str, long j, long j2);

    public abstract boolean a(long j, long j2, @Nullable gv0 gv0Var, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, jc0 jc0Var) throws m60;

    public abstract void b(ry ryVar) throws m60;

    public boolean b(jc0 jc0Var) {
        return false;
    }

    @Override
    public boolean d() {
        return this.B != null && (t() || this.g0 >= 0 || (this.e0 != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.e0));
    }

    @Override
    public final int f() {
        return 8;
    }

    @Override
    public void u() {
        this.B = null;
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        this.E0 = 0;
        D();
    }

    @Override
    public void v() {
        try {
            this.m0 = false;
            this.u.b();
            this.t.b();
            this.l0 = false;
            this.k0 = false;
            N();
        } finally {
            g40.a(this.E, null);
            this.E = null;
        }
    }

    private boolean b(long j, long j2) throws m60 {
        boolean z;
        if (this.x0) {
            throw new IllegalStateException();
        }
        if (this.u.m()) {
            zk zkVar = this.u;
            ByteBuffer byteBuffer = zkVar.d;
            int i = this.g0;
            int iL = zkVar.l();
            zk zkVar2 = this.u;
            if (!a(j, j2, null, byteBuffer, i, 0, iL, zkVar2.f, zkVar2.e(), this.u.f(), this.C)) {
                return false;
            }
            c(this.u.k());
            this.u.b();
            z = false;
        } else {
            z = false;
        }
        if (this.w0) {
            this.x0 = true;
            return z;
        }
        if (this.l0) {
            if (!this.u.a(this.t)) {
                throw new IllegalStateException();
            }
            this.l0 = z;
        }
        if (this.m0) {
            if (this.u.m()) {
                return true;
            }
            this.m0 = z;
            this.u.b();
            this.t.b();
            this.l0 = z;
            this.k0 = z;
            this.m0 = z;
            K();
            if (!this.k0) {
                return z;
            }
        }
        y();
        if (this.u.m()) {
            this.u.h();
        }
        if (this.u.m() || this.w0 || this.m0) {
            return true;
        }
        return z;
    }

    public boolean a(kv0 kv0Var) {
        return true;
    }

    private List<kv0> a(boolean z) throws sv0.b {
        ArrayList arrayListA = a(this.o, this.B, z);
        if (arrayListA.isEmpty() && z) {
            arrayListA = a(this.o, this.B, false);
            if (!arrayListA.isEmpty()) {
                et0.d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.m + ", but no secure decoder available. Trying to proceed with " + arrayListA + Consts.DOT);
            }
        }
        return arrayListA;
    }

    public final void d(long j) throws m60 {
        jc0 jc0VarB = this.v.b(j);
        if (jc0VarB == null && this.N) {
            jc0VarB = this.v.c();
        }
        if (jc0VarB != null) {
            this.C = jc0VarB;
        } else if (!this.N || this.C == null) {
            return;
        }
        a(this.C, this.M);
        this.N = false;
    }

    @Nullable
    private rc0 a(g40 g40Var) throws m60 {
        fv cryptoConfig = g40Var.getCryptoConfig();
        if (cryptoConfig != null && !(cryptoConfig instanceof rc0)) {
            throw a(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + cryptoConfig), this.B, 6001);
        }
        return (rc0) cryptoConfig;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0211  */
    /* JADX WARN: Code duplicated, block: B:136:0x0265  */
    /* JADX WARN: Code duplicated, block: B:145:0x028a  */
    /* JADX WARN: Code duplicated, block: B:27:0x009e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:58:0x0124 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0126  */
    /* JADX WARN: Code duplicated, block: B:67:0x014b  */
    /* JADX WARN: Code duplicated, block: B:87:0x019f  */
    private void a(kv0 kv0Var, MediaCrypto mediaCrypto) throws Exception {
        int i;
        nv0 nv0Var;
        String strF;
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        nv0 nv0Var2;
        boolean z4;
        String str2;
        nv0 nv0Var3;
        String str3 = kv0Var.a;
        int i2 = f92.a;
        float fA = i2 < 23 ? -1.0f : a(this.J, s());
        float f = fA > this.q ? fA : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        gv0.a aVarA = a(kv0Var, this.B, mediaCrypto, f);
        if (i2 >= 31) {
            a.a(aVarA, r());
        }
        try {
            u52.a("createCodec:" + str3);
            this.K = this.n.a(aVarA);
            u52.a();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = kv0Var;
            this.O = f;
            this.L = this.B;
            if (i2 <= 25) {
                nv0 nv0Var4 = F0;
                if (nv0Var4.p().equals(str3)) {
                    String str4 = f92.d;
                    if (str4.startsWith(nv0Var4.J()) || str4.startsWith(nv0Var4.F()) || str4.startsWith(nv0Var4.G()) || str4.startsWith(nv0Var4.I())) {
                        i = 2;
                    } else if (i2 < 24) {
                        nv0Var = F0;
                        if (!nv0Var.s().equals(str3) || nv0Var.t().equals(str3)) {
                            strF = nv0Var.f();
                            str = f92.b;
                            if (!strF.equals(str) || nv0Var.g().equals(str) || nv0Var.k().equals(str) || nv0Var.M().equals(str)) {
                                i = 1;
                            } else {
                                i = 0;
                            }
                        } else {
                            i = 0;
                        }
                    } else {
                        i = 0;
                    }
                } else if (i2 < 24) {
                    nv0Var = F0;
                    if (nv0Var.s().equals(str3)) {
                        strF = nv0Var.f();
                        str = f92.b;
                        if (strF.equals(str)) {
                        }
                        i = 1;
                    } else {
                        strF = nv0Var.f();
                        str = f92.b;
                        if (strF.equals(str)) {
                        }
                        i = 1;
                    }
                } else {
                    i = 0;
                }
            } else if (i2 < 24) {
                nv0Var = F0;
                if (nv0Var.s().equals(str3)) {
                    strF = nv0Var.f();
                    str = f92.b;
                    if (strF.equals(str)) {
                    }
                    i = 1;
                } else {
                    strF = nv0Var.f();
                    str = f92.b;
                    if (strF.equals(str)) {
                    }
                    i = 1;
                }
            } else {
                i = 0;
            }
            this.S = i;
            this.T = i2 < 21 && this.L.o.isEmpty() && F0.r().equals(str3);
            if (i2 < 18) {
                z = true;
            } else if (i2 == 18) {
                nv0 nv0Var5 = F0;
                if (nv0Var5.u().equals(str3) || nv0Var5.v().equals(str3)) {
                    z = true;
                } else {
                    if (i2 == 19) {
                        str2 = f92.d;
                        nv0Var3 = F0;
                        if (!str2.startsWith(nv0Var3.H()) && (nv0Var3.o().equals(str3) || nv0Var3.p().equals(str3))) {
                            z = true;
                        }
                    }
                    z = false;
                }
            } else {
                if (i2 == 19) {
                    str2 = f92.d;
                    nv0Var3 = F0;
                    if (!str2.startsWith(nv0Var3.H())) {
                    }
                }
                z = false;
            }
            this.U = z;
            this.V = i2 == 29 && F0.d().equals(str3);
            if (i2 > 23 || !F0.D().equals(str3)) {
                if (i2 <= 19) {
                    nv0 nv0Var6 = F0;
                    String strL = nv0Var6.l();
                    String str5 = f92.b;
                    z2 = (strL.equals(str5) || nv0Var6.L().equals(str5)) && (nv0Var6.y().equals(str3) || nv0Var6.z().equals(str3));
                }
            }
            this.W = z2;
            this.X = i2 == 21 && F0.C().equals(str3);
            if (i2 < 21) {
                nv0 nv0Var7 = F0;
                if (nv0Var7.w().equals(str3) && nv0Var7.K().equals(f92.c)) {
                    String str6 = f92.b;
                    if (str6.startsWith(nv0Var7.c()) || str6.startsWith(nv0Var7.j()) || str6.startsWith(nv0Var7.h()) || str6.startsWith(nv0Var7.i()) || str6.startsWith(nv0Var7.m()) || str6.startsWith(nv0Var7.n())) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            this.Y = z3;
            this.Z = i2 <= 18 && this.L.z == 1 && F0.q().equals(str3);
            String str7 = kv0Var.a;
            if ((i2 <= 25 && F0.E().equals(str7)) || (i2 <= 17 && F0.x().equals(str7))) {
                z4 = true;
            } else if (i2 <= 29) {
                nv0 nv0Var8 = F0;
                if (nv0Var8.A().equals(str7) || nv0Var8.B().equals(str7)) {
                    z4 = true;
                } else {
                    nv0Var2 = F0;
                    if ((!nv0Var2.b().equals(f92.c) && nv0Var2.a().equals(f92.d) && kv0Var.f) || G()) {
                        z4 = true;
                    }
                }
            } else {
                nv0Var2 = F0;
                z4 = !nv0Var2.b().equals(f92.c) ? false : false;
            }
            this.c0 = z4;
            this.K.getClass();
            if (F0.e().equals(kv0Var.a)) {
                this.d0 = new qm();
            }
            if (getState() == 2) {
                this.e0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.B0.a++;
            a(str3, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            u52.a();
            throw th;
        }
    }

    @CallSuper
    public void c(long j) {
        while (true) {
            int i = this.E0;
            if (i == 0 || j < this.A[0]) {
                return;
            }
            long[] jArr = this.y;
            this.C0 = jArr[0];
            this.D0 = this.z[0];
            int i2 = i - 1;
            this.E0 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.E0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.E0);
            L();
        }
    }

    private boolean c(int i) throws m60 {
        kc0 kc0VarQ = q();
        this.r.b();
        int iA = a(kc0VarQ, this.r, i | 4);
        if (iA == -5) {
            a(kc0VarQ);
            return true;
        }
        if (iA != -4 || !this.r.f()) {
            return false;
        }
        this.w0 = true;
        M();
        return false;
    }

    private boolean c(jc0 jc0Var) throws m60 {
        if (f92.a >= 23 && this.K != null && this.q0 != 3 && getState() != 0) {
            float fA = a(this.J, s());
            float f = this.O;
            if (f == fA) {
                return true;
            }
            if (fA == -1.0f) {
                if (this.r0) {
                    this.p0 = 1;
                    this.q0 = 3;
                    return false;
                }
                N();
                K();
                return false;
            }
            if (f == -1.0f && fA <= this.q) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, fA);
            this.K.a(bundle);
            this.O = fA;
        }
        return true;
    }

    @Override
    public boolean a() {
        return this.x0;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x004a A[SYNTHETIC] */
    private void a(MediaCrypto mediaCrypto, boolean z) throws b {
        b bVar;
        String strA;
        b bVar2;
        if (this.P == null) {
            try {
                List<kv0> listA = a(z);
                ArrayDeque<kv0> arrayDeque = new ArrayDeque<>();
                this.P = arrayDeque;
                if (this.p) {
                    arrayDeque.addAll(listA);
                } else if (!listA.isEmpty()) {
                    this.P.add(listA.get(0));
                }
                this.Q = null;
            } catch (sv0.b e) {
                throw new b(-49998, this.B, e, z);
            }
        }
        if (!this.P.isEmpty()) {
            kv0 kv0VarPeekFirst = this.P.peekFirst();
            while (this.K == null) {
                kv0 kv0VarPeekFirst2 = this.P.peekFirst();
                if (!a(kv0VarPeekFirst2)) {
                    return;
                }
                try {
                    a(kv0VarPeekFirst2, mediaCrypto);
                } catch (Exception e2) {
                    if (kv0VarPeekFirst2 == kv0VarPeekFirst) {
                        try {
                            et0.d("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                            Thread.sleep(50L);
                            a(kv0VarPeekFirst2, mediaCrypto);
                        } catch (Exception e3) {
                            et0.b("MediaCodecRenderer", "Failed to initialize decoder: " + kv0VarPeekFirst2, e3);
                            this.P.removeFirst();
                            jc0 jc0Var = this.B;
                            String str = "Decoder init failed: " + kv0VarPeekFirst2.a + ", " + jc0Var;
                            String str2 = jc0Var.m;
                            if (f92.a >= 21) {
                                strA = b.a(e3);
                            } else {
                                strA = null;
                            }
                            bVar = new b(str, e3, str2, z, kv0VarPeekFirst2, strA);
                            a(bVar);
                            bVar2 = this.Q;
                            if (bVar2 == null) {
                                this.Q = bVar;
                            } else {
                                this.Q = new b(bVar2.getMessage(), bVar2.getCause(), bVar2.b, bVar2.c, bVar2.d, bVar2.e);
                            }
                            if (!this.P.isEmpty()) {
                                throw this.Q;
                            }
                        }
                    } else {
                        throw e2;
                    }
                    et0.b("MediaCodecRenderer", "Failed to initialize decoder: " + kv0VarPeekFirst2, e3);
                    this.P.removeFirst();
                    jc0 jc0Var2 = this.B;
                    String str3 = "Decoder init failed: " + kv0VarPeekFirst2.a + ", " + jc0Var2;
                    String str4 = jc0Var2.m;
                    if (f92.a >= 21) {
                        strA = b.a(e3);
                    } else {
                        strA = null;
                    }
                    bVar = new b(str3, e3, str4, z, kv0VarPeekFirst2, strA);
                    a(bVar);
                    bVar2 = this.Q;
                    if (bVar2 == null) {
                        this.Q = bVar;
                    } else {
                        this.Q = new b(bVar2.getMessage(), bVar2.getCause(), bVar2.b, bVar2.c, bVar2.d, bVar2.e);
                    }
                    if (!this.P.isEmpty()) {
                        throw this.Q;
                    }
                }
            }
            this.P = null;
            return;
        }
        throw new b(-49999, this.B, null, z);
    }

    @Override
    public void a(boolean z, boolean z2) throws m60 {
        this.B0 = new py();
    }

    /* JADX WARN: Code duplicated, block: B:82:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:97:0x0108  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0072, code lost:
    
        if (r12 != false) goto L112;
     */
    @Nullable
    @CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ty a(kc0 kc0Var) throws m60 {
        int i;
        rc0 rc0VarA;
        boolean z = true;
        this.y0 = true;
        jc0 jc0Var = kc0Var.b;
        jc0Var.getClass();
        if (jc0Var.m != null) {
            g40 g40Var = kc0Var.a;
            g40.a(this.E, g40Var);
            this.E = g40Var;
            this.B = jc0Var;
            if (this.k0) {
                this.m0 = true;
                return null;
            }
            gv0 gv0Var = this.K;
            if (gv0Var == null) {
                this.P = null;
                K();
                return null;
            }
            kv0 kv0Var = this.R;
            jc0 jc0Var2 = this.L;
            g40 g40Var2 = this.D;
            if (g40Var2 != g40Var) {
                if (g40Var != null && g40Var2 != null && f92.a >= 23) {
                    UUID uuid = rm.e;
                    if (!uuid.equals(g40Var2.getSchemeUuid()) && !uuid.equals(g40Var.getSchemeUuid()) && (rc0VarA = a(g40Var)) != null) {
                        boolean zRequiresSecureDecoder = rc0VarA.c ? false : g40Var.requiresSecureDecoder(jc0Var.m);
                        if (!kv0Var.f) {
                        }
                    }
                }
                if (this.r0) {
                    this.p0 = 1;
                    this.q0 = 3;
                } else {
                    N();
                    K();
                }
                return new ty(kv0Var.a, jc0Var2, jc0Var, 0, 128);
            }
            boolean z2 = this.E != this.D;
            if (z2 && f92.a < 23) {
                throw new IllegalStateException();
            }
            ty tyVarA = a(kv0Var, jc0Var2, jc0Var);
            int i2 = tyVarA.d;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            if (c(jc0Var)) {
                                this.L = jc0Var;
                                if (z2 && !z()) {
                                    i = 2;
                                }
                            } else {
                                i = 16;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else if (c(jc0Var)) {
                        this.n0 = true;
                        this.o0 = 1;
                        int i3 = this.S;
                        if (i3 != 2 && (i3 != 1 || jc0Var.r != jc0Var2.r || jc0Var.s != jc0Var2.s)) {
                            z = false;
                        }
                        this.a0 = z;
                        this.L = jc0Var;
                        if (z2 && !z()) {
                            i = 2;
                        }
                    } else {
                        i = 16;
                    }
                } else if (c(jc0Var)) {
                    this.L = jc0Var;
                    if (z2) {
                        if (!z()) {
                            i = 2;
                        }
                    } else if (this.r0) {
                        this.p0 = 1;
                        if (!this.U && !this.W) {
                            this.q0 = 1;
                        } else {
                            this.q0 = 3;
                            i = 2;
                        }
                    }
                } else {
                    i = 16;
                }
                return (tyVarA.d != 0 || (this.K == gv0Var && this.q0 != 3)) ? tyVarA : new ty(kv0Var.a, jc0Var2, jc0Var, 0, i);
            }
            if (this.r0) {
                this.p0 = 1;
                this.q0 = 3;
            } else {
                N();
                K();
            }
            i = 0;
            if (tyVarA.d != 0) {
            }
        }
        throw a(new IllegalArgumentException(), jc0Var, 4005);
    }

    @Override
    public void a(long j, boolean z) throws m60 {
        this.w0 = false;
        this.x0 = false;
        this.z0 = false;
        if (this.k0) {
            this.u.b();
            this.t.b();
            this.l0 = false;
        } else {
            C();
        }
        if (this.v.d() > 0) {
            this.y0 = true;
        }
        this.v.a();
        int i = this.E0;
        if (i != 0) {
            int i2 = i - 1;
            this.D0 = this.z[i2];
            this.C0 = this.y[i2];
            this.E0 = 0;
        }
    }

    @Override
    public final void a(jc0[] jc0VarArr, long j, long j2) throws m60 {
        if (this.D0 == C.TIME_UNSET) {
            if (this.C0 == C.TIME_UNSET) {
                this.C0 = j;
                this.D0 = j2;
                return;
            }
            throw new IllegalStateException();
        }
        int i = this.E0;
        if (i == this.z.length) {
            et0.d("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.z[this.E0 - 1]);
        } else {
            this.E0 = i + 1;
        }
        long[] jArr = this.y;
        int i2 = this.E0 - 1;
        jArr[i2] = j;
        this.z[i2] = j2;
        this.A[i2] = this.u0;
    }

    @Override
    public final void a(long j, long j2) throws m60 {
        boolean z = false;
        if (this.z0) {
            this.z0 = false;
            M();
        }
        m60 m60Var = this.A0;
        if (m60Var == null) {
            try {
                if (this.x0) {
                    O();
                    return;
                }
                if (this.B != null || c(2)) {
                    K();
                    if (this.k0) {
                        u52.a("bypassRender");
                        while (b(j, j2)) {
                        }
                        u52.a();
                    } else if (this.K != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        u52.a("drainAndFeed");
                        while (c(j, j2) && (this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - jElapsedRealtime < this.H)) {
                        }
                        while (A() && (this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - jElapsedRealtime < this.H)) {
                        }
                        u52.a();
                    } else {
                        this.B0.d += b(j);
                        c(1);
                    }
                    synchronized (this.B0) {
                    }
                    return;
                }
                return;
            } catch (IllegalStateException e) {
                int i = f92.a;
                if (i < 21 || !(e instanceof MediaCodec.CodecException)) {
                    StackTraceElement[] stackTrace = e.getStackTrace();
                    if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                        throw e;
                    }
                }
                a(e);
                if (i >= 21 && (e instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e).isRecoverable()) {
                    z = true;
                }
                if (z) {
                    N();
                }
                throw a(4003, this.B, a(e, this.R), z);
            }
        }
        this.A0 = null;
        throw m60Var;
    }

    public final void a(m60 m60Var) {
        this.A0 = m60Var;
    }

    @Override
    public void a(float f, float f2) throws m60 {
        this.I = f;
        this.J = f2;
        c(this.L);
    }

    @Override
    public final int a(jc0 jc0Var) throws m60 {
        try {
            return a(this.o, jc0Var);
        } catch (sv0.b e) {
            throw a(e, jc0Var, 4002);
        }
    }

    public jv0 a(IllegalStateException illegalStateException, @Nullable kv0 kv0Var) {
        return new jv0(illegalStateException, kv0Var);
    }
}
