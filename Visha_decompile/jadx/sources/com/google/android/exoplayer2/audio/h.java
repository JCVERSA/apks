package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.s;
import com.google.android.exoplayer2.w;
import com.google.common.collect.ImmutableList;
import defpackage.blb;
import defpackage.ks8;
import defpackage.lu1;
import defpackage.nd6;
import defpackage.o44;
import defpackage.op5;
import defpackage.q30;
import defpackage.qp6;
import defpackage.wf6;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

public class h extends MediaCodecRenderer implements nd6 {
    public final Context H0;
    public final com.google.android.exoplayer2.audio.b.a I0;
    public final AudioSink J0;
    public int K0;
    public boolean L0;
    public com.google.android.exoplayer2.k M0;
    public long N0;
    public boolean O0;
    public boolean P0;
    public boolean Q0;
    public boolean R0;
    public w.a S0;

    public final class b implements AudioSink.a {
        public b() {
        }

        @Override
        public void onAudioSinkError(Exception exc) {
            op5.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            h.this.I0.l(exc);
        }

        @Override
        public void onOffloadBufferEmptying() {
            if (h.this.S0 != null) {
                h.this.S0.onWakeup();
            }
        }

        @Override
        public void onOffloadBufferFull() {
            if (h.this.S0 != null) {
                h.this.S0.onSleep();
            }
        }

        @Override
        public void onPositionAdvancing(long j) {
            h.this.I0.B(j);
        }

        @Override
        public void onPositionDiscontinuity() {
            h.this.d1();
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z) {
            h.this.I0.C(z);
        }

        @Override
        public void onUnderrun(int i, long j, long j2) {
            h.this.I0.D(i, j, j2);
        }
    }

    public h(Context context, com.google.android.exoplayer2.mediacodec.c.b bVar, com.google.android.exoplayer2.mediacodec.e eVar, boolean z, Handler handler, com.google.android.exoplayer2.audio.b bVar2, AudioSink audioSink) {
        super(1, bVar, eVar, z, 44100.0f);
        this.H0 = context.getApplicationContext();
        this.J0 = audioSink;
        this.I0 = new com.google.android.exoplayer2.audio.b.a(handler, bVar2);
        audioSink.f(new b());
    }

