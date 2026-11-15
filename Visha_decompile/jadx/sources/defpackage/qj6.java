package defpackage;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.b0;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.t;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.common.collect.ImmutableList;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;

public final class qj6 implements nb, d88.a {
    public boolean A;
    public final Context a;
    public final d88 b;
    public final PlaybackSession c;
    public String i;
    public PlaybackMetrics.Builder j;
    public int k;
    public PlaybackException n;
    public b o;
    public b p;
    public b q;
    public k r;
    public k s;
    public k t;
    public boolean u;
    public int v;
    public boolean w;
    public int x;
    public int y;
    public int z;
    public final a0.d e = new a0.d();
    public final a0.b f = new a0.b();
    public final HashMap h = new HashMap();
    public final HashMap g = new HashMap();
    public final long d = SystemClock.elapsedRealtime();
    public int l = 0;
    public int m = 0;

    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static final class b {
        public final k a;
        public final int b;
        public final String c;

        public b(k kVar, int i, String str) {
            this.a = kVar;
            this.b = i;
            this.c = str;
        }
    }

    public qj6(Context context, PlaybackSession playbackSession) {
        this.a = context.getApplicationContext();
        this.c = playbackSession;
        f32 f32Var = new f32();
        this.b = f32Var;
        f32Var.f(this);
    }

