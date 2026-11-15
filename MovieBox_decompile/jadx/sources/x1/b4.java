package x1;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

public final class b4 implements c, c4.a {
    private int A;
    private boolean B;

    private final Context f74825a;

    private final c4 f74827c;

    private final PlaybackSession f74828d;

    private String f74834j;

    private PlaybackMetrics.Builder f74835k;

    private int f74836l;

    private PlaybackException f74839o;

    private b f74840p;

    private b f74841q;

    private b f74842r;

    private androidx.media3.common.r f74843s;

    private androidx.media3.common.r f74844t;

    private androidx.media3.common.r f74845u;

    private boolean f74846v;

    private int f74847w;

    private boolean f74848x;

    private int f74849y;

    private int f74850z;

    private final Executor f74826b = androidx.media3.common.util.c.a();

    private final androidx.media3.common.e0.c f74830f = new androidx.media3.common.e0.c();

    private final androidx.media3.common.e0.b f74831g = new androidx.media3.common.e0.b();

    private final HashMap f74833i = new HashMap();

    private final HashMap f74832h = new HashMap();

    private final long f74829e = SystemClock.elapsedRealtime();

    private int f74837m = 0;

    private int f74838n = 0;

    private static final class a {

        public final int f74851a;

        public final int f74852b;

        public a(int i10, int i11) {
            this.f74851a = i10;
            this.f74852b = i11;
        }
    }

    private static final class b {

        public final androidx.media3.common.r f74853a;

        public final int f74854b;

        public final String f74855c;

        public b(androidx.media3.common.r rVar, int i10, String str) {
            this.f74853a = rVar;
            this.f74854b = i10;
            this.f74855c = str;
        }
    }

    private b4(Context context, PlaybackSession playbackSession) {
        this.f74825a = context.getApplicationContext();
        this.f74828d = playbackSession;
        u1 u1Var = new u1();
        this.f74827c = u1Var;
        u1Var.e(this);
    }

    private boolean D0(b bVar) {
        return bVar != null && bVar.f74855c.equals(this.f74827c.a());
    }