    public static boolean X0(String str) {
        if (blb.a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(blb.c)) {
            String str2 = blb.b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    public static boolean Y0() {
        if (blb.a == 23) {
            String str = blb.d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int Z0(com.google.android.exoplayer2.mediacodec.d dVar, com.google.android.exoplayer2.k kVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(dVar.a) || (i = blb.a) >= 24 || (i == 23 && blb.p0(this.H0))) {
            return kVar.n;
        }
        return -1;
    }

    public static List b1(com.google.android.exoplayer2.mediacodec.e eVar, com.google.android.exoplayer2.k kVar, boolean z, AudioSink audioSink) {
        com.google.android.exoplayer2.mediacodec.d dVarV;
        String str = kVar.m;
        if (str == null) {
            return ImmutableList.of();
        }
        if (audioSink.a(kVar) && (dVarV = MediaCodecUtil.v()) != null) {
            return ImmutableList.of(dVarV);
        }
        List decoderInfos = eVar.getDecoderInfos(str, z, false);
        String strM = MediaCodecUtil.m(kVar);
        return strM == null ? ImmutableList.copyOf((Collection) decoderInfos) : ImmutableList.builder().l(decoderInfos).l(eVar.getDecoderInfos(strM, z, false)).e();
    }

    @Override
    public void D0() throws ExoPlaybackException {
        try {
            this.J0.playToEndOfStream();
        } catch (AudioSink.WriteException e) {
            throw g(e, e.format, e.isRecoverable, 5002);
        }
    }

    @Override
    public boolean P0(com.google.android.exoplayer2.k kVar) {
        return this.J0.a(kVar);
    }

    @Override
    public int Q0(com.google.android.exoplayer2.mediacodec.e eVar, com.google.android.exoplayer2.k kVar) {
        boolean z;
        if (!qp6.h(kVar.m)) {
            return ks8.create(0);
        }
        int i = blb.a >= 21 ? 32 : 0;
        boolean z2 = true;
        boolean z3 = kVar.F != 0;
        boolean zR0 = MediaCodecRenderer.R0(kVar);
        int i2 = 8;
        if (zR0 && this.J0.a(kVar) && (!z3 || MediaCodecUtil.v() != null)) {
            return ks8.create(4, 8, i);
        }
        if ((!"audio/raw".equals(kVar.m) || this.J0.a(kVar)) && this.J0.a(blb.W(2, kVar.z, kVar.A))) {
            List listB1 = b1(eVar, kVar, false, this.J0);
            if (listB1.isEmpty()) {
                return ks8.create(1);
            }
            if (!zR0) {
                return ks8.create(2);
            }
            com.google.android.exoplayer2.mediacodec.d dVar = (com.google.android.exoplayer2.mediacodec.d) listB1.get(0);
            boolean zM = dVar.m(kVar);
            if (!zM) {
                int i3 = 1;
                while (true) {
                    if (i3 >= listB1.size()) {
                        z = true;
                        z2 = zM;
                        break;
                    }
                    com.google.android.exoplayer2.mediacodec.d dVar2 = (com.google.android.exoplayer2.mediacodec.d) listB1.get(i3);
                    if (dVar2.m(kVar)) {
                        z = false;
                        dVar = dVar2;
                        break;
                    }
                    i3++;
                }
            } else {
                z = true;
                z2 = zM;
                break;
            }
            int i4 = z2 ? 4 : 3;
            if (z2 && dVar.p(kVar)) {
                i2 = 16;
            }
            return ks8.create(i4, i2, i, dVar.h ? 64 : 0, z ? 128 : 0);
        }
        return ks8.create(1);
    }

    @Override
    public float Y(float f, com.google.android.exoplayer2.k kVar, com.google.android.exoplayer2.k[] kVarArr) {
        int iMax = -1;
        for (com.google.android.exoplayer2.k kVar2 : kVarArr) {
            int i = kVar2.A;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f;
    }

    @Override
    public List a0(com.google.android.exoplayer2.mediacodec.e eVar, com.google.android.exoplayer2.k kVar, boolean z) {
        return MediaCodecUtil.u(b1(eVar, kVar, z, this.J0), kVar);
    }

    public int a1(com.google.android.exoplayer2.mediacodec.d dVar, com.google.android.exoplayer2.k kVar, com.google.android.exoplayer2.k[] kVarArr) {
        int iZ0 = Z0(dVar, kVar);
        if (kVarArr.length == 1) {
            return iZ0;
        }
        for (com.google.android.exoplayer2.k kVar2 : kVarArr) {
            if (dVar.e(kVar, kVar2).d != 0) {
                iZ0 = Math.max(iZ0, Z0(dVar, kVar2));
            }
        }
        return iZ0;
    }

    @Override
    public void b(s sVar) {
        this.J0.b(sVar);
    }

    @Override
    public com.google.android.exoplayer2.mediacodec.c.a c0(com.google.android.exoplayer2.mediacodec.d dVar, com.google.android.exoplayer2.k kVar, MediaCrypto mediaCrypto, float f) {
        this.K0 = a1(dVar, kVar, l());
        this.L0 = X0(dVar.a);
        MediaFormat mediaFormatC1 = c1(kVar, dVar.c, this.K0, f);
        this.M0 = (!"audio/raw".equals(dVar.b) || "audio/raw".equals(kVar.m)) ? null : kVar;
        return com.google.android.exoplayer2.mediacodec.c.a.a(dVar, mediaFormatC1, kVar, mediaCrypto);
    }

    public MediaFormat c1(com.google.android.exoplayer2.k kVar, String str, int i, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT, kVar.z);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE, kVar.A);
        wf6.e(mediaFormat, kVar.o);
        wf6.d(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, i);
        int i2 = blb.a;
        if (i2 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !Y0()) {
                mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
            }
        }
        if (i2 <= 28 && MimeTypes.AUDIO_AC4.equals(kVar.m)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i2 >= 24 && this.J0.g(blb.W(4, kVar.z, kVar.A)) == 2) {
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING, 4);
        }
        if (i2 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    public void d1() {
        this.P0 = true;
    }

    public final void e1() {
        long currentPositionUs = this.J0.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.P0) {
                currentPositionUs = Math.max(this.N0, currentPositionUs);
            }
            this.N0 = currentPositionUs;
            this.P0 = false;
        }
    }

    @Override
    public nd6 getMediaClock() {
        return this;
    }

    @Override
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override
    public s getPlaybackParameters() {
        return this.J0.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        if (getState() == 2) {
            e1();
        }
        return this.N0;
    }

