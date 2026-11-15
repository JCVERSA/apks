package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.y2;
import com.google.android.exoplayer2.z2;
import com.google.common.collect.ImmutableList;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

public class a0 extends MediaCodecRenderer implements com.google.android.exoplayer2.util.u {
    private final Context G0;
    private final r.a H0;
    private final AudioSink I0;
    private int J0;
    private boolean K0;
    private p1 L0;
    private long M0;
    private boolean N0;
    private boolean O0;
    private boolean P0;
    private boolean Q0;
    private y2.a R0;

    private final class b implements AudioSink.a {
        private b() {
        }

        @Override
        public void a(Exception exc) {
            com.google.android.exoplayer2.util.s.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            a0.this.H0.l(exc);
        }

        @Override
        public void b(long j10) {
            a0.this.H0.B(j10);
        }

        @Override
        public void c() {
            if (a0.this.R0 != null) {
                a0.this.R0.a();
            }
        }

        @Override
        public void d() {
            if (a0.this.R0 != null) {
                a0.this.R0.b();
            }
        }

        @Override
        public void onPositionDiscontinuity() {
            a0.this.f1();
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            a0.this.H0.C(z10);
        }

        @Override
        public void onUnderrun(int i10, long j10, long j11) {
            a0.this.H0.D(i10, j10, j11);
        }
    }

    public a0(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, Handler handler, r rVar, AudioSink audioSink) {
        super(1, bVar, oVar, z10, 44100.0f);
        this.G0 = context.getApplicationContext();
        this.I0 = audioSink;
        this.H0 = new r.a(handler, rVar);
        audioSink.h(new b());
    }

    private static boolean Z0(String str) {
        if (p0.f26854a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(p0.f26856c)) {
            String str2 = p0.f26855b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean a1() {
        if (p0.f26854a == 23) {
            String str = p0.f26857d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int b1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var) {
        int i10;
        if (!"OMX.google.raw.decoder".equals(mVar.f24759a) || (i10 = p0.f26854a) >= 24 || (i10 == 23 && p0.x0(this.G0))) {
            return p1Var.f24902m;
        }
        return -1;
    }

    private static List d1(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var, boolean z10, AudioSink audioSink) {
        com.google.android.exoplayer2.mediacodec.m mVarV;
        String str = p1Var.f24901l;
        if (str == null) {
            return ImmutableList.of();
        }
        if (audioSink.a(p1Var) && (mVarV = MediaCodecUtil.v()) != null) {
            return ImmutableList.of(mVarV);
        }
        List listA = oVar.a(str, z10, false);
        String strM = MediaCodecUtil.m(p1Var);
        return strM == null ? ImmutableList.copyOf((Collection) listA) : ImmutableList.builder().l(listA).l(oVar.a(strM, z10, false)).e();
    }

    private void g1() {
        long currentPositionUs = this.I0.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.O0) {
                currentPositionUs = Math.max(this.M0, currentPositionUs);
            }
            this.M0 = currentPositionUs;
            this.O0 = false;
        }
    }

    @Override
    protected boolean A0(long j10, long j11, com.google.android.exoplayer2.mediacodec.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, p1 p1Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.e(byteBuffer);
        if (this.L0 != null && (i11 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(lVar)).k(i10, false);
            return true;
        }
        if (z10) {
            if (lVar != null) {
                lVar.k(i10, false);
            }
            this.B0.f24239f += i12;
            this.I0.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.I0.c(byteBuffer, j12, i12)) {
                return false;
            }
            if (lVar != null) {
                lVar.k(i10, false);
            }
            this.B0.f24238e += i12;
            return true;
        } catch (AudioSink.InitializationException e10) {
            throw i(e10, e10.format, e10.isRecoverable, 5001);
        } catch (AudioSink.WriteException e11) {
            throw i(e11, p1Var, e11.isRecoverable, 5002);
        }
    }

    @Override
    protected com.google.android.exoplayer2.decoder.g B(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, p1 p1Var2) {
        com.google.android.exoplayer2.decoder.g gVarE = mVar.e(p1Var, p1Var2);
        int i10 = gVarE.f24252e;
        if (b1(mVar, p1Var2) > this.J0) {
            i10 |= 64;
        }
        int i11 = i10;
        return new com.google.android.exoplayer2.decoder.g(mVar.f24759a, p1Var, p1Var2, i11 != 0 ? 0 : gVarE.f24251d, i11);
    }

    @Override
    protected void F0() throws ExoPlaybackException {
        try {
            this.I0.playToEndOfStream();
        } catch (AudioSink.WriteException e10) {
            throw i(e10, e10.format, e10.isRecoverable, 5002);
        }
    }