    public static b4 E0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = r3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new b4(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void F0() {
        PlaybackMetrics.Builder builder = this.f74835k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.f74835k.setVideoFramesDropped(this.f74849y);
            this.f74835k.setVideoFramesPlayed(this.f74850z);
            Long l10 = (Long) this.f74832h.get(this.f74834j);
            this.f74835k.setNetworkTransferDurationMillis(l10 == null ? 0L : l10.longValue());
            Long l11 = (Long) this.f74833i.get(this.f74834j);
            this.f74835k.setNetworkBytesRead(l11 == null ? 0L : l11.longValue());
            this.f74835k.setStreamSource((l11 == null || l11.longValue() <= 0) ? 0 : 1);
            final PlaybackMetrics playbackMetricsBuild = this.f74835k.build();
            this.f74826b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f75055a.P0(playbackMetricsBuild);
                }
            });
        }
        this.f74835k = null;
        this.f74834j = null;
        this.A = 0;
        this.f74849y = 0;
        this.f74850z = 0;
        this.f74843s = null;
        this.f74844t = null;
        this.f74845u = null;
        this.B = false;
    }

    private static int G0(int i10) {
        switch (androidx.media3.common.util.a1.b0(i10)) {
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

    private static DrmInitData H0(ImmutableList immutableList) {
        DrmInitData drmInitData;
        r4 it = immutableList.iterator();
        while (it.hasNext()) {
            androidx.media3.common.i0.a aVar = (androidx.media3.common.i0.a) it.next();
            for (int i10 = 0; i10 < aVar.f9779a; i10++) {
                if (aVar.h(i10) && (drmInitData = aVar.b(i10).f9853s) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int I0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            UUID uuid = drmInitData.get(i10).uuid;
            if (uuid.equals(androidx.media3.common.h.f9672d)) {
                return 3;
            }
            if (uuid.equals(androidx.media3.common.h.f9673e)) {
                return 2;
            }
            if (uuid.equals(androidx.media3.common.h.f9671c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a J0(PlaybackException playbackException, Context context, boolean z10) {
        int i10;
        boolean z11;
        if (playbackException.errorCode == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z11 = exoPlaybackException.type == 1;
            i10 = exoPlaybackException.rendererFormatSupport;
        } else {
            i10 = 0;
            z11 = false;
        }
        Throwable th2 = (Throwable) androidx.media3.common.util.a.e(playbackException.getCause());
        if (!(th2 instanceof IOException)) {
            if (z11 && (i10 == 0 || i10 == 1)) {
                return new a(35, 0);
            }
            if (z11 && i10 == 3) {
                return new a(15, 0);
            }
            if (z11 && i10 == 2) {
                return new a(23, 0);
            }
            if (th2 instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new a(13, androidx.media3.common.util.a1.c0(((MediaCodecRenderer.DecoderInitializationException) th2).diagnosticInfo));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, ((MediaCodecDecoderException) th2).errorCode);
            }
            if (th2 instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th2 instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th2).audioTrackState);
            }
            if (th2 instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th2).errorCode);
            }
            if (!(th2 instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
            return new a(G0(errorCode), errorCode);
        }
        if (th2 instanceof HttpDataSource.InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource.InvalidResponseCodeException) th2).responseCode);
        }
        if ((th2 instanceof HttpDataSource.InvalidContentTypeException) || (th2 instanceof ParserException)) {
            return new a(z10 ? 10 : 11, 0);
        }
        boolean z12 = th2 instanceof HttpDataSource.HttpDataSourceException;
        if (z12 || (th2 instanceof UdpDataSource.UdpDataSourceException)) {
            if (androidx.media3.common.util.z.e(context).g() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th2.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return (z12 && ((HttpDataSource.HttpDataSourceException) th2).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th2 instanceof DrmSession.DrmSessionException)) {
            if (!(th2 instanceof FileDataSource.FileDataSourceException) || !(th2.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) androidx.media3.common.util.a.e(th2.getCause())).getCause();
            return ((cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th3 = (Throwable) androidx.media3.common.util.a.e(th2.getCause());
        if (th3 instanceof MediaDrm.MediaDrmStateException) {
            int iC0 = androidx.media3.common.util.a1.c0(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
            return new a(G0(iC0), iC0);
        }
        if (androidx.media3.common.util.a1.f10038a >= 23 && (th3 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (th3 instanceof NotProvisionedException) {
            return new a(24, 0);
        }
        if (th3 instanceof DeniedByServerException) {
            return new a(29, 0);
        }
        if (th3 instanceof UnsupportedDrmException) {
            return new a(23, 0);
        }
        return th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new a(28, 0) : new a(30, 0);
    }

    private static Pair K0(String str) {
        String[] strArrO1 = androidx.media3.common.util.a1.o1(str, "-");
        return Pair.create(strArrO1[0], strArrO1.length >= 2 ? strArrO1[1] : null);
    }

    private static int M0(Context context) {
        switch (androidx.media3.common.util.z.e(context).g()) {
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

    private static int N0(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVar = tVar.f9899b;
        if (hVar == null) {
            return 0;
        }
        int iA0 = androidx.media3.common.util.a1.A0(hVar.f9991a, hVar.f9992b);
        if (iA0 == 0) {
            return 3;
        }
        if (iA0 != 1) {
            return iA0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private static int O0(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 1 : 4;
        }
        return 3;
    }

    public void P0(PlaybackMetrics playbackMetrics) {
        this.f74828d.reportPlaybackMetrics(playbackMetrics);
    }

    public void Q0(NetworkEvent networkEvent) {
        this.f74828d.reportNetworkEvent(networkEvent);
    }

    public void R0(PlaybackErrorEvent playbackErrorEvent) {
        this.f74828d.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    public void S0(PlaybackStateEvent playbackStateEvent) {
        this.f74828d.reportPlaybackStateEvent(playbackStateEvent);
    }

    public void T0(TrackChangeEvent trackChangeEvent) {
        this.f74828d.reportTrackChangeEvent(trackChangeEvent);
    }

    private void U0(c.b bVar) {
        for (int i10 = 0; i10 < bVar.d(); i10++) {
            int iB = bVar.b(i10);
            c.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.f74827c.g(aVarC);
            } else if (iB == 11) {
                this.f74827c.c(aVarC, this.f74836l);
            } else {
                this.f74827c.f(aVarC);
            }
        }
    }

    private void V0(long j10) {
        int iM0 = M0(this.f74825a);
        if (iM0 != this.f74838n) {
            this.f74838n = iM0;
            final NetworkEvent networkEventBuild = g2.a().setNetworkType(iM0).setTimeSinceCreatedMillis(j10 - this.f74829e).build();
            this.f74826b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f75042a.Q0(networkEventBuild);
                }
            });
        }
    }

    private void W0(long j10) {
        PlaybackException playbackException = this.f74839o;
        if (playbackException == null) {
            return;
        }
        a aVarJ0 = J0(playbackException, this.f74825a, this.f74847w == 4);
        final PlaybackErrorEvent playbackErrorEventBuild = c3.a().setTimeSinceCreatedMillis(j10 - this.f74829e).setErrorCode(aVarJ0.f74851a).setSubErrorCode(aVarJ0.f74852b).setException(playbackException).build();
        this.f74826b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75049a.R0(playbackErrorEventBuild);
            }
        });
        this.B = true;
        this.f74839o = null;
    }

    private void X0(androidx.media3.common.a0 a0Var, c.b bVar, long j10) {
        if (a0Var.getPlaybackState() != 2) {
            this.f74846v = false;
        }
        if (a0Var.c() == null) {
            this.f74848x = false;
        } else if (bVar.a(10)) {
            this.f74848x = true;
        }
        int iF1 = f1(a0Var);
        if (this.f74837m != iF1) {
            this.f74837m = iF1;
            this.B = true;
            final PlaybackStateEvent playbackStateEventBuild = n3.a().setState(this.f74837m).setTimeSinceCreatedMillis(j10 - this.f74829e).build();
            this.f74826b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f74817a.S0(playbackStateEventBuild);
                }
            });
        }
    }

    private void Y0(androidx.media3.common.a0 a0Var, c.b bVar, long j10) {
        if (bVar.a(2)) {
            androidx.media3.common.i0 currentTracks = a0Var.getCurrentTracks();
            boolean zC = currentTracks.c(2);
            boolean zC2 = currentTracks.c(1);
            boolean zC3 = currentTracks.c(3);
            if (zC || zC2 || zC3) {
                if (!zC) {
                    d1(j10, null, 0);
                }
                if (!zC2) {
                    Z0(j10, null, 0);
                }
                if (!zC3) {
                    b1(j10, null, 0);
                }
            }
        }
        if (D0(this.f74840p)) {
            b bVar2 = this.f74840p;
            androidx.media3.common.r rVar = bVar2.f74853a;
            if (rVar.f9857w != -1) {
                d1(j10, rVar, bVar2.f74854b);
                this.f74840p = null;
            }
        }
        if (D0(this.f74841q)) {
            b bVar3 = this.f74841q;
            Z0(j10, bVar3.f74853a, bVar3.f74854b);
            this.f74841q = null;
        }
        if (D0(this.f74842r)) {
            b bVar4 = this.f74842r;
            b1(j10, bVar4.f74853a, bVar4.f74854b);
            this.f74842r = null;
        }
    }

    private void Z0(long j10, androidx.media3.common.r rVar, int i10) {
        if (Objects.equals(this.f74844t, rVar)) {
            return;
        }
        if (this.f74844t == null && i10 == 0) {
            i10 = 1;
        }
        this.f74844t = rVar;
        e1(0, j10, rVar, i10);
    }

    private void a1(androidx.media3.common.a0 a0Var, c.b bVar) {
        DrmInitData drmInitDataH0;
        if (bVar.a(0)) {
            c.a aVarC = bVar.c(0);
            if (this.f74835k != null) {
                c1(aVarC.f74857b, aVarC.f74859d);
            }
        }
        if (bVar.a(2) && this.f74835k != null && (drmInitDataH0 = H0(a0Var.getCurrentTracks().a())) != null) {
            m2.a(androidx.media3.common.util.a1.i(this.f74835k)).setDrmType(I0(drmInitDataH0));
        }
        if (bVar.a(1011)) {
            this.A++;
        }
    }

    private void b1(long j10, androidx.media3.common.r rVar, int i10) {
        if (Objects.equals(this.f74845u, rVar)) {
            return;
        }
        if (this.f74845u == null && i10 == 0) {
            i10 = 1;
        }
        this.f74845u = rVar;
        e1(2, j10, rVar, i10);
    }

    private void c1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        int iB;
        PlaybackMetrics.Builder builder = this.f74835k;
        if (bVar == null || (iB = e0Var.b(bVar.f12571a)) == -1) {
            return;
        }
        e0Var.f(iB, this.f74831g);
        e0Var.n(this.f74831g.f9624c, this.f74830f);
        builder.setStreamType(N0(this.f74830f.f9641c));
        androidx.media3.common.e0.c cVar = this.f74830f;
        if (cVar.f9651m != C.TIME_UNSET && !cVar.f9649k && !cVar.f9647i && !cVar.f()) {
            builder.setMediaDurationMillis(this.f74830f.d());
        }
        builder.setPlaybackType(this.f74830f.f() ? 2 : 1);
        this.B = true;
    }

    private void d1(long j10, androidx.media3.common.r rVar, int i10) {
        if (Objects.equals(this.f74843s, rVar)) {
            return;
        }
        if (this.f74843s == null && i10 == 0) {
            i10 = 1;
        }
        this.f74843s = rVar;
        e1(1, j10, rVar, i10);
    }

    private void e1(int i10, long j10, androidx.media3.common.r rVar, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = v1.a(i10).setTimeSinceCreatedMillis(j10 - this.f74829e);
        if (rVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(O0(i11));
            String str = rVar.f9848n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = rVar.f9849o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = rVar.f9845k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = rVar.f9844j;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = rVar.f9856v;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = rVar.f9857w;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = rVar.E;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = rVar.F;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = rVar.f9838d;
            if (str4 != null) {
                Pair pairK0 = K0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairK0.first);
                Object obj = pairK0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = rVar.f9858x;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        final TrackChangeEvent trackChangeEventBuild = timeSinceCreatedMillis.build();
        this.f74826b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f75035a.T0(trackChangeEventBuild);
            }
        });
    }

    private int f1(androidx.media3.common.a0 a0Var) {
        int playbackState = a0Var.getPlaybackState();
        if (this.f74846v) {
            return 5;
        }
        if (this.f74848x) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.f74837m;
            if (i10 == 0 || i10 == 2 || i10 == 12) {
                return 2;
            }
            if (a0Var.getPlayWhenReady()) {
                return a0Var.k() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (a0Var.getPlayWhenReady()) {
                return a0Var.k() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.f74837m == 0) {
            return this.f74837m;
        }
        return 12;
    }

    @Override
    public void A(c.a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
        x1.b.l0(this, aVar, rVar, kVar);
    }

    @Override
    public void B(c.a aVar, String str) {
        x1.b.d(this, aVar, str);
    }

    @Override
    public void C(c.a aVar, boolean z10) {
        x1.b.D(this, aVar, z10);
    }

    @Override
    public void D(c.a aVar, androidx.media3.exoplayer.j jVar) {
        this.f74849y += jVar.f11725g;
        this.f74850z += jVar.f11723e;
    }

    @Override
    public void E(c.a aVar) {
        x1.b.t(this, aVar);
    }

    @Override
    public void F(c.a aVar, boolean z10) {
        x1.b.C(this, aVar, z10);
    }

    @Override
    public void G(c.a aVar, PlaybackException playbackException) {
        x1.b.Q(this, aVar, playbackException);
    }

    @Override
    public void H(c.a aVar, Exception exc) {
        x1.b.a(this, aVar, exc);
    }

    @Override
    public void I(c.a aVar, int i10, int i11, int i12, float f10) {
        x1.b.m0(this, aVar, i10, i11, i12, f10);
    }

    @Override
    public void J(c.a aVar, Object obj, long j10) {
        x1.b.U(this, aVar, obj, j10);
    }

    @Override
    public void K(c.a aVar) {
        x1.b.z(this, aVar);
    }

    @Override
    public void L(c.a aVar, String str) {
        x1.b.i0(this, aVar, str);
    }

    public LogSessionId L0() {
        return this.f74828d.getSessionId();
    }

    @Override
    public void M(c.a aVar, boolean z10) {
        x1.b.I(this, aVar, z10);
    }

    @Override
    public void N(c.a aVar, AudioSink.a aVar2) {
        x1.b.k(this, aVar, aVar2);
    }

    @Override
    public void O(c.a aVar, long j10, int i10) {
        x1.b.k0(this, aVar, j10, i10);
    }

    @Override
    public void P(c.a aVar, int i10) {
        x1.b.x(this, aVar, i10);
    }

    @Override
    public void Q(c.a aVar, Exception exc) {
        x1.b.y(this, aVar, exc);
    }

    @Override
    public void R(c.a aVar, int i10) {
        x1.b.P(this, aVar, i10);
    }

    @Override
    public void S(c.a aVar, androidx.media3.exoplayer.j jVar) {
        x1.b.f(this, aVar, jVar);
    }

    @Override
    public void T(c.a aVar, boolean z10, int i10) {
        x1.b.S(this, aVar, z10, i10);
    }

    @Override
    public void U(c.a aVar, Exception exc) {
        x1.b.f0(this, aVar, exc);
    }

    @Override
    public void V(c.a aVar, androidx.media3.common.z zVar) {
        x1.b.N(this, aVar, zVar);
    }

    @Override
    public void W(c.a aVar, String str, long j10) {
        x1.b.g0(this, aVar, str, j10);
    }

    @Override
    public void X(c.a aVar, boolean z10) {
        x1.b.Y(this, aVar, z10);
    }

    @Override
    public void Y(c.a aVar, long j10) {
        x1.b.h(this, aVar, j10);
    }

    @Override
    public void Z(c.a aVar, androidx.media3.common.i0 i0Var) {
        x1.b.d0(this, aVar, i0Var);
    }

    @Override
    public void a(c.a aVar, int i10, boolean z10) {
        x1.b.s(this, aVar, i10, z10);
    }

    @Override
    public void a0(c.a aVar, String str, long j10) {
        x1.b.b(this, aVar, str, j10);
    }

    @Override
    public void b(c.a aVar, int i10) {
        x1.b.T(this, aVar, i10);
    }

    @Override
    public void b0(c.a aVar, int i10) {
        x1.b.i(this, aVar, i10);
    }

    @Override
    public void c(c.a aVar, androidx.media3.exoplayer.j jVar) {
        x1.b.e(this, aVar, jVar);
    }

    @Override
    public void c0(c.a aVar, int i10) {
        x1.b.O(this, aVar, i10);
    }

    @Override
    public void d(c.a aVar) {
        x1.b.v(this, aVar);
    }

    @Override
    public void d0(c.a aVar, int i10, int i11) {
        x1.b.a0(this, aVar, i10, i11);
    }

    @Override
    public void e(c.a aVar, f2.i iVar, f2.j jVar, int i10) {
        x1.b.H(this, aVar, iVar, jVar, i10);
    }

    @Override
    public void e0(c.a aVar, boolean z10, int i10) {
        x1.b.M(this, aVar, z10, i10);
    }

    @Override
    public void f(c.a aVar, f2.i iVar, f2.j jVar) {
        x1.b.F(this, aVar, iVar, jVar);
    }

    @Override
    public void f0(c.a aVar, androidx.media3.common.v vVar) {
        x1.b.K(this, aVar, vVar);
    }

    @Override
    public void g(androidx.media3.common.a0 a0Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        U0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a1(a0Var, bVar);
        W0(jElapsedRealtime);
        Y0(a0Var, bVar, jElapsedRealtime);
        V0(jElapsedRealtime);
        X0(a0Var, bVar, jElapsedRealtime);
        if (bVar.a(1028)) {
            this.f74827c.d(bVar.c(1028));
        }
    }

    @Override
    public void g0(c.a aVar, androidx.media3.common.m mVar) {
        x1.b.r(this, aVar, mVar);
    }

    @Override
    public void h(c.a aVar) {
        x1.b.u(this, aVar);
    }

    @Override
    public void h0(c.a aVar, androidx.media3.common.t tVar, int i10) {
        x1.b.J(this, aVar, tVar, i10);
    }

    @Override
    public void i(c.a aVar, String str, boolean z10) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f74834j)) {
            F0();
        }
        this.f74832h.remove(str);
        this.f74833i.remove(str);
    }

    @Override
    public void i0(c.a aVar, androidx.media3.common.a0.b bVar) {
        x1.b.n(this, aVar, bVar);
    }

    @Override
    public void j(c.a aVar, float f10) {
        x1.b.n0(this, aVar, f10);
    }

    @Override
    public void j0(c.a aVar, String str, long j10, long j11) {
        x1.b.h0(this, aVar, str, j10, j11);
    }

    @Override
    public void k(c.a aVar, int i10) {
        x1.b.W(this, aVar, i10);
    }

    @Override
    public void k0(c.a aVar, androidx.media3.common.h0 h0Var) {
        x1.b.c0(this, aVar, h0Var);
    }

    @Override
    public void l(c.a aVar, Exception exc) {
        x1.b.j(this, aVar, exc);
    }

    @Override
    public void l0(c.a aVar, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i10) {
        if (i10 == 1) {
            this.f74846v = true;
        }
        this.f74836l = i10;
    }

    @Override
    public void m(c.a aVar) {
        x1.b.X(this, aVar);
    }

    @Override
    public void m0(c.a aVar, f2.i iVar, f2.j jVar) {
        x1.b.G(this, aVar, iVar, jVar);
    }

    @Override
    public void n(c.a aVar, androidx.media3.exoplayer.j jVar) {
        x1.b.j0(this, aVar, jVar);
    }

    @Override
    public void n0(c.a aVar, int i10) {
        x1.b.b0(this, aVar, i10);
    }

    @Override
    public void o(c.a aVar, u1.b bVar) {
        x1.b.q(this, aVar, bVar);
    }

    @Override
    public void o0(c.a aVar, androidx.media3.common.m0 m0Var) {
        b bVar = this.f74840p;
        if (bVar != null) {
            androidx.media3.common.r rVar = bVar.f74853a;
            if (rVar.f9857w == -1) {
                this.f74840p = new b(rVar.b().B0(m0Var.f9803a).d0(m0Var.f9804b).N(), bVar.f74854b, bVar.f74855c);
            }
        }
    }

    @Override
    public void p(c.a aVar, int i10, long j10) {
        x1.b.A(this, aVar, i10, j10);
    }

    @Override
    public void p0(c.a aVar, f2.i iVar, f2.j jVar, IOException iOException, boolean z10) {
        this.f74847w = jVar.f59917a;
    }

    @Override
    public void q(c.a aVar, int i10, long j10, long j11) {
        x1.b.m(this, aVar, i10, j10, j11);
    }

    @Override
    public void q0(c.a aVar, f2.i iVar, f2.j jVar) {
        x1.b.E(this, aVar, iVar, jVar);
    }

    @Override
    public void r(c.a aVar) {
        x1.b.w(this, aVar);
    }

    @Override
    public void r0(c.a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
        x1.b.g(this, aVar, rVar, kVar);
    }

    @Override
    public void s(c.a aVar, String str) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
        if (bVar == null || !bVar.b()) {
            F0();
            this.f74834j = str;
            this.f74835k = r2.a().setPlayerName("AndroidXMedia3").setPlayerVersion("1.7.1");
            c1(aVar.f74857b, aVar.f74859d);
        }
    }

    @Override
    public void s0(c.a aVar, PlaybackException playbackException) {
        this.f74839o = playbackException;
    }

    @Override
    public void t(c.a aVar, f2.j jVar) {
        if (aVar.f74859d == null) {
            return;
        }
        b bVar = new b((androidx.media3.common.r) androidx.media3.common.util.a.e(jVar.f59919c), jVar.f59920d, this.f74827c.b(aVar.f74857b, (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(aVar.f74859d)));
        int i10 = jVar.f59918b;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f74841q = bVar;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.f74842r = bVar;
                return;
            }
        }
        this.f74840p = bVar;
    }

    @Override
    public void t0(c.a aVar) {
        x1.b.R(this, aVar);
    }

    @Override
    public void u(c.a aVar, f2.j jVar) {
        x1.b.e0(this, aVar, jVar);
    }

    @Override
    public void u0(c.a aVar, boolean z10) {
        x1.b.Z(this, aVar, z10);
    }

    @Override
    public void v0(c.a aVar, int i10, int i11, boolean z10) {
        x1.b.V(this, aVar, i10, i11, z10);
    }

    @Override
    public void w(c.a aVar, androidx.media3.common.x xVar) {
        x1.b.L(this, aVar, xVar);
    }

    @Override
    public void w0(c.a aVar, List list) {
        x1.b.p(this, aVar, list);
    }

    @Override
    public void x(c.a aVar, String str, long j10, long j11) {
        x1.b.c(this, aVar, str, j10, j11);
    }

    @Override
    public void x0(c.a aVar, int i10, long j10, long j11) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
        if (bVar != null) {
            String strB = this.f74827c.b(aVar.f74857b, (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(bVar));
            Long l10 = (Long) this.f74833i.get(strB);
            Long l11 = (Long) this.f74832h.get(strB);
            this.f74833i.put(strB, Long.valueOf((l10 == null ? 0L : l10.longValue()) + j10));
            this.f74832h.put(strB, Long.valueOf((l11 != null ? l11.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override
    public void z(c.a aVar, AudioSink.a aVar2) {
        x1.b.l(this, aVar, aVar2);
    }

    @Override
    public void v(c.a aVar, String str) {
    }

    @Override
    public void y(c.a aVar, String str, String str2) {
    }
}
