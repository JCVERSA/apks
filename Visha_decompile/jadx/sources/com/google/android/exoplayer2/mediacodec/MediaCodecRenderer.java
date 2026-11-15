package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.k;
import defpackage.aoa;
import defpackage.ay6;
import defpackage.blb;
import defpackage.c64;
import defpackage.ju1;
import defpackage.lu1;
import defpackage.md0;
import defpackage.o44;
import defpackage.op5;
import defpackage.so0;
import defpackage.sua;
import defpackage.ta8;
import defpackage.to0;
import defpackage.ul1;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.d {
    public static final byte[] G0 = {0, 0, 1, 103, 66, -64, ByteCode.T_LONG, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public final long[] A;
    public boolean A0;
    public final long[] B;
    public ExoPlaybackException B0;
    public k C;
    public ju1 C0;
    public k D;
    public long D0;
    public DrmSession E;
    public long E0;
    public DrmSession F;
    public int F0;
    public MediaCrypto G;
    public boolean H;
    public long I;
    public float J;
    public float K;
    public c L;
    public k M;
    public MediaFormat N;
    public boolean O;
    public float P;
    public ArrayDeque Q;
    public DecoderInitializationException R;
    public d S;
    public int T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public boolean c0;
    public boolean d0;
    public so0 e0;
    public long f0;
    public int g0;
    public int h0;
    public ByteBuffer i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public boolean n0;
    public final c.b o;
    public boolean o0;
    public final e p;
    public int p0;
    public final boolean q;
    public int q0;
    public final float r;
    public int r0;
    public final DecoderInputBuffer s;
    public boolean s0;
    public final DecoderInputBuffer t;
    public boolean t0;
    public final DecoderInputBuffer u;
    public boolean u0;
    public final md0 v;
    public long v0;
    public final aoa w;
    public long w0;
    public final ArrayList x;
    public boolean x0;
    public final MediaCodec.BufferInfo y;
    public boolean y0;
    public final long[] z;
    public boolean z0;

    public static final class a {
        @DoNotInline
        public static void a(c.a aVar, ta8 ta8Var) {
            LogSessionId logSessionIdA = ta8Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public MediaCodecRenderer(int i, c.b bVar, e eVar, boolean z, float f) {
        super(i);
        this.o = bVar;
        this.p = (e) zi.e(eVar);
        this.q = z;
        this.r = f;
        this.s = DecoderInputBuffer.p();
        this.t = new DecoderInputBuffer(0);
        this.u = new DecoderInputBuffer(2);
        md0 md0Var = new md0();
        this.v = md0Var;
        this.w = new aoa();
        this.x = new ArrayList();
        this.y = new MediaCodec.BufferInfo();
        this.J = 1.0f;
        this.K = 1.0f;
        this.I = C.TIME_UNSET;
        this.z = new long[10];
        this.A = new long[10];
        this.B = new long[10];
        this.D0 = C.TIME_UNSET;
        this.E0 = C.TIME_UNSET;
        md0Var.m(0);
        md0Var.d.order(ByteOrder.nativeOrder());
        this.P = -1.0f;
        this.T = 0;
        this.p0 = 0;
        this.g0 = -1;
        this.h0 = -1;
        this.f0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        this.w0 = C.TIME_UNSET;
        this.q0 = 0;
        this.r0 = 0;
    }

    public static boolean B(String str, k kVar) {
        return blb.a < 21 && kVar.o.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    public static boolean C(String str) {
        if (blb.a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(blb.c)) {
            String str2 = blb.b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    public static boolean D(String str) {
        int i = blb.a;
        if (i > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i <= 19) {
                String str2 = blb.b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean E(String str) {
        return blb.a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    public static boolean F(d dVar) {
        String str = dVar.a;
        int i = blb.a;
        return (i <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(blb.c) && "AFTS".equals(blb.d) && dVar.g));
    }

    public static boolean G(String str) {
        int i = blb.a;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i == 19 && blb.d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    public static boolean H(String str, k kVar) {
        return blb.a <= 18 && kVar.z == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    public static boolean I(String str) {
        return blb.a == 29 && "c2.android.aac.decoder".equals(str);
    }

    public static boolean R0(k kVar) {
        int i = kVar.F;
        return i == 0 || i == 2;
    }

    public static boolean k0(IllegalStateException illegalStateException) {
        if (blb.a >= 21 && l0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    public static boolean l0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    public static boolean m0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    public final int A(String str) {
        int i = blb.a;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = blb.d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = blb.b;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    public final boolean A0(int i) throws ExoPlaybackException {
        o44 o44VarI = i();
        this.s.b();
        int iU = u(o44VarI, this.s, i | 4);
        if (iU == -5) {
            s0(o44VarI);
            return true;
        }
        if (iU != -4 || !this.s.h()) {
            return false;
        }
        this.x0 = true;
        x0();
        return false;
    }

    public final void B0() throws ExoPlaybackException {
        C0();
        n0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void C0() {
        try {
            c cVar = this.L;
            if (cVar != null) {
                cVar.release();
                this.C0.b++;
                r0(this.S.a);
            }
            this.L = null;
            try {
                MediaCrypto mediaCrypto = this.G;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.G = null;
                I0(null);
                F0();
            }
        } catch (Throwable th) {
            this.L = null;
            try {
                MediaCrypto mediaCrypto2 = this.G;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.G = null;
                I0(null);
                F0();
            }
        }
    }

    public void D0() {
    }

    public void E0() {
        G0();
        H0();
        this.f0 = C.TIME_UNSET;
        this.t0 = false;
        this.s0 = false;
        this.b0 = false;
        this.c0 = false;
        this.j0 = false;
        this.k0 = false;
        this.x.clear();
        this.v0 = C.TIME_UNSET;
        this.w0 = C.TIME_UNSET;
        so0 so0Var = this.e0;
        if (so0Var != null) {
            so0Var.c();
        }
        this.q0 = 0;
        this.r0 = 0;
        this.p0 = this.o0 ? 1 : 0;
    }

    public void F0() {
        E0();
        this.B0 = null;
        this.e0 = null;
        this.Q = null;
        this.S = null;
        this.M = null;
        this.N = null;
        this.O = false;
        this.u0 = false;
        this.P = -1.0f;
        this.T = 0;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.a0 = false;
        this.d0 = false;
        this.o0 = false;
        this.p0 = 0;
        this.H = false;
    }

    public final void G0() {
        this.g0 = -1;
        this.t.d = null;
    }

    public final void H0() {
        this.h0 = -1;
        this.i0 = null;
    }

    public final void I0(DrmSession drmSession) {
        DrmSession.b(this.E, drmSession);
        this.E = drmSession;
    }

    public MediaCodecDecoderException J(Throwable th, d dVar) {
        return new MediaCodecDecoderException(th, dVar);
    }

    public final void J0() {
        this.A0 = true;
    }

    public final void K() {
        this.n0 = false;
        this.v.b();
        this.u.b();
        this.m0 = false;
        this.l0 = false;
    }

    public final void K0(ExoPlaybackException exoPlaybackException) {
        this.B0 = exoPlaybackException;
    }

    public final boolean L() {
        if (this.s0) {
            this.q0 = 1;
            if (this.V || this.X) {
                this.r0 = 3;
                return false;
            }
            this.r0 = 1;
        }
        return true;
    }

    public final void L0(DrmSession drmSession) {
        DrmSession.b(this.F, drmSession);
        this.F = drmSession;
    }

    public final void M() throws ExoPlaybackException {
        if (!this.s0) {
            B0();
        } else {
            this.q0 = 1;
            this.r0 = 3;
        }
    }

    public final boolean M0(long j) {
        return this.I == C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.I;
    }

    public final boolean N() throws ExoPlaybackException {
        if (this.s0) {
            this.q0 = 1;
            if (this.V || this.X) {
                this.r0 = 3;
                return false;
            }
            this.r0 = 2;
        } else {
            T0();
        }
        return true;
    }

    public boolean N0(d dVar) {
        return true;
    }

    public final boolean O(long j, long j2) throws ExoPlaybackException {
        boolean z;
        boolean zY0;
        int iDequeueOutputBufferIndex;
        if (!g0()) {
            if (this.Y && this.t0) {
                try {
                    iDequeueOutputBufferIndex = this.L.dequeueOutputBufferIndex(this.y);
                } catch (IllegalStateException unused) {
                    x0();
                    if (this.y0) {
                        C0();
                    }
                    return false;
                }
            } else {
                iDequeueOutputBufferIndex = this.L.dequeueOutputBufferIndex(this.y);
            }
            if (iDequeueOutputBufferIndex < 0) {
                if (iDequeueOutputBufferIndex == -2) {
                    z0();
                    return true;
                }
                if (this.d0 && (this.x0 || this.q0 == 2)) {
                    x0();
                }
                return false;
            }
            if (this.c0) {
                this.c0 = false;
                this.L.releaseOutputBuffer(iDequeueOutputBufferIndex, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.y;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                x0();
                return false;
            }
            this.h0 = iDequeueOutputBufferIndex;
            ByteBuffer outputBuffer = this.L.getOutputBuffer(iDequeueOutputBufferIndex);
            this.i0 = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.y.offset);
                ByteBuffer byteBuffer = this.i0;
                MediaCodec.BufferInfo bufferInfo2 = this.y;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Z) {
                MediaCodec.BufferInfo bufferInfo3 = this.y;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.v0;
                    if (j3 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            this.j0 = j0(this.y.presentationTimeUs);
            long j4 = this.w0;
            long j5 = this.y.presentationTimeUs;
            this.k0 = j4 == j5;
            U0(j5);
        }
        if (this.Y && this.t0) {
            try {
                c cVar = this.L;
                ByteBuffer byteBuffer2 = this.i0;
                int i = this.h0;
                MediaCodec.BufferInfo bufferInfo4 = this.y;
                z = false;
                try {
                    zY0 = y0(j, j2, cVar, byteBuffer2, i, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.j0, this.k0, this.D);
                } catch (IllegalStateException unused2) {
                    x0();
                    if (this.y0) {
                        C0();
                    }
                    return z;
                }
            } catch (IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            c cVar2 = this.L;
            ByteBuffer byteBuffer3 = this.i0;
            int i2 = this.h0;
            MediaCodec.BufferInfo bufferInfo5 = this.y;
            zY0 = y0(j, j2, cVar2, byteBuffer3, i2, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.j0, this.k0, this.D);
        }
        if (zY0) {
            u0(this.y.presentationTimeUs);
            boolean z2 = (this.y.flags & 4) != 0 ? true : z;
            H0();
            if (!z2) {
                return true;
            }
            x0();
        }
        return z;
    }

    public boolean O0() {
        return false;
    }

    public final boolean P(d dVar, k kVar, DrmSession drmSession, DrmSession drmSession2) {
        c64 c64VarB0;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || blb.a < 23) {
            return true;
        }
        UUID uuid = to0.e;
        if (uuid.equals(drmSession.getSchemeUuid()) || uuid.equals(drmSession2.getSchemeUuid()) || (c64VarB0 = b0(drmSession2)) == null) {
            return true;
        }
        return !dVar.g && (c64VarB0.c ? false : drmSession2.requiresSecureDecoder(kVar.m));
    }

    public boolean P0(k kVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.google.android.exoplayer2.d, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.android.exoplayer2.d, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer] */
    /* JADX WARN: Type inference failed for: r15v3, types: [ju1] */
    public final boolean Q() throws ExoPlaybackException {
        int i;
        if (this.L == null || (i = this.q0) == 2 || this.x0) {
            return false;
        }
        if (i == 0 && O0()) {
            M();
        }
        if (this.g0 < 0) {
            int iDequeueInputBufferIndex = this.L.dequeueInputBufferIndex();
            this.g0 = iDequeueInputBufferIndex;
            if (iDequeueInputBufferIndex < 0) {
                return false;
            }
            this.t.d = this.L.getInputBuffer(iDequeueInputBufferIndex);
            this.t.b();
        }
        if (this.q0 == 1) {
            if (!this.d0) {
                this.t0 = true;
                this.L.queueInputBuffer(this.g0, 0, 0, 0L, 4);
                G0();
            }
            this.q0 = 2;
            return false;
        }
        if (this.b0) {
            this.b0 = false;
            ByteBuffer byteBuffer = this.t.d;
            byte[] bArr = G0;
            byteBuffer.put(bArr);
            this.L.queueInputBuffer(this.g0, 0, bArr.length, 0L, 0);
            G0();
            this.s0 = true;
            return true;
        }
        if (this.p0 == 1) {
            for (int i2 = 0; i2 < this.M.o.size(); i2++) {
                this.t.d.put((byte[]) this.M.o.get(i2));
            }
            this.p0 = 2;
        }
        int iPosition = this.t.d.position();
        o44 o44VarI = i();
        try {
            int iU = u(o44VarI, this.t, 0);
            if (hasReadStreamToEnd()) {
                this.w0 = this.v0;
            }
            if (iU == -3) {
                return false;
            }
            if (iU == -5) {
                if (this.p0 == 2) {
                    this.t.b();
                    this.p0 = 1;
                }
                s0(o44VarI);
                return true;
            }
            if (this.t.h()) {
                if (this.p0 == 2) {
                    this.t.b();
                    this.p0 = 1;
                }
                this.x0 = true;
                if (!this.s0) {
                    x0();
                    return false;
                }
                try {
                    if (!this.d0) {
                        this.t0 = true;
                        this.L.queueInputBuffer(this.g0, 0, 0, 0L, 4);
                        G0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw f(e, this.C, blb.O(e.getErrorCode()));
                }
            }
            if (!this.s0 && !this.t.j()) {
                this.t.b();
                if (this.p0 == 2) {
                    this.p0 = 1;
                }
                return true;
            }
            boolean zO = this.t.o();
            if (zO) {
                this.t.c.b(iPosition);
            }
            if (this.U && !zO) {
                ay6.b(this.t.d);
                if (this.t.d.position() == 0) {
                    return true;
                }
                this.U = false;
            }
            DecoderInputBuffer decoderInputBuffer = this.t;
            long jD = decoderInputBuffer.f;
            so0 so0Var = this.e0;
            if (so0Var != null) {
                jD = so0Var.d(this.C, decoderInputBuffer);
                this.v0 = Math.max(this.v0, this.e0.b(this.C));
            }
            long j = jD;
            if (this.t.g()) {
                this.x.add(Long.valueOf(j));
            }
            if (this.z0) {
                this.w.a(j, this.C);
                this.z0 = false;
            }
            this.v0 = Math.max(this.v0, j);
            this.t.n();
            if (this.t.f()) {
                f0(this.t);
            }
            w0(this.t);
            try {
                if (zO) {
                    this.L.a(this.g0, 0, this.t.c, j, 0);
                } else {
                    this.L.queueInputBuffer(this.g0, 0, this.t.d.limit(), j, 0);
                }
                G0();
                this.s0 = true;
                this.p0 = 0;
                this = this.C0;
                this.c++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw this.f(e2, this.C, blb.O(e2.getErrorCode()));
            }
        } catch (DecoderInputBuffer.InsufficientCapacityException e3) {
            p0(e3);
            A0(0);
            R();
            return true;
        }
    }

    public abstract int Q0(e eVar, k kVar);

    public final void R() {
        try {
            this.L.flush();
        } finally {
            E0();
        }
    }

    public final boolean S() throws ExoPlaybackException {
        boolean zT = T();
        if (zT) {
            n0();
        }
        return zT;
    }

    public final boolean S0(k kVar) throws ExoPlaybackException {
        if (blb.a >= 23 && this.L != null && this.r0 != 3 && getState() != 0) {
            float fY = Y(this.K, kVar, l());
            float f = this.P;
            if (f == fY) {
                return true;
            }
            if (fY == -1.0f) {
                M();
                return false;
            }
            if (f == -1.0f && fY <= this.r) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, fY);
            this.L.setParameters(bundle);
            this.P = fY;
        }
        return true;
    }

    public boolean T() {
        if (this.L == null) {
            return false;
        }
        int i = this.r0;
        if (i == 3 || this.V || ((this.W && !this.u0) || (this.X && this.t0))) {
            C0();
            return true;
        }
        if (i == 2) {
            int i2 = blb.a;
            zi.g(i2 >= 23);
            if (i2 >= 23) {
                try {
                    T0();
                } catch (ExoPlaybackException e) {
                    op5.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                    C0();
                    return true;
                }
            }
        }
        R();
        return false;
    }

    public final void T0() throws ExoPlaybackException {
        try {
            this.G.setMediaDrmSession(b0(this.F).b);
            I0(this.F);
            this.q0 = 0;
            this.r0 = 0;
        } catch (MediaCryptoException e) {
            throw f(e, this.C, 6006);
        }
    }

    public final List U(boolean z) {
        List listA0 = a0(this.p, this.C, z);
        if (listA0.isEmpty() && z) {
            listA0 = a0(this.p, this.C, false);
            if (!listA0.isEmpty()) {
                op5.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.C.m + ", but no secure decoder available. Trying to proceed with " + listA0 + Consts.DOT);
            }
        }
        return listA0;
    }

    public final void U0(long j) {
        k kVar = (k) this.w.j(j);
        if (kVar == null && this.O) {
            kVar = (k) this.w.i();
        }
        if (kVar != null) {
            this.D = kVar;
        } else if (!this.O || this.D == null) {
            return;
        }
        t0(this.D, this.N);
        this.O = false;
    }

    public final c V() {
        return this.L;
    }

    public final d W() {
        return this.S;
    }

    public boolean X() {
        return false;
    }

    public abstract float Y(float f, k kVar, k[] kVarArr);

    public final MediaFormat Z() {
        return this.N;
    }

    @Override
    public final int a(k kVar) throws ExoPlaybackException {
        try {
            return Q0(this.p, kVar);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw f(e, kVar, 4002);
        }
    }

    public abstract List a0(e eVar, k kVar, boolean z);

    public final c64 b0(DrmSession drmSession) throws ExoPlaybackException {
        ul1 cryptoConfig = drmSession.getCryptoConfig();
        if (cryptoConfig == null || (cryptoConfig instanceof c64)) {
            return (c64) cryptoConfig;
        }
        throw f(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + cryptoConfig), this.C, 6001);
    }

    public abstract c.a c0(d dVar, k kVar, MediaCrypto mediaCrypto, float f);

    public final long d0() {
        return this.E0;
    }

    public float e0() {
        return this.J;
    }

    public void f0(DecoderInputBuffer decoderInputBuffer) {
    }

    public final boolean g0() {
        return this.h0 >= 0;
    }

    public final void h0(k kVar) {
        K();
        String str = kVar.m;
        if ("audio/mp4a-latm".equals(str) || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
            this.v.x(32);
        } else {
            this.v.x(1);
        }
        this.l0 = true;
    }

    public final void i0(d dVar, MediaCrypto mediaCrypto) {
        String str = dVar.a;
        int i = blb.a;
        float fY = i < 23 ? -1.0f : Y(this.K, this.C, l());
        float f = fY > this.r ? fY : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        c.a aVarC0 = c0(dVar, this.C, mediaCrypto, f);
        if (i >= 31) {
            a.a(aVarC0, k());
        }
        try {
            sua.a("createCodec:" + str);
            this.L = this.o.a(aVarC0);
            sua.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.S = dVar;
            this.P = f;
            this.M = this.C;
            this.T = A(str);
            this.U = B(str, this.M);
            this.V = G(str);
            this.W = I(str);
            this.X = D(str);
            this.Y = E(str);
            this.Z = C(str);
            this.a0 = H(str, this.M);
            this.d0 = F(dVar) || X();
            if (this.L.needsReconfiguration()) {
                this.o0 = true;
                this.p0 = 1;
                this.b0 = this.T != 0;
            }
            if ("c2.android.mp3.decoder".equals(dVar.a)) {
                this.e0 = new so0();
            }
            if (getState() == 2) {
                this.f0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.C0.a++;
            q0(str, aVarC0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            sua.c();
            throw th;
        }
    }

    @Override
    public boolean isEnded() {
        return this.y0;
    }

    @Override
    public boolean isReady() {
        return this.C != null && (m() || g0() || (this.f0 != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.f0));
    }

    public final boolean j0(long j) {
        int size = this.x.size();
        for (int i = 0; i < size; i++) {
            if (((Long) this.x.get(i)).longValue() == j) {
                this.x.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public void n() {
        this.C = null;
        this.D0 = C.TIME_UNSET;
        this.E0 = C.TIME_UNSET;
        this.F0 = 0;
        T();
    }

    public final void n0() throws ExoPlaybackException {
        k kVar;
        if (this.L != null || this.l0 || (kVar = this.C) == null) {
            return;
        }
        if (this.F == null && P0(kVar)) {
            h0(this.C);
            return;
        }
        I0(this.F);
        String str = this.C.m;
        DrmSession drmSession = this.E;
        if (drmSession != null) {
            if (this.G == null) {
                c64 c64VarB0 = b0(drmSession);
                if (c64VarB0 != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(c64VarB0.a, c64VarB0.b);
                        this.G = mediaCrypto;
                        this.H = !c64VarB0.c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw f(e, this.C, 6006);
                    }
                } else if (this.E.getError() == null) {
                    return;
                }
            }
            if (c64.d) {
                int state = this.E.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) zi.e(this.E.getError());
                    throw f(drmSessionException, this.C, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            o0(this.G, this.H);
        } catch (DecoderInitializationException e2) {
            throw f(e2, this.C, 4001);
        }
    }

    @Override
    public void o(boolean z, boolean z2) {
        this.C0 = new ju1();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004a A[SYNTHETIC] */
    public final void o0(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        DecoderInitializationException decoderInitializationException;
        DecoderInitializationException decoderInitializationException2;
        if (this.Q == null) {
            try {
                List listU = U(z);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.Q = arrayDeque;
                if (this.q) {
                    arrayDeque.addAll(listU);
                } else if (!listU.isEmpty()) {
                    this.Q.add((d) listU.get(0));
                }
                this.R = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.C, e, z, -49998);
            }
        }
        if (this.Q.isEmpty()) {
            throw new DecoderInitializationException(this.C, (Throwable) null, z, -49999);
        }
        d dVar = (d) this.Q.peekFirst();
        while (this.L == null) {
            d dVar2 = (d) this.Q.peekFirst();
            if (!N0(dVar2)) {
                return;
            }
            try {
                i0(dVar2, mediaCrypto);
            } catch (Exception e2) {
                if (dVar2 != dVar) {
                    throw e2;
                }
                try {
                    op5.i("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    i0(dVar2, mediaCrypto);
                } catch (Exception e3) {
                    op5.j("MediaCodecRenderer", "Failed to initialize decoder: " + dVar2, e3);
                    this.Q.removeFirst();
                    decoderInitializationException = new DecoderInitializationException(this.C, e3, z, dVar2);
                    p0(decoderInitializationException);
                    decoderInitializationException2 = this.R;
                    if (decoderInitializationException2 == null) {
                        this.R = decoderInitializationException;
                    } else {
                        this.R = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                    }
                    if (!this.Q.isEmpty()) {
                        throw this.R;
                    }
                }
                op5.j("MediaCodecRenderer", "Failed to initialize decoder: " + dVar2, e3);
                this.Q.removeFirst();
                decoderInitializationException = new DecoderInitializationException(this.C, e3, z, dVar2);
                p0(decoderInitializationException);
                decoderInitializationException2 = this.R;
                if (decoderInitializationException2 == null) {
                    this.R = decoderInitializationException;
                } else {
                    this.R = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                }
                if (!this.Q.isEmpty()) {
                    throw this.R;
                }
            }
        }
        this.Q = null;
    }

    @Override
    public void p(long j, boolean z) throws ExoPlaybackException {
        this.x0 = false;
        this.y0 = false;
        this.A0 = false;
        if (this.l0) {
            this.v.b();
            this.u.b();
            this.m0 = false;
        } else {
            S();
        }
        if (this.w.l() > 0) {
            this.z0 = true;
        }
        this.w.c();
        int i = this.F0;
        if (i != 0) {
            this.E0 = this.A[i - 1];
            this.D0 = this.z[i - 1];
            this.F0 = 0;
        }
    }

    public abstract void p0(Exception exc);

    @Override
    public void q() {
        try {
            K();
            C0();
        } finally {
            L0(null);
        }
    }

    public abstract void q0(String str, c.a aVar, long j, long j2);

    @Override
    public void r() {
    }

    public abstract void r0(String str);

    @Override
    public void render(long j, long j2) throws ExoPlaybackException {
        boolean z = false;
        if (this.A0) {
            this.A0 = false;
            x0();
        }
        ExoPlaybackException exoPlaybackException = this.B0;
        if (exoPlaybackException != null) {
            this.B0 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.y0) {
                D0();
                return;
            }
            if (this.C != null || A0(2)) {
                n0();
                if (this.l0) {
                    sua.a("bypassRender");
                    while (y(j, j2)) {
                    }
                    sua.c();
                } else if (this.L != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    sua.a("drainAndFeed");
                    while (O(j, j2) && M0(jElapsedRealtime)) {
                    }
                    while (Q() && M0(jElapsedRealtime)) {
                    }
                    sua.c();
                } else {
                    this.C0.d += w(j);
                    A0(1);
                }
                this.C0.c();
            }
        } catch (IllegalStateException e) {
            if (!k0(e)) {
                throw e;
            }
            p0(e);
            if (blb.a >= 21 && m0(e)) {
                z = true;
            }
            if (z) {
                C0();
            }
            throw g(J(e, W()), this.C, z, 4003);
        }
    }

    @Override
    public void s() {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x0083  */
    public lu1 s0(o44 o44Var) throws ExoPlaybackException {
        int i;
        boolean z = true;
        this.z0 = true;
        k kVar = (k) zi.e(o44Var.b);
        if (kVar.m == null) {
            throw f(new IllegalArgumentException(), kVar, 4005);
        }
        L0(o44Var.a);
        this.C = kVar;
        if (this.l0) {
            this.n0 = true;
            return null;
        }
        c cVar = this.L;
        if (cVar == null) {
            this.Q = null;
            n0();
            return null;
        }
        d dVar = this.S;
        k kVar2 = this.M;
        if (P(dVar, kVar, this.E, this.F)) {
            M();
            return new lu1(dVar.a, kVar2, kVar, 0, 128);
        }
        boolean z2 = this.F != this.E;
        zi.g(!z2 || blb.a >= 23);
        lu1 lu1VarZ = z(dVar, kVar2, kVar);
        int i2 = lu1VarZ.d;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException();
                    }
                    if (S0(kVar)) {
                        this.M = kVar;
                        if (z2 && !N()) {
                            i = 2;
                        }
                    } else {
                        i = 16;
                    }
                } else if (S0(kVar)) {
                    this.o0 = true;
                    this.p0 = 1;
                    int i3 = this.T;
                    if (i3 != 2 && (i3 != 1 || kVar.r != kVar2.r || kVar.s != kVar2.s)) {
                        z = false;
                    }
                    this.b0 = z;
                    this.M = kVar;
                    if (z2 && !N()) {
                        i = 2;
                    }
                } else {
                    i = 16;
                }
            } else if (S0(kVar)) {
                this.M = kVar;
                if (!z2 ? !L() : !N()) {
                    i = 2;
                }
            } else {
                i = 16;
            }
            return (lu1VarZ.d != 0 || (this.L == cVar && this.r0 != 3)) ? lu1VarZ : new lu1(dVar.a, kVar2, kVar, 0, i);
        }
        M();
        i = 0;
        if (lu1VarZ.d != 0) {
        }
    }

    @Override
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        this.J = f;
        this.K = f2;
        S0(this.M);
    }

    @Override
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Override
    public void t(k[] kVarArr, long j, long j2) {
        if (this.E0 == C.TIME_UNSET) {
            zi.g(this.D0 == C.TIME_UNSET);
            this.D0 = j;
            this.E0 = j2;
            return;
        }
        int i = this.F0;
        if (i == this.A.length) {
            op5.i("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.A[this.F0 - 1]);
        } else {
            this.F0 = i + 1;
        }
        long[] jArr = this.z;
        int i2 = this.F0;
        jArr[i2 - 1] = j;
        this.A[i2 - 1] = j2;
        this.B[i2 - 1] = this.v0;
    }

    public abstract void t0(k kVar, MediaFormat mediaFormat);

    public void u0(long j) {
        while (true) {
            int i = this.F0;
            if (i == 0 || j < this.B[0]) {
                return;
            }
            long[] jArr = this.z;
            this.D0 = jArr[0];
            this.E0 = this.A[0];
            int i2 = i - 1;
            this.F0 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.A;
            System.arraycopy(jArr2, 1, jArr2, 0, this.F0);
            long[] jArr3 = this.B;
            System.arraycopy(jArr3, 1, jArr3, 0, this.F0);
            v0();
        }
    }

    public void v0() {
    }

    public abstract void w0(DecoderInputBuffer decoderInputBuffer);

    public final void x() throws ExoPlaybackException {
        zi.g(!this.x0);
        o44 o44VarI = i();
        this.u.b();
        do {
            this.u.b();
            int iU = u(o44VarI, this.u, 0);
            if (iU == -5) {
                s0(o44VarI);
                return;
            }
            if (iU != -4) {
                if (iU != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.u.h()) {
                    this.x0 = true;
                    return;
                }
                if (this.z0) {
                    k kVar = (k) zi.e(this.C);
                    this.D = kVar;
                    t0(kVar, null);
                    this.z0 = false;
                }
                this.u.n();
            }
        } while (this.v.r(this.u));
        this.m0 = true;
    }

    public final void x0() throws ExoPlaybackException {
        int i = this.r0;
        if (i == 1) {
            R();
            return;
        }
        if (i == 2) {
            R();
            T0();
        } else if (i == 3) {
            B0();
        } else {
            this.y0 = true;
            D0();
        }
    }

    public final boolean y(long j, long j2) throws ExoPlaybackException {
        boolean z;
        zi.g(!this.y0);
        if (this.v.w()) {
            md0 md0Var = this.v;
            if (!y0(j, j2, null, md0Var.d, this.h0, 0, md0Var.v(), this.v.t(), this.v.g(), this.v.h(), this.D)) {
                return false;
            }
            u0(this.v.u());
            this.v.b();
            z = false;
        } else {
            z = false;
        }
        if (this.x0) {
            this.y0 = true;
            return z;
        }
        if (this.m0) {
            zi.g(this.v.r(this.u));
            this.m0 = z;
        }
        if (this.n0) {
            if (this.v.w()) {
                return true;
            }
            K();
            this.n0 = z;
            n0();
            if (!this.l0) {
                return z;
            }
        }
        x();
        if (this.v.w()) {
            this.v.n();
        }
        if (this.v.w() || this.x0 || this.n0) {
            return true;
        }
        return z;
    }

    public abstract boolean y0(long j, long j2, c cVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, k kVar);

    public abstract lu1 z(d dVar, k kVar, k kVar2);

    public final void z0() {
        this.u0 = true;
        MediaFormat outputFormat = this.L.getOutputFormat();
        if (this.T != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.c0 = true;
            return;
        }
        if (this.a0) {
            outputFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT, 1);
        }
        this.N = outputFormat;
        this.O = true;
    }

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final d codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(k kVar, @Nullable Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + kVar, th, kVar.m, z, null, buildCustomDiagnosticInfo(i), null);
        }

        private static String buildCustomDiagnosticInfo(int i) {
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        @RequiresApi(21)
        private static String getDiagnosticInfoV21(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(k kVar, @Nullable Throwable th, boolean z, d dVar) {
            this("Decoder init failed: " + dVar.a + ", " + kVar, th, kVar.m, z, dVar, blb.a >= 21 ? getDiagnosticInfoV21(th) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th, String str2, boolean z, @Nullable d dVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = dVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }
}