    @Override
    public void handleMessage(int i, Object obj) {
        if (i == 2) {
            this.J0.setVolume(((Float) obj).floatValue());
        }
        if (i == 3) {
            this.J0.c((com.google.android.exoplayer2.audio.a) obj);
            return;
        }
        if (i == 6) {
            this.J0.e((q30) obj);
            return;
        }
        switch (i) {
            case 9:
                this.J0.setSkipSilenceEnabled(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.J0.setAudioSessionId(((Integer) obj).intValue());
                break;
            case 11:
                this.S0 = (w.a) obj;
                break;
            default:
                super.handleMessage(i, obj);
                break;
        }
    }

    @Override
    public boolean isEnded() {
        return super.isEnded() && this.J0.isEnded();
    }

    @Override
    public boolean isReady() {
        return this.J0.hasPendingData() || super.isReady();
    }

    @Override
    public void n() {
        this.Q0 = true;
        try {
            this.J0.flush();
            try {
                super.n();
            } finally {
                this.I0.o(this.C0);
            }
        } catch (Throwable th) {
            try {
                super.n();
                throw th;
            } finally {
                this.I0.o(this.C0);
            }
        }
    }

    @Override
    public void o(boolean z, boolean z2) {
        super.o(z, z2);
        this.I0.p(this.C0);
        if (h().a) {
            this.J0.enableTunnelingV21();
        } else {
            this.J0.disableTunneling();
        }
        this.J0.h(k());
    }

    @Override
    public void p(long j, boolean z) throws ExoPlaybackException {
        super.p(j, z);
        if (this.R0) {
            this.J0.d();
        } else {
            this.J0.flush();
        }
        this.N0 = j;
        this.O0 = true;
        this.P0 = true;
    }

    @Override
    public void p0(Exception exc) {
        op5.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.I0.k(exc);
    }

    @Override
    public void q() {
        try {
            super.q();
        } finally {
            if (this.Q0) {
                this.Q0 = false;
                this.J0.reset();
            }
        }
    }

    @Override
    public void q0(String str, com.google.android.exoplayer2.mediacodec.c.a aVar, long j, long j2) {
        this.I0.m(str, j, j2);
    }

    @Override
    public void r() {
        super.r();
        this.J0.play();
    }

    @Override
    public void r0(String str) {
        this.I0.n(str);
    }

    @Override
    public void s() {
        e1();
        this.J0.pause();
        super.s();
    }

    @Override
    public lu1 s0(o44 o44Var) throws ExoPlaybackException {
        lu1 lu1VarS0 = super.s0(o44Var);
        this.I0.q(o44Var.b, lu1VarS0);
        return lu1VarS0;
    }

    @Override
    public void t0(com.google.android.exoplayer2.k kVar, MediaFormat mediaFormat) throws ExoPlaybackException {
        int iV;
        int i;
        com.google.android.exoplayer2.k kVar2 = this.M0;
        int[] iArr = null;
        if (kVar2 != null) {
            kVar = kVar2;
        } else if (V() != null) {
            if ("audio/raw".equals(kVar.m)) {
                iV = kVar.B;
            } else if (blb.a < 24 || !mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING)) {
                iV = mediaFormat.containsKey("v-bits-per-sample") ? blb.V(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iV = mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING);
            }
            com.google.android.exoplayer2.k kVarE = new com.google.android.exoplayer2.k.b().e0("audio/raw").Y(iV).N(kVar.C).O(kVar.D).H(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT)).f0(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE)).E();
            if (this.L0 && kVarE.z == 6 && (i = kVar.z) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < kVar.z; i2++) {
                    iArr[i2] = i2;
                }
            }
            kVar = kVarE;
        }
        try {
            this.J0.i(kVar, 0, iArr);
        } catch (AudioSink.ConfigurationException e) {
            throw f(e, e.format, 5001);
        }
    }

    @Override
    public void v0() {
        super.v0();
        this.J0.handleDiscontinuity();
    }

    @Override
    public void w0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.O0 || decoderInputBuffer.g()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f - this.N0) > 500000) {
            this.N0 = decoderInputBuffer.f;
        }
        this.O0 = false;
    }

    @Override
    public boolean y0(long j, long j2, com.google.android.exoplayer2.mediacodec.c cVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.google.android.exoplayer2.k kVar) throws ExoPlaybackException {
        zi.e(byteBuffer);
        if (this.M0 != null && (i2 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.c) zi.e(cVar)).releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            if (cVar != null) {
                cVar.releaseOutputBuffer(i, false);
            }
            this.C0.f += i3;
            this.J0.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.J0.handleBuffer(byteBuffer, j3, i3)) {
                return false;
            }
            if (cVar != null) {
                cVar.releaseOutputBuffer(i, false);
            }
            this.C0.e += i3;
            return true;
        } catch (AudioSink.InitializationException e) {
            throw g(e, e.format, e.isRecoverable, 5001);
        } catch (AudioSink.WriteException e2) {
            throw g(e2, kVar, e2.isRecoverable, 5002);
        }
    }

    @Override
    public lu1 z(com.google.android.exoplayer2.mediacodec.d dVar, com.google.android.exoplayer2.k kVar, com.google.android.exoplayer2.k kVar2) {
        lu1 lu1VarE = dVar.e(kVar, kVar2);
        int i = lu1VarE.e;
        if (Z0(dVar, kVar2) > this.K0) {
            i |= 64;
        }
        int i2 = i;
        return new lu1(dVar.a, kVar, kVar2, i2 != 0 ? 0 : lu1VarE.d, i2);
    }
}
