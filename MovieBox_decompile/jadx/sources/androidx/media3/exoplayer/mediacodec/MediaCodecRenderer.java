package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.b1;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import x1.f4;

public abstract class MediaCodecRenderer extends androidx.media3.exoplayer.i {
    private static final byte[] E0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final ArrayDeque A;
    private d A0;
    private final b1 B;
    private long B0;
    private androidx.media3.common.r C;
    private boolean C0;
    private androidx.media3.common.r D;
    private boolean D0;
    private DrmSession E;
    private DrmSession F;
    private w3.a G;
    private MediaCrypto H;
    private long I;
    private float J;
    private float K;
    private t L;
    private androidx.media3.common.r M;
    private MediaFormat N;
    private boolean O;
    private float P;
    private ArrayDeque Q;
    private DecoderInitializationException R;
    private w S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    private long f11821a0;

    private boolean f11822b0;

    private long f11823c0;

    private int f11824d0;

    private int f11825e0;

    private ByteBuffer f11826f0;

    private boolean f11827g0;

    private boolean f11828h0;

    private boolean f11829i0;

    private boolean f11830j0;

    private boolean f11831k0;

    private boolean f11832l0;

    private int f11833m0;

    private int f11834n0;

    private int f11835o0;

    private boolean f11836p0;

    private boolean f11837q0;

    private final t.b f11838r;

    private boolean f11839r0;

    private final h0 f11840s;

    private long f11841s0;

    private final boolean f11842t;

    private long f11843t0;

    private final float f11844u;

    private boolean f11845u0;

    private final DecoderInputBuffer f11846v;

    private boolean f11847v0;

    private final DecoderInputBuffer f11848w;

    private boolean f11849w0;

    private final DecoderInputBuffer f11850x;

    private boolean f11851x0;

    private final j f11852y;

    private ExoPlaybackException f11853y0;

    private final MediaCodec.BufferInfo f11854z;

    protected androidx.media3.exoplayer.j f11855z0;

    private static final class b {
        public static void a(t.a aVar, f4 f4Var) {
            LogSessionId logSessionIdA = f4Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f11937b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    private final class c implements t.c {
        private c() {
        }

        @Override
        public void a() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }

        @Override
        public void b() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }
    }

    private static final class d {

        public static final d f11857e = new d(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET);

        public final long f11858a;

        public final long f11859b;

        public final long f11860c;

        public final androidx.media3.common.util.o0 f11861d = new androidx.media3.common.util.o0();

        public d(long j10, long j11, long j12) {
            this.f11858a = j10;
            this.f11859b = j11;
            this.f11860c = j12;
        }
    }

    public MediaCodecRenderer(int i10, t.b bVar, h0 h0Var, boolean z10, float f10) {
        super(i10);
        this.f11838r = bVar;
        this.f11840s = (h0) androidx.media3.common.util.a.e(h0Var);
        this.f11842t = z10;
        this.f11844u = f10;
        this.f11846v = DecoderInputBuffer.f();
        this.f11848w = new DecoderInputBuffer(0);
        this.f11850x = new DecoderInputBuffer(2);
        j jVar = new j();
        this.f11852y = jVar;
        this.f11854z = new MediaCodec.BufferInfo();
        this.J = 1.0f;
        this.K = 1.0f;
        this.I = C.TIME_UNSET;
        this.A = new ArrayDeque();
        this.A0 = d.f11857e;
        jVar.b(0);
        jVar.f10606c.order(ByteOrder.nativeOrder());
        this.B = new b1();
        this.P = -1.0f;
        this.T = 0;
        this.f11833m0 = 0;
        this.f11824d0 = -1;
        this.f11825e0 = -1;
        this.f11823c0 = C.TIME_UNSET;
        this.f11841s0 = C.TIME_UNSET;
        this.f11843t0 = C.TIME_UNSET;
        this.B0 = C.TIME_UNSET;
        this.f11821a0 = C.TIME_UNSET;
        this.f11834n0 = 0;
        this.f11835o0 = 0;
        this.f11855z0 = new androidx.media3.exoplayer.j();
    }

    private boolean A0() {
        return this.f11825e0 >= 0;
    }

    private boolean B0() {
        if (!this.f11852y.m()) {
            return true;
        }
        long jW = w();
        return H0(jW, this.f11852y.k()) == H0(jW, this.f11850x.f10608e);
    }