    @Override
    protected boolean R0(p1 p1Var) {
        return this.I0.a(p1Var);
    }

    @Override
    protected int S0(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var) {
        boolean z10;
        if (!com.google.android.exoplayer2.util.w.o(p1Var.f24901l)) {
            return z2.a(0);
        }
        int i10 = p0.f26854a >= 21 ? 32 : 0;
        boolean z11 = true;
        boolean z12 = p1Var.E != 0;
        boolean zT0 = MediaCodecRenderer.T0(p1Var);
        int i11 = 8;
        if (zT0 && this.I0.a(p1Var) && (!z12 || MediaCodecUtil.v() != null)) {
            return z2.b(4, 8, i10);
        }
        if (MimeTypes.AUDIO_RAW.equals(p1Var.f24901l) && !this.I0.a(p1Var)) {
            return z2.a(1);
        }
        if (!this.I0.a(p0.d0(2, p1Var.f24914y, p1Var.f24915z))) {
            return z2.a(1);
        }
        List listD1 = d1(oVar, p1Var, false, this.I0);
        if (listD1.isEmpty()) {
            return z2.a(1);
        }
        if (!zT0) {
            return z2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.m mVar = (com.google.android.exoplayer2.mediacodec.m) listD1.get(0);
        boolean zM = mVar.m(p1Var);
        if (!zM) {
            int i12 = 1;
            while (true) {
                if (i12 >= listD1.size()) {
                    z10 = true;
                    z11 = zM;
                    break;
                }
                com.google.android.exoplayer2.mediacodec.m mVar2 = (com.google.android.exoplayer2.mediacodec.m) listD1.get(i12);
                if (mVar2.m(p1Var)) {
                    z10 = false;
                    mVar = mVar2;
                    break;
                }
                i12++;
            }
        } else {
            z10 = true;
            z11 = zM;
            break;
        }
        int i13 = z11 ? 4 : 3;
        if (z11 && mVar.p(p1Var)) {
            i11 = 16;
        }
        return z2.c(i13, i11, i10, mVar.f24766h ? 64 : 0, z10 ? 128 : 0);
    }

    @Override
    protected float a0(float f10, p1 p1Var, p1[] p1VarArr) {
        int iMax = -1;
        for (p1 p1Var2 : p1VarArr) {
            int i10 = p1Var2.f24915z;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f10 * iMax;
    }

    @Override
    public void b(o2 o2Var) {
        this.I0.b(o2Var);
    }

    @Override
    protected List c0(com.google.android.exoplayer2.mediacodec.o oVar, p1 p1Var, boolean z10) {
        return MediaCodecUtil.u(d1(oVar, p1Var, z10, this.I0), p1Var);
    }

    protected int c1(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, p1[] p1VarArr) {
        int iB1 = b1(mVar, p1Var);
        if (p1VarArr.length == 1) {
            return iB1;
        }
        for (p1 p1Var2 : p1VarArr) {
            if (mVar.e(p1Var, p1Var2).f24251d != 0) {
                iB1 = Math.max(iB1, b1(mVar, p1Var2));
            }
        }
        return iB1;
    }

    @Override
    protected com.google.android.exoplayer2.mediacodec.l.a e0(com.google.android.exoplayer2.mediacodec.m mVar, p1 p1Var, MediaCrypto mediaCrypto, float f10) {
        this.J0 = c1(mVar, p1Var, n());
        this.K0 = Z0(mVar.f24759a);
        MediaFormat mediaFormatE1 = e1(p1Var, mVar.f24761c, this.J0, f10);
        this.L0 = (!MimeTypes.AUDIO_RAW.equals(mVar.f24760b) || MimeTypes.AUDIO_RAW.equals(p1Var.f24901l)) ? null : p1Var;
        return com.google.android.exoplayer2.mediacodec.l.a.a(mVar, mediaFormatE1, p1Var, mediaCrypto);
    }

    protected MediaFormat e1(p1 p1Var, String str, int i10, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", p1Var.f24914y);
        mediaFormat.setInteger("sample-rate", p1Var.f24915z);
        com.google.android.exoplayer2.util.v.e(mediaFormat, p1Var.f24903n);
        com.google.android.exoplayer2.util.v.d(mediaFormat, "max-input-size", i10);
        int i11 = p0.f26854a;
        if (i11 >= 23) {
            mediaFormat.setInteger(TrackingKey.PRIORITY, 0);
            if (f10 != -1.0f && !a1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(p1Var.f24901l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.I0.i(p0.d0(4, p1Var.f24914y, p1Var.f24915z)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    protected void f1() {
        this.O0 = true;
    }

    @Override
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override
    public o2 getPlaybackParameters() {
        return this.I0.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        if (getState() == 2) {
            g1();
        }
        return this.M0;
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 == 2) {
            this.I0.setVolume(((Float) obj).floatValue());
        }
        if (i10 == 3) {
            this.I0.f((e) obj);
            return;
        }
        if (i10 == 6) {
            this.I0.k((u) obj);
            return;
        }
        switch (i10) {
            case 9:
                this.I0.e(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.I0.setAudioSessionId(((Integer) obj).intValue());
                break;
            case 11:
                this.R0 = (y2.a) obj;
                break;
            default:
                super.handleMessage(i10, obj);
                break;
        }
    }

    @Override
    public boolean isEnded() {
        return super.isEnded() && this.I0.isEnded();
    }

    @Override
    public boolean isReady() {
        return this.I0.hasPendingData() || super.isReady();
    }

    @Override
    protected void p() {
        this.P0 = true;
        try {
            this.I0.flush();
            try {
                super.p();
            } finally {
                this.H0.o(this.B0);
            }
        } catch (Throwable th2) {
            try {
                super.p();
                throw th2;
            } finally {
                this.H0.o(this.B0);
            }
        }
    }

    @Override
    protected void q(boolean z10, boolean z11) {
        super.q(z10, z11);
        this.H0.p(this.B0);
        if (j().f24164a) {
            this.I0.d();
        } else {
            this.I0.disableTunneling();
        }
        this.I0.g(m());
    }

    @Override
    protected void r(long j10, boolean z10) throws ExoPlaybackException {
        super.r(j10, z10);
        if (this.Q0) {
            this.I0.j();
        } else {
            this.I0.flush();
        }
        this.M0 = j10;
        this.N0 = true;
        this.O0 = true;
    }

    @Override
    protected void r0(Exception exc) {
        com.google.android.exoplayer2.util.s.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.H0.k(exc);
    }

    @Override
    protected void s() {
        try {
            super.s();
        } finally {
            if (this.P0) {
                this.P0 = false;
                this.I0.reset();
            }
        }
    }

    @Override
    protected void s0(String str, com.google.android.exoplayer2.mediacodec.l.a aVar, long j10, long j11) {
        this.H0.m(str, j10, j11);
    }

    @Override
    protected void t() {
        super.t();
        this.I0.play();
    }

    @Override
    protected void t0(String str) {
        this.H0.n(str);
    }

    @Override
    protected void u() {
        g1();
        this.I0.pause();
        super.u();
    }

    @Override
    protected com.google.android.exoplayer2.decoder.g u0(q1 q1Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.g gVarU0 = super.u0(q1Var);
        this.H0.q(q1Var.f24962b, gVarU0);
        return gVarU0;
    }

    @Override
    protected void v0(p1 p1Var, MediaFormat mediaFormat) throws ExoPlaybackException {
        int iC0;
        int i10;
        p1 p1Var2 = this.L0;
        int[] iArr = null;
        if (p1Var2 != null) {
            p1Var = p1Var2;
        } else if (X() != null) {
            if (MimeTypes.AUDIO_RAW.equals(p1Var.f24901l)) {
                iC0 = p1Var.A;
            } else if (p0.f26854a < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iC0 = mediaFormat.containsKey("v-bits-per-sample") ? p0.c0(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iC0 = mediaFormat.getInteger("pcm-encoding");
            }
            p1 p1VarE = new p1.b().e0(MimeTypes.AUDIO_RAW).Y(iC0).N(p1Var.B).O(p1Var.C).H(mediaFormat.getInteger("channel-count")).f0(mediaFormat.getInteger("sample-rate")).E();
            if (this.K0 && p1VarE.f24914y == 6 && (i10 = p1Var.f24914y) < 6) {
                iArr = new int[i10];
                for (int i11 = 0; i11 < p1Var.f24914y; i11++) {
                    iArr[i11] = i11;
                }
            }
            p1Var = p1VarE;
        }
        try {
            this.I0.l(p1Var, 0, iArr);
        } catch (AudioSink.ConfigurationException e10) {
            throw g(e10, e10.format, 5001);
        }
    }

    @Override
    protected void x0() {
        super.x0();
        this.I0.handleDiscontinuity();
    }

    @Override
    protected void y0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.N0 || decoderInputBuffer.g()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f24204e - this.M0) > 500000) {
            this.M0 = decoderInputBuffer.f24204e;
        }
        this.N0 = false;
    }

    @Override
    public com.google.android.exoplayer2.util.u getMediaClock() {
        return this;
    }
}
