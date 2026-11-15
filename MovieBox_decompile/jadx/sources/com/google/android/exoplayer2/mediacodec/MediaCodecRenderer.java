package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.d0;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.h {
    private static final byte[] F0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;
    private ExoPlaybackException A0;
    private p1 B;
    protected com.google.android.exoplayer2.decoder.e B0;
    private p1 C;
    private long C0;
    private DrmSession D;
    private long D0;
    private DrmSession E;
    private int E0;
    private MediaCrypto F;
    private boolean G;
    private long H;
    private float I;
    private float J;
    private l K;
    private p1 L;
    private MediaFormat M;
    private boolean N;
    private float O;
    private ArrayDeque P;
    private DecoderInitializationException Q;
    private m R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    private boolean f24651a0;

    private boolean f24652b0;

    private boolean f24653c0;

    private i f24654d0;

    private long f24655e0;

    private int f24656f0;

    private int f24657g0;

    private ByteBuffer f24658h0;

    private boolean f24659i0;

    private boolean f24660j0;

    private boolean f24661k0;

    private boolean f24662l0;

    private boolean f24663m0;

    private final l.b f24664n;

    private boolean f24665n0;

    private final o f24666o;

    private int f24667o0;

    private final boolean f24668p;

    private int f24669p0;

    private final float f24670q;

    private int f24671q0;

    private final DecoderInputBuffer f24672r;

    private boolean f24673r0;

    private final DecoderInputBuffer f24674s;

    private boolean f24675s0;

    private final DecoderInputBuffer f24676t;

    private boolean f24677t0;

    private final h f24678u;

    private long f24679u0;

    private final k0 f24680v;

    private long f24681v0;

    private final ArrayList f24682w;

    private boolean f24683w0;

    private final MediaCodec.BufferInfo f24684x;

    private boolean f24685x0;

    private final long[] f24686y;

    private boolean f24687y0;

    private final long[] f24688z;

    private boolean f24689z0;

    private static final class a {
        public static void a(l.a aVar, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f24754b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public MediaCodecRenderer(int i10, l.b bVar, o oVar, boolean z10, float f10) {
        super(i10);
        this.f24664n = bVar;
        this.f24666o = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f24668p = z10;
        this.f24670q = f10;
        this.f24672r = DecoderInputBuffer.p();
        this.f24674s = new DecoderInputBuffer(0);
        this.f24676t = new DecoderInputBuffer(2);
        h hVar = new h();
        this.f24678u = hVar;
        this.f24680v = new k0();
        this.f24682w = new ArrayList();
        this.f24684x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = C.TIME_UNSET;
        this.f24686y = new long[10];
        this.f24688z = new long[10];
        this.A = new long[10];
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        hVar.m(0);
        hVar.f24202c.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.f24667o0 = 0;
        this.f24656f0 = -1;
        this.f24657g0 = -1;
        this.f24655e0 = C.TIME_UNSET;
        this.f24679u0 = C.TIME_UNSET;
        this.f24681v0 = C.TIME_UNSET;
        this.f24669p0 = 0;
        this.f24671q0 = 0;
    }

    private boolean A(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        com.google.android.exoplayer2.util.a.g(!this.f24685x0);
        if (this.f24678u.w()) {
            h hVar = this.f24678u;
            if (!A0(j10, j11, null, hVar.f24202c, this.f24657g0, 0, hVar.v(), this.f24678u.t(), this.f24678u.g(), this.f24678u.h(), this.C)) {
                return false;
            }
            w0(this.f24678u.u());
            this.f24678u.b();
            z10 = false;
        } else {
            z10 = false;
        }
        if (this.f24683w0) {
            this.f24685x0 = true;
            return z10;
        }
        if (this.f24662l0) {
            com.google.android.exoplayer2.util.a.g(this.f24678u.r(this.f24676t));
            this.f24662l0 = z10;
        }
        if (this.f24663m0) {
            if (this.f24678u.w()) {
                return true;
            }
            M();
            this.f24663m0 = z10;
            p0();
            if (!this.f24661k0) {
                return z10;
            }
        }
        z();
        if (this.f24678u.w()) {
            this.f24678u.n();
        }
        if (this.f24678u.w() || this.f24683w0 || this.f24663m0) {
            return true;
        }
        return z10;
    }

    private void B0() {
        this.f24677t0 = true;
        MediaFormat mediaFormatC = this.K.c();
        if (this.S != 0 && mediaFormatC.getInteger("width") == 32 && mediaFormatC.getInteger("height") == 32) {
            this.f24652b0 = true;
            return;
        }
        if (this.Z) {
            mediaFormatC.setInteger("channel-count", 1);
        }
        this.M = mediaFormatC;
        this.N = true;
    }

    private int C(String str) {
        int i10 = p0.f26854a;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = p0.f26857d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i10 >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = p0.f26855b;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private boolean C0(int i10) throws ExoPlaybackException {
        q1 q1VarK = k();
        this.f24672r.b();
        int iW = w(q1VarK, this.f24672r, i10 | 4);
        if (iW == -5) {
            u0(q1VarK);
            return true;
        }
        if (iW != -4 || !this.f24672r.h()) {
            return false;
        }
        this.f24683w0 = true;
        z0();
        return false;
    }

    private static boolean D(String str, p1 p1Var) {
        return p0.f26854a < 21 && p1Var.f24903n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private void D0() throws ExoPlaybackException {
        E0();
        p0();
    }

    private static boolean E(String str) {
        if (p0.f26854a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(p0.f26856c)) {
            String str2 = p0.f26855b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean F(String str) {
        int i10 = p0.f26854a;
        if (i10 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i10 <= 19) {
                String str2 = p0.f26855b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean G(String str) {
        return p0.f26854a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean H(m mVar) {
        String str = mVar.f24759a;
        int i10 = p0.f26854a;
        return (i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i10 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(p0.f26856c) && "AFTS".equals(p0.f26857d) && mVar.f24765g));
    }

    private static boolean I(String str) {
        int i10 = p0.f26854a;
        return i10 < 18 || (i10 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i10 == 19 && p0.f26857d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private void I0() {
        this.f24656f0 = -1;
        this.f24674s.f24202c = null;
    }

    private static boolean J(String str, p1 p1Var) {
        return p0.f26854a <= 18 && p1Var.f24914y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private void J0() {
        this.f24657g0 = -1;
        this.f24658h0 = null;
    }

    private static boolean K(String str) {
        return p0.f26854a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void K0(DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.D, drmSession);
        this.D = drmSession;
    }

    private void M() {
        this.f24663m0 = false;
        this.f24678u.b();
        this.f24676t.b();
        this.f24662l0 = false;
        this.f24661k0 = false;
    }

    private boolean N() {
        if (this.f24673r0) {
            this.f24669p0 = 1;
            if (this.U || this.W) {
                this.f24671q0 = 3;
                return false;
            }
            this.f24671q0 = 1;
        }
        return true;
    }

    private void N0(DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.E, drmSession);
        this.E = drmSession;
    }

    private void O() throws ExoPlaybackException {
        if (!this.f24673r0) {
            D0();
        } else {
            this.f24669p0 = 1;
            this.f24671q0 = 3;
        }
    }

    private boolean O0(long j10) {
        return this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - j10 < this.H;
    }

    private boolean P() throws ExoPlaybackException {
        if (this.f24673r0) {
            this.f24669p0 = 1;
            if (this.U || this.W) {
                this.f24671q0 = 3;
                return false;
            }
            this.f24671q0 = 2;
        } else {
            V0();
        }
        return true;
    }

    private boolean Q(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        boolean zA0;
        int iJ;
        if (!i0()) {
            if (this.X && this.f24675s0) {
                try {
                    iJ = this.K.j(this.f24684x);
                } catch (IllegalStateException unused) {
                    z0();
                    if (this.f24685x0) {
                        E0();
                    }
                    return false;
                }
            } else {
                iJ = this.K.j(this.f24684x);
            }
            if (iJ < 0) {
                if (iJ == -2) {
                    B0();
                    return true;
                }
                if (this.f24653c0 && (this.f24683w0 || this.f24669p0 == 2)) {
                    z0();
                }
                return false;
            }
            if (this.f24652b0) {
                this.f24652b0 = false;
                this.K.k(iJ, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.f24684x;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                z0();
                return false;
            }
            this.f24657g0 = iJ;
            ByteBuffer byteBufferL = this.K.l(iJ);
            this.f24658h0 = byteBufferL;
            if (byteBufferL != null) {
                byteBufferL.position(this.f24684x.offset);
                ByteBuffer byteBuffer = this.f24658h0;
                MediaCodec.BufferInfo bufferInfo2 = this.f24684x;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Y) {
                MediaCodec.BufferInfo bufferInfo3 = this.f24684x;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j12 = this.f24679u0;
                    if (j12 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j12;
                    }
                }
            }
            this.f24659i0 = l0(this.f24684x.presentationTimeUs);
            long j13 = this.f24681v0;
            long j14 = this.f24684x.presentationTimeUs;
            this.f24660j0 = j13 == j14;
            W0(j14);
        }
        if (this.X && this.f24675s0) {
            try {
                l lVar = this.K;
                ByteBuffer byteBuffer2 = this.f24658h0;
                int i10 = this.f24657g0;
                MediaCodec.BufferInfo bufferInfo4 = this.f24684x;
                z10 = false;
                try {
                    zA0 = A0(j10, j11, lVar, byteBuffer2, i10, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f24659i0, this.f24660j0, this.C);
                } catch (IllegalStateException unused2) {
                    z0();
                    if (this.f24685x0) {
                        E0();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            l lVar2 = this.K;
            ByteBuffer byteBuffer3 = this.f24658h0;
            int i11 = this.f24657g0;
            MediaCodec.BufferInfo bufferInfo5 = this.f24684x;
            zA0 = A0(j10, j11, lVar2, byteBuffer3, i11, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f24659i0, this.f24660j0, this.C);
        }
        if (zA0) {
            w0(this.f24684x.presentationTimeUs);
            boolean z11 = (this.f24684x.flags & 4) != 0 ? true : z10;
            J0();
            if (!z11) {
                return true;
            }
            z0();
        }
        return z10;
    }

    private boolean R(m mVar, p1 p1Var, DrmSession drmSession, DrmSession drmSession2) {
        d0 d0VarD0;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || p0.f26854a < 23) {
            return true;
        }
        UUID uuid = com.google.android.exoplayer2.l.f24516e;
        if (uuid.equals(drmSession.a()) || uuid.equals(drmSession2.a()) || (d0VarD0 = d0(drmSession2)) == null) {
            return true;
        }
        return !mVar.f24765g && (d0VarD0.f24337c ? false : drmSession2.d(p1Var.f24901l));
    }

    private boolean S() throws ExoPlaybackException {
        int i10;
        if (this.K == null || (i10 = this.f24669p0) == 2 || this.f24683w0) {
            return false;
        }
        if (i10 == 0 && Q0()) {
            O();
        }
        if (this.f24656f0 < 0) {
            int i11 = this.K.i();
            this.f24656f0 = i11;
            if (i11 < 0) {
                return false;
            }
            this.f24674s.f24202c = this.K.d(i11);
            this.f24674s.b();
        }
        if (this.f24669p0 == 1) {
            if (!this.f24653c0) {
                this.f24675s0 = true;
                this.K.a(this.f24656f0, 0, 0, 0L, 4);
                I0();
            }
            this.f24669p0 = 2;
            return false;
        }
        if (this.f24651a0) {
            this.f24651a0 = false;
            ByteBuffer byteBuffer = this.f24674s.f24202c;
            byte[] bArr = F0;
            byteBuffer.put(bArr);
            this.K.a(this.f24656f0, 0, bArr.length, 0L, 0);
            I0();
            this.f24673r0 = true;
            return true;
        }
        if (this.f24667o0 == 1) {
            for (int i12 = 0; i12 < this.L.f24903n.size(); i12++) {
                this.f24674s.f24202c.put((byte[]) this.L.f24903n.get(i12));
            }
            this.f24667o0 = 2;
        }
        int iPosition = this.f24674s.f24202c.position();
        q1 q1VarK = k();
        try {
            int iW = w(q1VarK, this.f24674s, 0);
            if (hasReadStreamToEnd()) {
                this.f24681v0 = this.f24679u0;
            }
            if (iW == -3) {
                return false;
            }
            if (iW == -5) {
                if (this.f24667o0 == 2) {
                    this.f24674s.b();
                    this.f24667o0 = 1;
                }
                u0(q1VarK);
                return true;
            }
            if (this.f24674s.h()) {
                if (this.f24667o0 == 2) {
                    this.f24674s.b();
                    this.f24667o0 = 1;
                }
                this.f24683w0 = true;
                if (!this.f24673r0) {
                    z0();
                    return false;
                }
                try {
                    if (!this.f24653c0) {
                        this.f24675s0 = true;
                        this.K.a(this.f24656f0, 0, 0, 0L, 4);
                        I0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e10) {
                    throw g(e10, this.B, p0.V(e10.getErrorCode()));
                }
            }
            if (!this.f24673r0 && !this.f24674s.j()) {
                this.f24674s.b();
                if (this.f24667o0 == 2) {
                    this.f24667o0 = 1;
                }
                return true;
            }
            boolean zO = this.f24674s.o();
            if (zO) {
                this.f24674s.f24201b.b(iPosition);
            }
            if (this.T && !zO) {
                x.b(this.f24674s.f24202c);
                if (this.f24674s.f24202c.position() == 0) {
                    return true;
                }
                this.T = false;
            }
            DecoderInputBuffer decoderInputBuffer = this.f24674s;
            long jD = decoderInputBuffer.f24204e;
            i iVar = this.f24654d0;
            if (iVar != null) {
                jD = iVar.d(this.B, decoderInputBuffer);
                this.f24679u0 = Math.max(this.f24679u0, this.f24654d0.b(this.B));
            }
            long j10 = jD;
            if (this.f24674s.g()) {
                this.f24682w.add(Long.valueOf(j10));
            }
            if (this.f24687y0) {
                this.f24680v.a(j10, this.B);
                this.f24687y0 = false;
            }
            this.f24679u0 = Math.max(this.f24679u0, j10);
            this.f24674s.n();
            if (this.f24674s.f()) {
                h0(this.f24674s);
            }
            y0(this.f24674s);
            try {
                if (zO) {
                    this.K.f(this.f24656f0, 0, this.f24674s.f24201b, j10, 0);
                } else {
                    this.K.a(this.f24656f0, 0, this.f24674s.f24202c.limit(), j10, 0);
                }
                I0();
                this.f24673r0 = true;
                this.f24667o0 = 0;
                this.B0.f24236c++;
                return true;
            } catch (MediaCodec.CryptoException e11) {
                throw g(e11, this.B, p0.V(e11.getErrorCode()));
            }
        } catch (DecoderInputBuffer.InsufficientCapacityException e12) {
            r0(e12);
            C0(0);
            T();
            return true;
        }
    }

    private void T() {
        try {
            this.K.flush();
        } finally {
            G0();
        }
    }

    protected static boolean T0(p1 p1Var) {
        int i10 = p1Var.E;
        return i10 == 0 || i10 == 2;
    }

    private boolean U0(p1 p1Var) throws ExoPlaybackException {
        if (p0.f26854a >= 23 && this.K != null && this.f24671q0 != 3 && getState() != 0) {
            float fA0 = a0(this.J, p1Var, n());
            float f10 = this.O;
            if (f10 == fA0) {
                return true;
            }
            if (fA0 == -1.0f) {
                O();
                return false;
            }
            if (f10 == -1.0f && fA0 <= this.f24670q) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA0);
            this.K.b(bundle);
            this.O = fA0;
        }
        return true;
    }

    private void V0() throws ExoPlaybackException {
        try {
            this.F.setMediaDrmSession(d0(this.E).f24336b);
            K0(this.E);
            this.f24669p0 = 0;
            this.f24671q0 = 0;
        } catch (MediaCryptoException e10) {
            throw g(e10, this.B, 6006);
        }
    }

    private List W(boolean z10) {
        List listC0 = c0(this.f24666o, this.B, z10);
        if (listC0.isEmpty() && z10) {
            listC0 = c0(this.f24666o, this.B, false);
            if (!listC0.isEmpty()) {
                com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.f24901l + ", but no secure decoder available. Trying to proceed with " + listC0 + ".");
            }
        }
        return listC0;
    }

    private d0 d0(DrmSession drmSession) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.b bVarC = drmSession.c();
        if (bVarC == null || (bVarC instanceof d0)) {
            return (d0) bVarC;
        }
        throw g(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + bVarC), this.B, 6001);
    }

    private boolean i0() {
        return this.f24657g0 >= 0;
    }

    private void j0(p1 p1Var) {
        M();
        String str = p1Var.f24901l;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f24678u.x(32);
        } else {
            this.f24678u.x(1);
        }
        this.f24661k0 = true;
    }

    private void k0(m mVar, MediaCrypto mediaCrypto) {
        String str = mVar.f24759a;
        int i10 = p0.f26854a;
        float fA0 = i10 < 23 ? -1.0f : a0(this.J, this.B, n());
        float f10 = fA0 > this.f24670q ? fA0 : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        l.a aVarE0 = e0(mVar, this.B, mediaCrypto, f10);
        if (i10 >= 31) {
            a.a(aVarE0, m());
        }
        try {
            m0.a("createCodec:" + str);
            this.K = this.f24664n.a(aVarE0);
            m0.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = mVar;
            this.O = f10;
            this.L = this.B;
            this.S = C(str);
            this.T = D(str, this.L);
            this.U = I(str);
            this.V = K(str);
            this.W = F(str);
            this.X = G(str);
            this.Y = E(str);
            this.Z = J(str, this.L);
            this.f24653c0 = H(mVar) || Z();
            if (this.K.g()) {
                this.f24665n0 = true;
                this.f24667o0 = 1;
                this.f24651a0 = this.S != 0;
            }
            if ("c2.android.mp3.decoder".equals(mVar.f24759a)) {
                this.f24654d0 = new i();
            }
            if (getState() == 2) {
                this.f24655e0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.B0.f24234a++;
            s0(str, aVarE0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th2) {
            m0.c();
            throw th2;
        }
    }

    private boolean l0(long j10) {
        int size = this.f24682w.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((Long) this.f24682w.get(i10)).longValue() == j10) {
                this.f24682w.remove(i10);
                return true;
            }
        }
        return false;
    }

    private static boolean m0(IllegalStateException illegalStateException) {
        if (p0.f26854a >= 21 && n0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private static boolean n0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    private static boolean o0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004a A[SYNTHETIC] */
    private void q0(MediaCrypto mediaCrypto, boolean z10) throws DecoderInitializationException {
        DecoderInitializationException decoderInitializationException;
        DecoderInitializationException decoderInitializationException2;
        if (this.P == null) {
            try {
                List listW = W(z10);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.P = arrayDeque;
                if (this.f24668p) {
                    arrayDeque.addAll(listW);
                } else if (!listW.isEmpty()) {
                    this.P.add((m) listW.get(0));
                }
                this.Q = null;
            } catch (MediaCodecUtil.DecoderQueryException e10) {
                throw new DecoderInitializationException(this.B, e10, z10, -49998);
            }
        }
        if (this.P.isEmpty()) {
            throw new DecoderInitializationException(this.B, (Throwable) null, z10, -49999);
        }
        m mVar = (m) this.P.peekFirst();
        while (this.K == null) {
            m mVar2 = (m) this.P.peekFirst();
            if (!P0(mVar2)) {
                return;
            }
            try {
                k0(mVar2, mediaCrypto);
            } catch (Exception e11) {
                if (mVar2 != mVar) {
                    throw e11;
                }
                try {
                    com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    k0(mVar2, mediaCrypto);
                } catch (Exception e12) {
                    com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to initialize decoder: " + mVar2, e12);
                    this.P.removeFirst();
                    decoderInitializationException = new DecoderInitializationException(this.B, e12, z10, mVar2);
                    r0(decoderInitializationException);
                    decoderInitializationException2 = this.Q;
                    if (decoderInitializationException2 == null) {
                        this.Q = decoderInitializationException;
                    } else {
                        this.Q = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                    }
                    if (!this.P.isEmpty()) {
                        throw this.Q;
                    }
                }
                com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to initialize decoder: " + mVar2, e12);
                this.P.removeFirst();
                decoderInitializationException = new DecoderInitializationException(this.B, e12, z10, mVar2);
                r0(decoderInitializationException);
                decoderInitializationException2 = this.Q;
                if (decoderInitializationException2 == null) {
                    this.Q = decoderInitializationException;
                } else {
                    this.Q = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                }
                if (!this.P.isEmpty()) {
                    throw this.Q;
                }
            }
        }
        this.P = null;
    }

    private void z() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.g(!this.f24683w0);
        q1 q1VarK = k();
        this.f24676t.b();
        do {
            this.f24676t.b();
            int iW = w(q1VarK, this.f24676t, 0);
            if (iW == -5) {
                u0(q1VarK);
                return;
            }
            if (iW != -4) {
                if (iW != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.f24676t.h()) {
                    this.f24683w0 = true;
                    return;
                }
                if (this.f24687y0) {
                    p1 p1Var = (p1) com.google.android.exoplayer2.util.a.e(this.B);
                    this.C = p1Var;
                    v0(p1Var, null);
                    this.f24687y0 = false;
                }
                this.f24676t.n();
            }
        } while (this.f24678u.r(this.f24676t));
        this.f24662l0 = true;
    }

    private void z0() throws ExoPlaybackException {
        int i10 = this.f24671q0;
        if (i10 == 1) {
            T();
            return;
        }
        if (i10 == 2) {
            T();
            V0();
        } else if (i10 == 3) {
            D0();
        } else {
            this.f24685x0 = true;
            F0();
        }
    }

    protected abstract boolean A0(long j10, long j11, l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, p1 p1Var);

    protected abstract com.google.android.exoplayer2.decoder.g B(m mVar, p1 p1Var, p1 p1Var2);

    /* JADX WARN: Multi-variable type inference failed */
    protected void E0() {
        try {
            l lVar = this.K;
            if (lVar != null) {
                lVar.release();
                this.B0.f24235b++;
                t0(this.R.f24759a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.F = null;
                K0(null);
                H0();
            }
        } catch (Throwable th2) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
                this.F = null;
                K0(null);
                H0();
            }
        }
    }

    protected void G0() {
        I0();
        J0();
        this.f24655e0 = C.TIME_UNSET;
        this.f24675s0 = false;
        this.f24673r0 = false;
        this.f24651a0 = false;
        this.f24652b0 = false;
        this.f24659i0 = false;
        this.f24660j0 = false;
        this.f24682w.clear();
        this.f24679u0 = C.TIME_UNSET;
        this.f24681v0 = C.TIME_UNSET;
        i iVar = this.f24654d0;
        if (iVar != null) {
            iVar.c();
        }
        this.f24669p0 = 0;
        this.f24671q0 = 0;
        this.f24667o0 = this.f24665n0 ? 1 : 0;
    }

    protected void H0() {
        G0();
        this.A0 = null;
        this.f24654d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.f24677t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.f24653c0 = false;
        this.f24665n0 = false;
        this.f24667o0 = 0;
        this.G = false;
    }

    protected MediaCodecDecoderException L(Throwable th2, m mVar) {
        return new MediaCodecDecoderException(th2, mVar);
    }

    protected final void L0() {
        this.f24689z0 = true;
    }

    protected final void M0(ExoPlaybackException exoPlaybackException) {
        this.A0 = exoPlaybackException;
    }

    protected boolean P0(m mVar) {
        return true;
    }

    protected boolean Q0() {
        return false;
    }

    protected boolean R0(p1 p1Var) {
        return false;
    }

    protected abstract int S0(o oVar, p1 p1Var);

    protected final boolean U() throws ExoPlaybackException {
        boolean zV = V();
        if (zV) {
            p0();
        }
        return zV;
    }

    protected boolean V() {
        if (this.K == null) {
            return false;
        }
        int i10 = this.f24671q0;
        if (i10 == 3 || this.U || ((this.V && !this.f24677t0) || (this.W && this.f24675s0))) {
            E0();
            return true;
        }
        if (i10 == 2) {
            int i11 = p0.f26854a;
            com.google.android.exoplayer2.util.a.g(i11 >= 23);
            if (i11 >= 23) {
                try {
                    V0();
                } catch (ExoPlaybackException e10) {
                    com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                    E0();
                    return true;
                }
            }
        }
        T();
        return false;
    }

    protected final void W0(long j10) {
        p1 p1Var = (p1) this.f24680v.j(j10);
        if (p1Var == null && this.N) {
            p1Var = (p1) this.f24680v.i();
        }
        if (p1Var != null) {
            this.C = p1Var;
        } else if (!this.N || this.C == null) {
            return;
        }
        v0(this.C, this.M);
        this.N = false;
    }

    protected final l X() {
        return this.K;
    }

    protected final m Y() {
        return this.R;
    }

    protected boolean Z() {
        return false;
    }

    @Override
    public final int a(p1 p1Var) throws ExoPlaybackException {
        try {
            return S0(this.f24666o, p1Var);
        } catch (MediaCodecUtil.DecoderQueryException e10) {
            throw g(e10, p1Var, 4002);
        }
    }

    protected abstract float a0(float f10, p1 p1Var, p1[] p1VarArr);

    protected final MediaFormat b0() {
        return this.M;
    }

    protected abstract List c0(o oVar, p1 p1Var, boolean z10);

    @Override
    public void d(float f10, float f11) throws ExoPlaybackException {
        this.I = f10;
        this.J = f11;
        U0(this.L);
    }

    protected abstract l.a e0(m mVar, p1 p1Var, MediaCrypto mediaCrypto, float f10);

    protected final long f0() {
        return this.D0;
    }

    protected float g0() {
        return this.I;
    }

    @Override
    public boolean isEnded() {
        return this.f24685x0;
    }

    @Override
    public boolean isReady() {
        return this.B != null && (o() || i0() || (this.f24655e0 != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.f24655e0));
    }

    @Override
    protected void p() {
        this.B = null;
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        this.E0 = 0;
        V();
    }

    protected final void p0() throws ExoPlaybackException {
        p1 p1Var;
        if (this.K != null || this.f24661k0 || (p1Var = this.B) == null) {
            return;
        }
        if (this.E == null && R0(p1Var)) {
            j0(this.B);
            return;
        }
        K0(this.E);
        String str = this.B.f24901l;
        DrmSession drmSession = this.D;
        if (drmSession != null) {
            if (this.F == null) {
                d0 d0VarD0 = d0(drmSession);
                if (d0VarD0 != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(d0VarD0.f24335a, d0VarD0.f24336b);
                        this.F = mediaCrypto;
                        this.G = !d0VarD0.f24337c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e10) {
                        throw g(e10, this.B, 6006);
                    }
                } else if (this.D.getError() == null) {
                    return;
                }
            }
            if (d0.f24334d) {
                int state = this.D.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.D.getError());
                    throw g(drmSessionException, this.B, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            q0(this.F, this.G);
        } catch (DecoderInitializationException e11) {
            throw g(e11, this.B, 4001);
        }
    }

    @Override
    protected void q(boolean z10, boolean z11) {
        this.B0 = new com.google.android.exoplayer2.decoder.e();
    }

    @Override
    protected void r(long j10, boolean z10) throws ExoPlaybackException {
        this.f24683w0 = false;
        this.f24685x0 = false;
        this.f24689z0 = false;
        if (this.f24661k0) {
            this.f24678u.b();
            this.f24676t.b();
            this.f24662l0 = false;
        } else {
            U();
        }
        if (this.f24680v.l() > 0) {
            this.f24687y0 = true;
        }
        this.f24680v.c();
        int i10 = this.E0;
        if (i10 != 0) {
            this.D0 = this.f24688z[i10 - 1];
            this.C0 = this.f24686y[i10 - 1];
            this.E0 = 0;
        }
    }

    protected abstract void r0(Exception exc);

    @Override
    public void render(long j10, long j11) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f24689z0) {
            this.f24689z0 = false;
            z0();
        }
        ExoPlaybackException exoPlaybackException = this.A0;
        if (exoPlaybackException != null) {
            this.A0 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.f24685x0) {
                F0();
                return;
            }
            if (this.B != null || C0(2)) {
                p0();
                if (this.f24661k0) {
                    m0.a("bypassRender");
                    while (A(j10, j11)) {
                    }
                    m0.c();
                } else if (this.K != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    m0.a("drainAndFeed");
                    while (Q(j10, j11) && O0(jElapsedRealtime)) {
                    }
                    while (S() && O0(jElapsedRealtime)) {
                    }
                    m0.c();
                } else {
                    this.B0.f24237d += y(j10);
                    C0(1);
                }
                this.B0.c();
            }
        } catch (IllegalStateException e10) {
            if (!m0(e10)) {
                throw e10;
            }
            r0(e10);
            if (p0.f26854a >= 21 && o0(e10)) {
                z10 = true;
            }
            if (z10) {
                E0();
            }
            throw i(L(e10, Y()), this.B, z10, 4003);
        }
    }

    @Override
    protected void s() {
        try {
            M();
            E0();
        } finally {
            N0(null);
        }
    }

    protected abstract void s0(String str, l.a aVar, long j10, long j11);

    @Override
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    protected abstract void t0(String str);

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x0083  */
    protected com.google.android.exoplayer2.decoder.g u0(q1 q1Var) throws ExoPlaybackException {
        int i10;
        boolean z10 = true;
        this.f24687y0 = true;
        p1 p1Var = (p1) com.google.android.exoplayer2.util.a.e(q1Var.f24962b);
        if (p1Var.f24901l == null) {
            throw g(new IllegalArgumentException(), p1Var, 4005);
        }
        N0(q1Var.f24961a);
        this.B = p1Var;
        if (this.f24661k0) {
            this.f24663m0 = true;
            return null;
        }
        l lVar = this.K;
        if (lVar == null) {
            this.P = null;
            p0();
            return null;
        }
        m mVar = this.R;
        p1 p1Var2 = this.L;
        if (R(mVar, p1Var, this.D, this.E)) {
            O();
            return new com.google.android.exoplayer2.decoder.g(mVar.f24759a, p1Var2, p1Var, 0, 128);
        }
        boolean z11 = this.E != this.D;
        com.google.android.exoplayer2.util.a.g(!z11 || p0.f26854a >= 23);
        com.google.android.exoplayer2.decoder.g gVarB = B(mVar, p1Var2, p1Var);
        int i11 = gVarB.f24251d;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (U0(p1Var)) {
                        this.L = p1Var;
                        if (z11 && !P()) {
                            i10 = 2;
                        }
                    } else {
                        i10 = 16;
                    }
                } else if (U0(p1Var)) {
                    this.f24665n0 = true;
                    this.f24667o0 = 1;
                    int i12 = this.S;
                    if (i12 != 2 && (i12 != 1 || p1Var.f24906q != p1Var2.f24906q || p1Var.f24907r != p1Var2.f24907r)) {
                        z10 = false;
                    }
                    this.f24651a0 = z10;
                    this.L = p1Var;
                    if (z11 && !P()) {
                        i10 = 2;
                    }
                } else {
                    i10 = 16;
                }
            } else if (U0(p1Var)) {
                this.L = p1Var;
                if (!z11 ? !N() : !P()) {
                    i10 = 2;
                }
            } else {
                i10 = 16;
            }
            return (gVarB.f24251d != 0 || (this.K == lVar && this.f24671q0 != 3)) ? gVarB : new com.google.android.exoplayer2.decoder.g(mVar.f24759a, p1Var2, p1Var, 0, i10);
        }
        O();
        i10 = 0;
        if (gVarB.f24251d != 0) {
        }
    }

    @Override
    protected void v(p1[] p1VarArr, long j10, long j11) {
        if (this.D0 == C.TIME_UNSET) {
            com.google.android.exoplayer2.util.a.g(this.C0 == C.TIME_UNSET);
            this.C0 = j10;
            this.D0 = j11;
            return;
        }
        int i10 = this.E0;
        if (i10 == this.f24688z.length) {
            com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.f24688z[this.E0 - 1]);
        } else {
            this.E0 = i10 + 1;
        }
        long[] jArr = this.f24686y;
        int i11 = this.E0;
        jArr[i11 - 1] = j10;
        this.f24688z[i11 - 1] = j11;
        this.A[i11 - 1] = this.f24679u0;
    }

    protected abstract void v0(p1 p1Var, MediaFormat mediaFormat);

    protected void w0(long j10) {
        while (true) {
            int i10 = this.E0;
            if (i10 == 0 || j10 < this.A[0]) {
                return;
            }
            long[] jArr = this.f24686y;
            this.C0 = jArr[0];
            this.D0 = this.f24688z[0];
            int i11 = i10 - 1;
            this.E0 = i11;
            System.arraycopy(jArr, 1, jArr, 0, i11);
            long[] jArr2 = this.f24688z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.E0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.E0);
            x0();
        }
    }

    protected abstract void y0(DecoderInputBuffer decoderInputBuffer);

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final m codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(p1 p1Var, @Nullable Throwable th2, boolean z10, int i10) {
            this("Decoder init failed: [" + i10 + "], " + p1Var, th2, p1Var.f24901l, z10, null, buildCustomDiagnosticInfo(i10), null);
        }

        private static String buildCustomDiagnosticInfo(int i10) {
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i10 < 0 ? "neg_" : "") + Math.abs(i10);
        }

        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        private static String getDiagnosticInfoV21(@Nullable Throwable th2) {
            if (th2 instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(p1 p1Var, @Nullable Throwable th2, boolean z10, m mVar) {
            this("Decoder init failed: " + mVar.f24759a + ", " + p1Var, th2, p1Var.f24901l, z10, mVar, p0.f26854a >= 21 ? getDiagnosticInfoV21(th2) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th2, String str2, boolean z10, @Nullable m mVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.mimeType = str2;
            this.secureDecoderRequired = z10;
            this.codecInfo = mVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }

    protected void F0() {
    }

    @Override
    protected void t() {
    }

    @Override
    protected void u() {
    }

    protected void x0() {
    }

    protected void h0(DecoderInputBuffer decoderInputBuffer) {
    }
}