    private void C0(androidx.media3.common.r rVar) {
        a0();
        String str = rVar.f9849o;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f11852y.n(32);
        } else {
            this.f11852y.n(1);
        }
        this.f11829i0 = true;
    }

    private void D0(w wVar, MediaCrypto mediaCrypto) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        String str = wVar.f11943a;
        int i10 = a1.f10038a;
        float fP0 = i10 < 23 ? -1.0f : p0(this.K, rVar, y());
        float f10 = fP0 > this.f11844u ? fP0 : -1.0f;
        long jElapsedRealtime = s().elapsedRealtime();
        t.a aVarU0 = u0(wVar, rVar, mediaCrypto, f10);
        if (i10 >= 31) {
            b.a(aVarU0, x());
        }
        try {
            androidx.media3.common.util.q0.a("createCodec:" + str);
            t tVarA = this.f11838r.a(aVarU0);
            this.L = tVarA;
            this.f11822b0 = tVarA.m(new c());
            androidx.media3.common.util.q0.b();
            long jElapsedRealtime2 = s().elapsedRealtime();
            if (!wVar.o(rVar)) {
                androidx.media3.common.util.u.h("MediaCodecRenderer", a1.G("Format exceeds selected codec's capabilities [%s, %s]", androidx.media3.common.r.i(rVar), str));
            }
            this.S = wVar;
            this.P = f10;
            this.M = rVar;
            this.T = U(str);
            this.U = Y(str);
            this.V = V(str);
            this.W = W(str);
            this.Z = X(wVar) || o0();
            if (((t) androidx.media3.common.util.a.e(this.L)).g()) {
                this.f11832l0 = true;
                this.f11833m0 = 1;
                this.X = this.T != 0;
            }
            if (getState() == 2) {
                this.f11823c0 = s().elapsedRealtime() + 1000;
            }
            this.f11855z0.f11719a++;
            N0(str, aVarU0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th2) {
            androidx.media3.common.util.q0.b();
            throw th2;
        }
    }

    private boolean E0() throws ExoPlaybackException {
        androidx.media3.common.util.a.g(this.H == null);
        DrmSession drmSession = this.E;
        androidx.media3.decoder.b bVarC = drmSession.c();
        if (androidx.media3.exoplayer.drm.c0.f11256d && (bVarC instanceof androidx.media3.exoplayer.drm.c0)) {
            int state = drmSession.getState();
            if (state == 1) {
                DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSession.getError());
                throw q(drmSessionException, this.C, drmSessionException.errorCode);
            }
            if (state != 4) {
                return false;
            }
        }
        if (bVarC == null) {
            return drmSession.getError() != null;
        }
        if (bVarC instanceof androidx.media3.exoplayer.drm.c0) {
            androidx.media3.exoplayer.drm.c0 c0Var = (androidx.media3.exoplayer.drm.c0) bVarC;
            try {
                this.H = new MediaCrypto(c0Var.f11257a, c0Var.f11258b);
            } catch (MediaCryptoException e10) {
                throw q(e10, this.C, 6006);
            }
        }
        return true;
    }

    private boolean H0(long j10, long j11) {
        androidx.media3.common.r rVar;
        return j11 < j10 && !((rVar = this.D) != null && Objects.equals(rVar.f9849o, MimeTypes.AUDIO_OPUS) && k2.k0.g(j10, j11));
    }

    private static boolean I0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private void K0(MediaCrypto mediaCrypto, boolean z10) throws DecoderInitializationException {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        if (this.Q == null) {
            try {
                List listK0 = k0(z10);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.Q = arrayDeque;
                if (this.f11842t) {
                    arrayDeque.addAll(listK0);
                } else if (!listK0.isEmpty()) {
                    this.Q.add((w) listK0.get(0));
                }
                this.R = null;
            } catch (MediaCodecUtil.DecoderQueryException e10) {
                throw new DecoderInitializationException(rVar, e10, z10, -49998);
            }
        }
        if (this.Q.isEmpty()) {
            throw new DecoderInitializationException(rVar, (Throwable) null, z10, -49999);
        }
        ArrayDeque arrayDeque2 = (ArrayDeque) androidx.media3.common.util.a.e(this.Q);
        while (this.L == null) {
            w wVar = (w) androidx.media3.common.util.a.e((w) arrayDeque2.peekFirst());
            if (!L0(rVar) || !o1(wVar)) {
                return;
            }
            try {
                D0(wVar, mediaCrypto);
            } catch (Exception e11) {
                androidx.media3.common.util.u.i("MediaCodecRenderer", "Failed to initialize decoder: " + wVar, e11);
                arrayDeque2.removeFirst();
                DecoderInitializationException decoderInitializationException = new DecoderInitializationException(rVar, e11, z10, wVar);
                M0(decoderInitializationException);
                if (this.R == null) {
                    this.R = decoderInitializationException;
                } else {
                    this.R = this.R.copyWithFallbackException(decoderInitializationException);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.R;
                }
            }
        }
        this.Q = null;
    }

    private void R() throws ExoPlaybackException {
        androidx.media3.common.util.a.g(!this.f11845u0);
        s2 s2VarU = u();
        this.f11850x.clear();
        do {
            this.f11850x.clear();
            int iN = N(s2VarU, this.f11850x, 0);
            if (iN == -5) {
                P0(s2VarU);
                return;
            }
            if (iN == -4) {
                if (!this.f11850x.isEndOfStream()) {
                    this.f11841s0 = Math.max(this.f11841s0, this.f11850x.f10608e);
                    if (hasReadStreamToEnd() || this.f11848w.isLastSample()) {
                        this.f11843t0 = this.f11841s0;
                    }
                    if (this.f11849w0) {
                        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
                        this.D = rVar;
                        if (Objects.equals(rVar.f9849o, MimeTypes.AUDIO_OPUS) && !this.D.f9852r.isEmpty()) {
                            this.D = this.D.b().Z(k2.k0.f((byte[]) this.D.f9852r.get(0))).N();
                        }
                        Q0(this.D, null);
                        this.f11849w0 = false;
                    }
                    this.f11850x.d();
                    androidx.media3.common.r rVar2 = this.D;
                    if (rVar2 != null && Objects.equals(rVar2.f9849o, MimeTypes.AUDIO_OPUS)) {
                        if (this.f11850x.hasSupplementalData()) {
                            DecoderInputBuffer decoderInputBuffer = this.f11850x;
                            decoderInputBuffer.f10604a = this.D;
                            z0(decoderInputBuffer);
                        }
                        if (k2.k0.g(w(), this.f11850x.f10608e)) {
                            this.B.a(this.f11850x, this.D.f9852r);
                        }
                    }
                    if (!B0()) {
                        break;
                    }
                } else {
                    this.f11845u0 = true;
                    this.f11843t0 = this.f11841s0;
                    return;
                }
            } else {
                if (iN != -3) {
                    throw new IllegalStateException();
                }
                if (hasReadStreamToEnd()) {
                    this.f11843t0 = this.f11841s0;
                    return;
                }
                return;
            }
        } while (this.f11852y.h(this.f11850x));
        this.f11830j0 = true;
    }

    private boolean S(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        androidx.media3.common.util.a.g(!this.f11847v0);
        if (this.f11852y.m()) {
            j jVar = this.f11852y;
            if (!X0(j10, j11, null, jVar.f10606c, this.f11825e0, 0, jVar.l(), this.f11852y.j(), H0(w(), this.f11852y.k()), this.f11852y.isEndOfStream(), (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D))) {
                return false;
            }
            S0(this.f11852y.k());
            this.f11852y.clear();
            z10 = false;
        } else {
            z10 = false;
        }
        if (this.f11845u0) {
            this.f11847v0 = true;
            return z10;
        }
        if (this.f11830j0) {
            androidx.media3.common.util.a.g(this.f11852y.h(this.f11850x));
            this.f11830j0 = z10;
        }
        if (this.f11831k0) {
            if (this.f11852y.m()) {
                return true;
            }
            a0();
            this.f11831k0 = z10;
            J0();
            if (!this.f11829i0) {
                return z10;
            }
        }
        R();
        if (this.f11852y.m()) {
            this.f11852y.d();
        }
        if (this.f11852y.m() || this.f11845u0 || this.f11831k0) {
            return true;
        }
        return z10;
    }

    private int U(String str) {
        int i10 = a1.f10038a;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Build.MODEL;
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
        String str3 = Build.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean V(String str) {
        return a1.f10038a <= 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private static boolean W(String str) {
        return a1.f10038a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private void W0() throws ExoPlaybackException {
        int i10 = this.f11835o0;
        if (i10 == 1) {
            h0();
            return;
        }
        if (i10 == 2) {
            h0();
            v1();
        } else if (i10 == 3) {
            a1();
        } else {
            this.f11847v0 = true;
            c1();
        }
    }

    private static boolean X(w wVar) {
        String str = wVar.f11943a;
        int i10 = a1.f10038a;
        return (i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && wVar.f11949g);
    }

    private static boolean Y(String str) {
        return a1.f10038a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void Y0() {
        this.f11839r0 = true;
        MediaFormat mediaFormatC = ((t) androidx.media3.common.util.a.e(this.L)).c();
        if (this.T != 0 && mediaFormatC.getInteger("width") == 32 && mediaFormatC.getInteger("height") == 32) {
            this.Y = true;
        } else {
            this.N = mediaFormatC;
            this.O = true;
        }
    }

    private boolean Z0(int i10) throws ExoPlaybackException {
        s2 s2VarU = u();
        this.f11846v.clear();
        int iN = N(s2VarU, this.f11846v, i10 | 4);
        if (iN == -5) {
            P0(s2VarU);
            return true;
        }
        if (iN != -4 || !this.f11846v.isEndOfStream()) {
            return false;
        }
        this.f11845u0 = true;
        W0();
        return false;
    }

    private void a0() {
        this.f11831k0 = false;
        this.f11852y.clear();
        this.f11850x.clear();
        this.f11830j0 = false;
        this.f11829i0 = false;
        this.B.d();
    }

    private void a1() throws ExoPlaybackException {
        b1();
        J0();
    }

    private boolean b0() {
        if (this.f11836p0) {
            this.f11834n0 = 1;
            if (this.V) {
                this.f11835o0 = 3;
                return false;
            }
            this.f11835o0 = 1;
        }
        return true;
    }

    private void c0() throws ExoPlaybackException {
        if (!this.f11836p0) {
            a1();
        } else {
            this.f11834n0 = 1;
            this.f11835o0 = 3;
        }
    }

    private boolean d0() throws ExoPlaybackException {
        if (this.f11836p0) {
            this.f11834n0 = 1;
            if (this.V) {
                this.f11835o0 = 3;
                return false;
            }
            this.f11835o0 = 2;
        } else {
            v1();
        }
        return true;
    }

    private boolean e0(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        boolean zX0;
        int iJ;
        t tVar = (t) androidx.media3.common.util.a.e(this.L);
        if (!A0()) {
            if (this.W && this.f11837q0) {
                try {
                    iJ = tVar.j(this.f11854z);
                } catch (IllegalStateException unused) {
                    W0();
                    if (this.f11847v0) {
                        b1();
                    }
                    return false;
                }
            } else {
                iJ = tVar.j(this.f11854z);
            }
            if (iJ < 0) {
                if (iJ == -2) {
                    Y0();
                    return true;
                }
                if (this.Z && (this.f11845u0 || this.f11834n0 == 2)) {
                    W0();
                }
                long j12 = this.f11821a0;
                if (j12 != C.TIME_UNSET && j12 + 100 < s().currentTimeMillis()) {
                    W0();
                }
                return false;
            }
            if (this.Y) {
                this.Y = false;
                tVar.k(iJ, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.f11854z;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                W0();
                return false;
            }
            this.f11825e0 = iJ;
            ByteBuffer byteBufferL = tVar.l(iJ);
            this.f11826f0 = byteBufferL;
            if (byteBufferL != null) {
                byteBufferL.position(this.f11854z.offset);
                ByteBuffer byteBuffer = this.f11826f0;
                MediaCodec.BufferInfo bufferInfo2 = this.f11854z;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            this.f11827g0 = this.f11854z.presentationTimeUs < w();
            long j13 = this.f11843t0;
            this.f11828h0 = j13 != C.TIME_UNSET && j13 <= this.f11854z.presentationTimeUs;
            w1(this.f11854z.presentationTimeUs);
        }
        if (this.W && this.f11837q0) {
            try {
                ByteBuffer byteBuffer2 = this.f11826f0;
                int i10 = this.f11825e0;
                MediaCodec.BufferInfo bufferInfo3 = this.f11854z;
                z10 = false;
                try {
                    zX0 = X0(j10, j11, tVar, byteBuffer2, i10, bufferInfo3.flags, 1, bufferInfo3.presentationTimeUs, this.f11827g0, this.f11828h0, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D));
                } catch (IllegalStateException unused2) {
                    W0();
                    if (this.f11847v0) {
                        b1();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            ByteBuffer byteBuffer3 = this.f11826f0;
            int i11 = this.f11825e0;
            MediaCodec.BufferInfo bufferInfo4 = this.f11854z;
            zX0 = X0(j10, j11, tVar, byteBuffer3, i11, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f11827g0, this.f11828h0, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D));
        }
        if (zX0) {
            S0(this.f11854z.presentationTimeUs);
            boolean z11 = (this.f11854z.flags & 4) != 0 ? true : z10;
            if (!z11 && this.f11837q0 && this.f11828h0) {
                this.f11821a0 = s().currentTimeMillis();
            }
            g1();
            if (!z11) {
                return true;
            }
            W0();
        }
        return z10;
    }

    private boolean f0(w wVar, androidx.media3.common.r rVar, DrmSession drmSession, DrmSession drmSession2) {
        androidx.media3.decoder.b bVarC;
        androidx.media3.decoder.b bVarC2;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (bVarC = drmSession2.c()) != null && (bVarC2 = drmSession.c()) != null && bVarC.getClass().equals(bVarC2.getClass())) {
            if (!(bVarC instanceof androidx.media3.exoplayer.drm.c0)) {
                return false;
            }
            if (!drmSession2.a().equals(drmSession.a()) || a1.f10038a < 23) {
                return true;
            }
            UUID uuid = androidx.media3.common.h.f9673e;
            if (!uuid.equals(drmSession.a()) && !uuid.equals(drmSession2.a())) {
                if (wVar.f11949g) {
                    return false;
                }
                return drmSession2.getState() == 2 || ((drmSession2.getState() == 3 || drmSession2.getState() == 4) && drmSession2.d((String) androidx.media3.common.util.a.e(rVar.f9849o)));
            }
        }
        return true;
    }

    private void f1() {
        this.f11824d0 = -1;
        this.f11848w.f10606c = null;
    }

    private boolean g0() throws ExoPlaybackException {
        int i10;
        if (this.L == null || (i10 = this.f11834n0) == 2 || this.f11845u0) {
            return false;
        }
        if (i10 == 0 && p1()) {
            c0();
        }
        t tVar = (t) androidx.media3.common.util.a.e(this.L);
        if (this.f11824d0 < 0) {
            int i11 = tVar.i();
            this.f11824d0 = i11;
            if (i11 < 0) {
                return false;
            }
            this.f11848w.f10606c = tVar.d(i11);
            this.f11848w.clear();
        }
        if (this.f11834n0 == 1) {
            if (!this.Z) {
                this.f11837q0 = true;
                tVar.a(this.f11824d0, 0, 0, 0L, 4);
                f1();
            }
            this.f11834n0 = 2;
            return false;
        }
        if (this.X) {
            this.X = false;
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f11848w.f10606c);
            byte[] bArr = E0;
            byteBuffer.put(bArr);
            tVar.a(this.f11824d0, 0, bArr.length, 0L, 0);
            f1();
            this.f11836p0 = true;
            return true;
        }
        if (this.f11833m0 == 1) {
            for (int i12 = 0; i12 < ((androidx.media3.common.r) androidx.media3.common.util.a.e(this.M)).f9852r.size(); i12++) {
                ((ByteBuffer) androidx.media3.common.util.a.e(this.f11848w.f10606c)).put((byte[]) this.M.f9852r.get(i12));
            }
            this.f11833m0 = 2;
        }
        int iPosition = ((ByteBuffer) androidx.media3.common.util.a.e(this.f11848w.f10606c)).position();
        s2 s2VarU = u();
        try {
            int iN = N(s2VarU, this.f11848w, 0);
            if (iN == -3) {
                if (hasReadStreamToEnd()) {
                    this.f11843t0 = this.f11841s0;
                }
                return false;
            }
            if (iN == -5) {
                if (this.f11833m0 == 2) {
                    this.f11848w.clear();
                    this.f11833m0 = 1;
                }
                P0(s2VarU);
                return true;
            }
            if (this.f11848w.isEndOfStream()) {
                this.f11843t0 = this.f11841s0;
                if (this.f11833m0 == 2) {
                    this.f11848w.clear();
                    this.f11833m0 = 1;
                }
                this.f11845u0 = true;
                if (!this.f11836p0) {
                    W0();
                    return false;
                }
                if (!this.Z) {
                    this.f11837q0 = true;
                    tVar.a(this.f11824d0, 0, 0, 0L, 4);
                    f1();
                }
                return false;
            }
            if (!this.f11836p0 && !this.f11848w.isKeyFrame()) {
                this.f11848w.clear();
                if (this.f11833m0 == 2) {
                    this.f11833m0 = 1;
                }
                return true;
            }
            if (n1(this.f11848w)) {
                return true;
            }
            boolean zE = this.f11848w.e();
            if (zE) {
                this.f11848w.f10605b.b(iPosition);
            }
            long j10 = this.f11848w.f10608e;
            if (this.f11849w0) {
                if (this.A.isEmpty()) {
                    this.A0.f11861d.a(j10, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C));
                } else {
                    ((d) this.A.peekLast()).f11861d.a(j10, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C));
                }
                this.f11849w0 = false;
            }
            this.f11841s0 = Math.max(this.f11841s0, j10);
            if (hasReadStreamToEnd() || this.f11848w.isLastSample()) {
                this.f11843t0 = this.f11841s0;
            }
            this.f11848w.d();
            if (this.f11848w.hasSupplementalData()) {
                z0(this.f11848w);
            }
            U0(this.f11848w);
            int iM0 = m0(this.f11848w);
            if (zE) {
                ((t) androidx.media3.common.util.a.e(tVar)).f(this.f11824d0, 0, this.f11848w.f10605b, j10, iM0);
            } else {
                ((t) androidx.media3.common.util.a.e(tVar)).a(this.f11824d0, 0, ((ByteBuffer) androidx.media3.common.util.a.e(this.f11848w.f10606c)).limit(), j10, iM0);
            }
            f1();
            this.f11836p0 = true;
            this.f11833m0 = 0;
            this.f11855z0.f11721c++;
            return true;
        } catch (DecoderInputBuffer.InsufficientCapacityException e10) {
            M0(e10);
            Z0(0);
            h0();
            return true;
        }
    }

    private void g1() {
        this.f11825e0 = -1;
        this.f11826f0 = null;
    }

    private void h0() {
        try {
            ((t) androidx.media3.common.util.a.i(this.L)).flush();
        } finally {
            d1();
        }
    }

    private void h1(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.E, drmSession);
        this.E = drmSession;
    }

    private void i1(d dVar) {
        this.A0 = dVar;
        long j10 = dVar.f11860c;
        if (j10 != C.TIME_UNSET) {
            this.C0 = true;
            R0(j10);
        }
    }

    private List k0(boolean z10) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        List listR0 = r0(this.f11840s, rVar, z10);
        if (listR0.isEmpty() && z10) {
            listR0 = r0(this.f11840s, rVar, false);
            if (!listR0.isEmpty()) {
                androidx.media3.common.util.u.h("MediaCodecRenderer", "Drm session requires secure decoder for " + rVar.f9849o + ", but no secure decoder available. Trying to proceed with " + listR0 + ".");
            }
        }
        return listR0;
    }

    private void l1(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.F, drmSession);
        this.F = drmSession;
    }

    private boolean m1(long j10) {
        return this.I == C.TIME_UNSET || s().elapsedRealtime() - j10 < this.I;
    }

    protected static boolean t1(androidx.media3.common.r rVar) {
        int i10 = rVar.N;
        return i10 == 0 || i10 == 2;
    }

    private boolean u1(androidx.media3.common.r rVar) throws ExoPlaybackException {
        if (a1.f10038a >= 23 && this.L != null && this.f11835o0 != 3 && getState() != 0) {
            float fP0 = p0(this.K, (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar), y());
            float f10 = this.P;
            if (f10 == fP0) {
                return true;
            }
            if (fP0 == -1.0f) {
                c0();
                return false;
            }
            if (f10 == -1.0f && fP0 <= this.f11844u) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fP0);
            ((t) androidx.media3.common.util.a.e(this.L)).b(bundle);
            this.P = fP0;
        }
        return true;
    }

    private void v1() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC = ((DrmSession) androidx.media3.common.util.a.e(this.F)).c();
        if (bVarC instanceof androidx.media3.exoplayer.drm.c0) {
            try {
                ((MediaCrypto) androidx.media3.common.util.a.e(this.H)).setMediaDrmSession(((androidx.media3.exoplayer.drm.c0) bVarC).f11258b);
            } catch (MediaCryptoException e10) {
                throw q(e10, this.C, 6006);
            }
        }
        h1(this.F);
        this.f11834n0 = 0;
        this.f11835o0 = 0;
    }

    @Override
    protected void C() {
        this.C = null;
        i1(d.f11857e);
        this.A.clear();
        j0();
    }

    @Override
    protected void D(boolean z10, boolean z11) {
        this.f11855z0 = new androidx.media3.exoplayer.j();
    }

    @Override
    protected void F(long j10, boolean z10) throws ExoPlaybackException {
        this.f11845u0 = false;
        this.f11847v0 = false;
        this.f11851x0 = false;
        if (this.f11829i0) {
            this.f11852y.clear();
            this.f11850x.clear();
            this.f11830j0 = false;
            this.B.d();
        } else {
            i0();
        }
        if (this.A0.f11861d.l() > 0) {
            this.f11849w0 = true;
        }
        this.A0.f11861d.c();
        this.A.clear();
    }

    protected final boolean F0() {
        return this.f11829i0;
    }

    protected final boolean G0(androidx.media3.common.r rVar) {
        return this.F == null && r1(rVar);
    }

    @Override
    protected void I() {
        try {
            a0();
            b1();
        } finally {
            l1(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    protected final void J0() throws ExoPlaybackException {
        androidx.media3.common.r rVar;
        boolean z10;
        if (this.L != null || this.f11829i0 || (rVar = this.C) == null) {
            return;
        }
        if (G0(rVar)) {
            C0(rVar);
            return;
        }
        h1(this.F);
        if (this.E == null || E0()) {
            try {
                DrmSession drmSession = this.E;
                if (drmSession == null || !(drmSession.getState() == 3 || this.E.getState() == 4)) {
                    z10 = false;
                } else if (this.E.d((String) androidx.media3.common.util.a.i(rVar.f9849o))) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                K0(this.H, z10);
            } catch (DecoderInitializationException e10) {
                throw q(e10, rVar, 4001);
            }
        }
        MediaCrypto mediaCrypto = this.H;
        if (mediaCrypto == null || this.L != null) {
            return;
        }
        mediaCrypto.release();
        this.H = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r5 >= r1) goto L15;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void L(androidx.media3.common.r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        if (this.A0.f11860c == C.TIME_UNSET) {
            i1(new d(C.TIME_UNSET, j10, j11));
            if (this.D0) {
                T0();
                return;
            }
            return;
        }
        if (this.A.isEmpty()) {
            long j12 = this.f11841s0;
            if (j12 != C.TIME_UNSET) {
                long j13 = this.B0;
                if (j13 != C.TIME_UNSET) {
                }
            }
            i1(new d(C.TIME_UNSET, j10, j11));
            if (this.A0.f11860c != C.TIME_UNSET) {
                T0();
                return;
            }
            return;
        }
        this.A.add(new d(this.f11841s0, j10, j11));
    }

    protected boolean L0(androidx.media3.common.r rVar) {
        return true;
    }

    protected abstract void M0(Exception exc);

    protected abstract void N0(String str, t.a aVar, long j10, long j11);

    protected abstract void O0(String str);

    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    protected androidx.media3.exoplayer.k P0(s2 s2Var) throws ExoPlaybackException {
        int i10;
        boolean z10 = true;
        this.f11849w0 = true;
        androidx.media3.common.r rVarN = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
        String str = rVarN.f9849o;
        if (str == null) {
            throw q(new IllegalArgumentException("Sample MIME type is null."), rVarN, 4005);
        }
        if (Objects.equals(str, "video/av01") && !rVarN.f9852r.isEmpty()) {
            rVarN = rVarN.b().g0(null).N();
        }
        androidx.media3.common.r rVar = rVarN;
        l1(s2Var.f12257a);
        this.C = rVar;
        if (this.f11829i0) {
            this.f11831k0 = true;
            return null;
        }
        t tVar = this.L;
        if (tVar == null) {
            this.Q = null;
            J0();
            return null;
        }
        w wVar = (w) androidx.media3.common.util.a.e(this.S);
        androidx.media3.common.r rVar2 = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.M);
        if (f0(wVar, rVar, this.E, this.F)) {
            c0();
            return new androidx.media3.exoplayer.k(wVar.f11943a, rVar2, rVar, 0, 128);
        }
        boolean z11 = this.F != this.E;
        androidx.media3.common.util.a.g(!z11 || a1.f10038a >= 23);
        androidx.media3.exoplayer.k kVarT = T(wVar, rVar2, rVar);
        int i11 = kVarT.f11741d;
        if (i11 != 0) {
            i10 = 16;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (u1(rVar)) {
                        this.M = rVar;
                        if (z11 && !d0()) {
                            i10 = 2;
                        }
                    }
                } else if (u1(rVar)) {
                    this.f11832l0 = true;
                    this.f11833m0 = 1;
                    int i12 = this.T;
                    if (i12 != 2 && (i12 != 1 || rVar.f9856v != rVar2.f9856v || rVar.f9857w != rVar2.f9857w)) {
                        z10 = false;
                    }
                    this.X = z10;
                    this.M = rVar;
                    if (z11 && !d0()) {
                        i10 = 2;
                    }
                }
            } else if (u1(rVar)) {
                this.M = rVar;
                if (!z11 ? !b0() : !d0()) {
                    i10 = 2;
                }
            }
            return (kVarT.f11741d != 0 || (this.L == tVar && this.f11835o0 != 3)) ? kVarT : new androidx.media3.exoplayer.k(wVar.f11943a, rVar2, rVar, 0, i10);
        }
        c0();
        i10 = 0;
        if (kVarT.f11741d != 0) {
        }
    }

    protected abstract void Q0(androidx.media3.common.r rVar, MediaFormat mediaFormat);

    protected void S0(long j10) {
        this.B0 = j10;
        while (!this.A.isEmpty() && j10 >= ((d) this.A.peek()).f11858a) {
            i1((d) androidx.media3.common.util.a.e((d) this.A.poll()));
            T0();
        }
    }

    protected abstract androidx.media3.exoplayer.k T(w wVar, androidx.media3.common.r rVar, androidx.media3.common.r rVar2);

    protected abstract boolean X0(long j10, long j11, t tVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, androidx.media3.common.r rVar);

    protected MediaCodecDecoderException Z(Throwable th2, w wVar) {
        return new MediaCodecDecoderException(th2, wVar);
    }

    @Override
    public final int a(androidx.media3.common.r rVar) throws ExoPlaybackException {
        try {
            return s1(this.f11840s, rVar);
        } catch (MediaCodecUtil.DecoderQueryException e10) {
            throw q(e10, rVar, 4002);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void b1() {
        try {
            t tVar = this.L;
            if (tVar != null) {
                tVar.release();
                this.f11855z0.f11720b++;
                O0(((w) androidx.media3.common.util.a.e(this.S)).f11943a);
            }
            this.L = null;
            try {
                MediaCrypto mediaCrypto = this.H;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.H = null;
                h1(null);
                e1();
            }
        } catch (Throwable th2) {
            this.L = null;
            try {
                MediaCrypto mediaCrypto2 = this.H;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
                this.H = null;
                h1(null);
                e1();
            }
        }
    }

    protected abstract void c1();

    @Override
    public void d(float f10, float f11) throws ExoPlaybackException {
        this.J = f10;
        this.K = f11;
        u1(this.M);
    }

    protected void d1() {
        f1();
        g1();
        this.f11823c0 = C.TIME_UNSET;
        this.f11837q0 = false;
        this.f11821a0 = C.TIME_UNSET;
        this.f11836p0 = false;
        this.X = false;
        this.Y = false;
        this.f11827g0 = false;
        this.f11828h0 = false;
        this.f11841s0 = C.TIME_UNSET;
        this.f11843t0 = C.TIME_UNSET;
        this.B0 = C.TIME_UNSET;
        this.f11834n0 = 0;
        this.f11835o0 = 0;
        this.f11833m0 = this.f11832l0 ? 1 : 0;
    }

    protected void e1() {
        d1();
        this.f11853y0 = null;
        this.Q = null;
        this.S = null;
        this.M = null;
        this.N = null;
        this.O = false;
        this.f11839r0 = false;
        this.P = -1.0f;
        this.T = 0;
        this.U = false;
        this.V = false;
        this.W = false;
        this.Z = false;
        this.f11822b0 = false;
        this.f11832l0 = false;
        this.f11833m0 = 0;
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 != 11) {
            super.handleMessage(i10, obj);
            return;
        }
        w3.a aVar = (w3.a) androidx.media3.common.util.a.e((w3.a) obj);
        this.G = aVar;
        V0(aVar);
    }

    protected final boolean i0() throws ExoPlaybackException {
        boolean zJ0 = j0();
        if (zJ0) {
            J0();
        }
        return zJ0;
    }

    @Override
    public boolean isEnded() {
        return this.f11847v0;
    }

    @Override
    public boolean isReady() {
        return this.C != null && (B() || A0() || (this.f11823c0 != C.TIME_UNSET && s().elapsedRealtime() < this.f11823c0));
    }

    protected boolean j0() {
        if (this.L == null) {
            return false;
        }
        int i10 = this.f11835o0;
        if (i10 == 3 || ((this.U && !this.f11839r0) || (this.V && this.f11837q0))) {
            b1();
            return true;
        }
        if (i10 == 2) {
            int i11 = a1.f10038a;
            androidx.media3.common.util.a.g(i11 >= 23);
            if (i11 >= 23) {
                try {
                    v1();
                } catch (ExoPlaybackException e10) {
                    androidx.media3.common.util.u.i("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                    b1();
                    return true;
                }
            }
        }
        h0();
        return false;
    }

    protected final void j1() {
        this.f11851x0 = true;
    }

    protected final void k1(ExoPlaybackException exoPlaybackException) {
        this.f11853y0 = exoPlaybackException;
    }

    protected final t l0() {
        return this.L;
    }

    @Override
    public final long m(long j10, long j11) {
        return s0(j10, j11, this.f11822b0);
    }

    protected int m0(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    protected final w n0() {
        return this.S;
    }

    protected boolean n1(DecoderInputBuffer decoderInputBuffer) {
        if (!q1(decoderInputBuffer)) {
            return false;
        }
        decoderInputBuffer.clear();
        this.f11855z0.f11722d++;
        return true;
    }

    protected boolean o0() {
        return false;
    }

    protected boolean o1(w wVar) {
        return true;
    }

    protected abstract float p0(float f10, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr);

    protected boolean p1() {
        return false;
    }

    protected final MediaFormat q0() {
        return this.N;
    }

    protected boolean q1(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    protected abstract List r0(h0 h0Var, androidx.media3.common.r rVar, boolean z10);

    protected boolean r1(androidx.media3.common.r rVar) {
        return false;
    }

    @Override
    public void render(long j10, long j11) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f11851x0) {
            this.f11851x0 = false;
            W0();
        }
        ExoPlaybackException exoPlaybackException = this.f11853y0;
        if (exoPlaybackException != null) {
            this.f11853y0 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.f11847v0) {
                c1();
                return;
            }
            if (this.C != null || Z0(2)) {
                J0();
                if (this.f11829i0) {
                    androidx.media3.common.util.q0.a("bypassRender");
                    while (S(j10, j11)) {
                    }
                    androidx.media3.common.util.q0.b();
                } else if (this.L != null) {
                    long jElapsedRealtime = s().elapsedRealtime();
                    androidx.media3.common.util.q0.a("drainAndFeed");
                    while (e0(j10, j11) && m1(jElapsedRealtime)) {
                    }
                    while (g0() && m1(jElapsedRealtime)) {
                    }
                    androidx.media3.common.util.q0.b();
                } else {
                    this.f11855z0.f11722d += P(j10);
                    Z0(1);
                }
                this.f11855z0.c();
            }
        } catch (MediaCodec.CryptoException e10) {
            throw q(e10, this.C, a1.b0(e10.getErrorCode()));
        } catch (IllegalStateException e11) {
            if (!I0(e11)) {
                throw e11;
            }
            M0(e11);
            if ((e11 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e11).isRecoverable()) {
                z10 = true;
            }
            if (z10) {
                b1();
            }
            MediaCodecDecoderException mediaCodecDecoderExceptionZ = Z(e11, n0());
            throw r(mediaCodecDecoderExceptionZ, this.C, z10, mediaCodecDecoderExceptionZ.errorCode == 1101 ? PlaybackException.ERROR_CODE_DECODING_RESOURCES_RECLAIMED : 4003);
        }
    }

    protected long s0(long j10, long j11, boolean z10) {
        return super.m(j10, j11);
    }

    protected abstract int s1(h0 h0Var, androidx.media3.common.r rVar);

    @Override
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    protected long t0() {
        return this.f11843t0;
    }

    protected abstract t.a u0(w wVar, androidx.media3.common.r rVar, MediaCrypto mediaCrypto, float f10);

    protected final long v0() {
        return this.A0.f11860c;
    }

    protected final long w0() {
        return this.A0.f11859b;
    }

    protected final void w1(long j10) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) this.A0.f11861d.j(j10);
        if (rVar == null && this.C0 && this.N != null) {
            rVar = (androidx.media3.common.r) this.A0.f11861d.i();
        }
        if (rVar != null) {
            this.D = rVar;
        } else if (!this.O || this.D == null) {
            return;
        }
        Q0((androidx.media3.common.r) androidx.media3.common.util.a.e(this.D), this.N);
        this.O = false;
        this.C0 = false;
    }

    protected float x0() {
        return this.J;
    }

    protected final w3.a y0() {
        return this.G;
    }

    protected abstract void z0(DecoderInputBuffer decoderInputBuffer);

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final w codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;

        @Nullable
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(androidx.media3.common.r rVar, @Nullable Throwable th2, boolean z10, int i10) {
            this("Decoder init failed: [" + i10 + "], " + rVar, th2, rVar.f9849o, z10, null, buildCustomDiagnosticInfo(i10), null);
        }

        private static String buildCustomDiagnosticInfo(int i10) {
            return "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i10 < 0 ? "neg_" : "") + Math.abs(i10);
        }

        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        public DecoderInitializationException(androidx.media3.common.r rVar, @Nullable Throwable th2, boolean z10, w wVar) {
            this("Decoder init failed: " + wVar.f11943a + ", " + rVar, th2, rVar.f9849o, z10, wVar, th2 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th2).getDiagnosticInfo() : null, null);
        }

        private DecoderInitializationException(@Nullable String str, @Nullable Throwable th2, @Nullable String str2, boolean z10, @Nullable w wVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.mimeType = str2;
            this.secureDecoderRequired = z10;
            this.codecInfo = wVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }

    @Override
    protected void J() {
    }

    @Override
    protected void K() {
    }

    protected void T0() {
    }

    protected void R0(long j10) {
    }

    protected void U0(DecoderInputBuffer decoderInputBuffer) {
    }

    protected void V0(w3.a aVar) {
    }
}