    public static DrmInitData A0(ImmutableList immutableList) {
        DrmInitData drmInitData;
        dgb it = immutableList.iterator();
        while (it.hasNext()) {
            b0.a aVar = (b0.a) it.next();
            for (int i = 0; i < aVar.b; i++) {
                if (aVar.e(i) && (drmInitData = aVar.b(i).p) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    public static int B0(DrmInitData drmInitData) {
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            UUID uuid = drmInitData.get(i).uuid;
            if (uuid.equals(to0.d)) {
                return 3;
            }
            if (uuid.equals(to0.e)) {
                return 2;
            }
            if (uuid.equals(to0.c)) {
                return 6;
            }
        }
        return 1;
    }

    public static a C0(PlaybackException playbackException, Context context, boolean z) {
        int i;
        boolean z2;
        if (playbackException.errorCode == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z2 = exoPlaybackException.type == 1;
            i = exoPlaybackException.rendererFormatSupport;
        } else {
            i = 0;
            z2 = false;
        }
        Throwable th = (Throwable) zi.e(playbackException.getCause());
        if (!(th instanceof IOException)) {
            if (z2 && (i == 0 || i == 1)) {
                return new a(35, 0);
            }
            if (z2 && i == 3) {
                return new a(15, 0);
            }
            if (z2 && i == 2) {
                return new a(23, 0);
            }
            if (th instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new a(13, blb.P(((MediaCodecRenderer.DecoderInitializationException) th).diagnosticInfo));
            }
            if (th instanceof MediaCodecDecoderException) {
                return new a(14, blb.P(((MediaCodecDecoderException) th).diagnosticInfo));
            }
            if (th instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th).audioTrackState);
            }
            if (th instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th).errorCode);
            }
            if (blb.a < 16 || !(th instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
            return new a(z0(errorCode), errorCode);
        }
        if (th instanceof HttpDataSource$InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource$InvalidResponseCodeException) th).responseCode);
        }
        if ((th instanceof HttpDataSource$InvalidContentTypeException) || (th instanceof ParserException)) {
            return new a(z ? 10 : 11, 0);
        }
        boolean z3 = th instanceof HttpDataSource$HttpDataSourceException;
        if (z3 || (th instanceof UdpDataSource.UdpDataSourceException)) {
            if (yz6.d(context).f() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return (z3 && ((HttpDataSource$HttpDataSourceException) th).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th instanceof DrmSession.DrmSessionException)) {
            if (!(th instanceof FileDataSource.FileDataSourceException) || !(th.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) zi.e(th.getCause())).getCause();
            return (blb.a >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th2 = (Throwable) zi.e(th.getCause());
        int i2 = blb.a;
        if (i2 >= 21 && (th2 instanceof MediaDrm.MediaDrmStateException)) {
            int iP = blb.P(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
            return new a(z0(iP), iP);
        }
        if (i2 >= 23 && (th2 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (i2 >= 18 && (th2 instanceof NotProvisionedException)) {
            return new a(24, 0);
        }
        if (i2 >= 18 && (th2 instanceof DeniedByServerException)) {
            return new a(29, 0);
        }
        if (th2 instanceof UnsupportedDrmException) {
            return new a(23, 0);
        }
        return th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new a(28, 0) : new a(30, 0);
    }

    public static Pair D0(String str) {
        String[] strArrF0 = blb.F0(str, "-");
        return Pair.create(strArrF0[0], strArrF0.length >= 2 ? strArrF0[1] : null);
    }

    public static int F0(Context context) {
        switch (yz6.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    public static int G0(n nVar) {
        n.h hVar = nVar.c;
        if (hVar == null) {
            return 0;
        }
        int iI0 = blb.i0(hVar.a, hVar.b);
        if (iI0 == 0) {
            return 3;
        }
        if (iI0 != 1) {
            return iI0 != 2 ? 1 : 4;
        }
        return 5;
    }

    public static int H0(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 1 : 4;
        }
        return 3;
    }

    public static qj6 x0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = li6.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new qj6(context, mediaMetricsManagerA.createPlaybackSession());
    }

    public static int z0(int i) {
        switch (blb.O(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    public LogSessionId E0() {
        return this.c.getSessionId();
    }

    @Override
    public void I(t tVar, nb.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        I0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        O0(tVar, bVar);
        K0(jElapsedRealtime);
        M0(tVar, bVar, jElapsedRealtime);
        J0(jElapsedRealtime);
        L0(tVar, bVar, jElapsedRealtime);
        if (bVar.a(AnalyticsListener.EVENT_PLAYER_RELEASED)) {
            this.b.c(bVar.c(AnalyticsListener.EVENT_PLAYER_RELEASED));
        }
    }

    public final void I0(nb.b bVar) {
        for (int i = 0; i < bVar.d(); i++) {
            int iB = bVar.b(i);
            nb.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.b.a(aVarC);
            } else if (iB == 11) {
                this.b.b(aVarC, this.k);
            } else {
                this.b.d(aVarC);
            }
        }
    }

    public final void J0(long j) {
        int iF0 = F0(this.a);
        if (iF0 != this.m) {
            this.m = iF0;
            this.c.reportNetworkEvent(bj6.a().setNetworkType(iF0).setTimeSinceCreatedMillis(j - this.d).build());
        }
    }

    public final void K0(long j) {
        PlaybackException playbackException = this.n;
        if (playbackException == null) {
            return;
        }
        a aVarC0 = C0(playbackException, this.a, this.v == 4);
        this.c.reportPlaybackErrorEvent(ej6.a().setTimeSinceCreatedMillis(j - this.d).setErrorCode(aVarC0.a).setSubErrorCode(aVarC0.b).setException(playbackException).build());
        this.A = true;
        this.n = null;
    }

    public final void L0(t tVar, nb.b bVar, long j) {
        if (tVar.getPlaybackState() != 2) {
            this.u = false;
        }
        if (tVar.getPlayerError() == null) {
            this.w = false;
        } else if (bVar.a(10)) {
            this.w = true;
        }
        int iT0 = T0(tVar);
        if (this.l != iT0) {
            this.l = iT0;
            this.A = true;
            this.c.reportPlaybackStateEvent(fj6.a().setState(this.l).setTimeSinceCreatedMillis(j - this.d).build());
        }
    }

    public final void M0(t tVar, nb.b bVar, long j) {
        if (bVar.a(2)) {
            b0 currentTracks = tVar.getCurrentTracks();
            boolean zC = currentTracks.c(2);
            boolean zC2 = currentTracks.c(1);
            boolean zC3 = currentTracks.c(3);
            if (zC || zC2 || zC3) {
                if (!zC) {
                    R0(j, null, 0);
                }
                if (!zC2) {
                    N0(j, null, 0);
                }
                if (!zC3) {
                    P0(j, null, 0);
                }
            }
        }
        if (w0(this.o)) {
            b bVar2 = this.o;
            k kVar = bVar2.a;
            if (kVar.s != -1) {
                R0(j, kVar, bVar2.b);
                this.o = null;
            }
        }
        if (w0(this.p)) {
            b bVar3 = this.p;
            N0(j, bVar3.a, bVar3.b);
            this.p = null;
        }
        if (w0(this.q)) {
            b bVar4 = this.q;
            P0(j, bVar4.a, bVar4.b);
            this.q = null;
        }
    }

    public final void N0(long j, k kVar, int i) {
        if (blb.c(this.s, kVar)) {
            return;
        }
        if (this.s == null && i == 0) {
            i = 1;
        }
        this.s = kVar;
        S0(0, j, kVar, i);
    }

    @Override
    public void O(nb.a aVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z) {
        this.v = ih6Var.a;
    }

    public final void O0(t tVar, nb.b bVar) {
        DrmInitData drmInitDataA0;
        if (bVar.a(0)) {
            nb.a aVarC = bVar.c(0);
            if (this.j != null) {
                Q0(aVarC.b, aVarC.d);
            }
        }
        if (bVar.a(2) && this.j != null && (drmInitDataA0 = A0(tVar.getCurrentTracks().b())) != null) {
            bi6.a(blb.j(this.j)).setDrmType(B0(drmInitDataA0));
        }
        if (bVar.a(1011)) {
            this.z++;
        }
    }

    public final void P0(long j, k kVar, int i) {
        if (blb.c(this.t, kVar)) {
            return;
        }
        if (this.t == null && i == 0) {
            i = 1;
        }
        this.t = kVar;
        S0(2, j, kVar, i);
    }

    public final void Q0(a0 a0Var, i.b bVar) {
        int iF;
        PlaybackMetrics.Builder builder = this.j;
        if (bVar == null || (iF = a0Var.f(bVar.a)) == -1) {
            return;
        }
        a0Var.j(iF, this.f);
        a0Var.r(this.f.d, this.e);
        builder.setStreamType(G0(this.e.d));
        a0.d dVar = this.e;
        if (dVar.o != C.TIME_UNSET && !dVar.m && !dVar.j && !dVar.i()) {
            builder.setMediaDurationMillis(this.e.g());
        }
        builder.setPlaybackType(this.e.i() ? 2 : 1);
        this.A = true;
    }

    public final void R0(long j, k kVar, int i) {
        if (blb.c(this.r, kVar)) {
            return;
        }
        if (this.r == null && i == 0) {
            i = 1;
        }
        this.r = kVar;
        S0(1, j, kVar, i);
    }

    public final void S0(int i, long j, k kVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = aj6.a(i).setTimeSinceCreatedMillis(j - this.d);
        if (kVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(H0(i2));
            String str = kVar.l;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = kVar.m;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = kVar.j;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = kVar.i;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = kVar.r;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = kVar.s;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = kVar.z;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = kVar.A;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = kVar.d;
            if (str4 != null) {
                Pair pairD0 = D0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairD0.first);
                Object obj = pairD0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = kVar.t;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    public final int T0(t tVar) {
        int playbackState = tVar.getPlaybackState();
        if (this.u) {
            return 5;
        }
        if (this.w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i = this.l;
            if (i == 0 || i == 2) {
                return 2;
            }
            if (tVar.getPlayWhenReady()) {
                return tVar.getPlaybackSuppressionReason() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (tVar.getPlayWhenReady()) {
                return tVar.getPlaybackSuppressionReason() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.l == 0) {
            return this.l;
        }
        return 12;
    }

    @Override
    public void V(nb.a aVar, PlaybackException playbackException) {
        this.n = playbackException;
    }

    @Override
    public void W(nb.a aVar, ju1 ju1Var) {
        this.x += ju1Var.g;
        this.y += ju1Var.e;
    }

    @Override
    public void a0(nb.a aVar, t.e eVar, t.e eVar2, int i) {
        if (i == 1) {
            this.u = true;
        }
        this.k = i;
    }

    @Override
    public void b0(nb.a aVar, String str) {
    }

    @Override
    public void d0(nb.a aVar, String str, boolean z) {
        i.b bVar = aVar.d;
        if ((bVar == null || !bVar.b()) && str.equals(this.i)) {
            y0();
        }
        this.g.remove(str);
        this.h.remove(str);
    }

    @Override
    public void f(nb.a aVar, String str) {
        i.b bVar = aVar.d;
        if (bVar == null || !bVar.b()) {
            y0();
            this.i = str;
            this.j = dj6.a().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            Q0(aVar.b, aVar.d);
        }
    }

    @Override
    public void g(nb.a aVar, f7c f7cVar) {
        b bVar = this.o;
        if (bVar != null) {
            k kVar = bVar.a;
            if (kVar.s == -1) {
                this.o = new b(kVar.b().j0(f7cVar.b).Q(f7cVar.c).E(), bVar.b, bVar.c);
            }
        }
    }

    @Override
    public void i(nb.a aVar, String str, String str2) {
    }

    @Override
    public void o0(nb.a aVar, int i, long j, long j2) {
        i.b bVar = aVar.d;
        if (bVar != null) {
            String strE = this.b.e(aVar.b, (i.b) zi.e(bVar));
            Long l = (Long) this.h.get(strE);
            Long l2 = (Long) this.g.get(strE);
            this.h.put(strE, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.g.put(strE, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    @Override
    public void p0(nb.a aVar, ih6 ih6Var) {
        if (aVar.d == null) {
            return;
        }
        b bVar = new b((k) zi.e(ih6Var.c), ih6Var.d, this.b.e(aVar.b, (i.b) zi.e(aVar.d)));
        int i = ih6Var.b;
        if (i != 0) {
            if (i == 1) {
                this.p = bVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.q = bVar;
                return;
            }
        }
        this.o = bVar;
    }

    public final boolean w0(b bVar) {
        return bVar != null && bVar.c.equals(this.b.getActiveSessionId());
    }

    public final void y0() {
        PlaybackMetrics.Builder builder = this.j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.z);
            this.j.setVideoFramesDropped(this.x);
            this.j.setVideoFramesPlayed(this.y);
            Long l = (Long) this.g.get(this.i);
            this.j.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.h.get(this.i);
            this.j.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.j.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.c.reportPlaybackMetrics(this.j.build());
        }
        this.j = null;
        this.i = null;
        this.z = 0;
        this.x = 0;
        this.y = 0;
        this.r = null;
        this.s = null;
        this.t = null;
        this.A = false;
    }
}
