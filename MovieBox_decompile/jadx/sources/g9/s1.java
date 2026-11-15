package g9;

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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import x1.c3;
import x1.g2;
import x1.m2;
import x1.n3;
import x1.r2;
import x1.r3;
import x1.v1;

public final class s1 implements c, t1.a {
    private boolean A;

    private final Context f60876a;

    private final t1 f60877b;

    private final PlaybackSession f60878c;

    private String f60884i;

    private PlaybackMetrics.Builder f60885j;

    private int f60886k;

    private PlaybackException f60889n;

    private b f60890o;

    private b f60891p;

    private b f60892q;

    private com.google.android.exoplayer2.p1 f60893r;

    private com.google.android.exoplayer2.p1 f60894s;

    private com.google.android.exoplayer2.p1 f60895t;

    private boolean f60896u;

    private int f60897v;

    private boolean f60898w;

    private int f60899x;

    private int f60900y;

    private int f60901z;

    private final l3.d f60880e = new l3.d();

    private final l3.b f60881f = new l3.b();

    private final HashMap f60883h = new HashMap();

    private final HashMap f60882g = new HashMap();

    private final long f60879d = SystemClock.elapsedRealtime();

    private int f60887l = 0;

    private int f60888m = 0;

    private static final class a {

        public final int f60902a;

        public final int f60903b;

        public a(int i10, int i11) {
            this.f60902a = i10;
            this.f60903b = i11;
        }
    }

    private static final class b {

        public final com.google.android.exoplayer2.p1 f60904a;

        public final int f60905b;

        public final String f60906c;

        public b(com.google.android.exoplayer2.p1 p1Var, int i10, String str) {
            this.f60904a = p1Var;
            this.f60905b = i10;
            this.f60906c = str;
        }
    }

    private s1(Context context, PlaybackSession playbackSession) {
        this.f60876a = context.getApplicationContext();
        this.f60878c = playbackSession;
        r1 r1Var = new r1();
        this.f60877b = r1Var;
        r1Var.c(this);
    }

    private boolean A0(b bVar) {
        return bVar != null && bVar.f60906c.equals(this.f60877b.a());
    }

    public static s1 B0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = r3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new s1(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void C0() {
        PlaybackMetrics.Builder builder = this.f60885j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f60901z);
            this.f60885j.setVideoFramesDropped(this.f60899x);
            this.f60885j.setVideoFramesPlayed(this.f60900y);
            Long l10 = (Long) this.f60882g.get(this.f60884i);
            this.f60885j.setNetworkTransferDurationMillis(l10 == null ? 0L : l10.longValue());
            Long l11 = (Long) this.f60883h.get(this.f60884i);
            this.f60885j.setNetworkBytesRead(l11 == null ? 0L : l11.longValue());
            this.f60885j.setStreamSource((l11 == null || l11.longValue() <= 0) ? 0 : 1);
            this.f60878c.reportPlaybackMetrics(this.f60885j.build());
        }
        this.f60885j = null;
        this.f60884i = null;
        this.f60901z = 0;
        this.f60899x = 0;
        this.f60900y = 0;
        this.f60893r = null;
        this.f60894s = null;
        this.f60895t = null;
        this.A = false;
    }

    private static int D0(int i10) {
        switch (com.google.android.exoplayer2.util.p0.V(i10)) {
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

    private static DrmInitData E0(ImmutableList immutableList) {
        DrmInitData drmInitData;
        r4 it = immutableList.iterator();
        while (it.hasNext()) {
            q3.a aVar = (q3.a) it.next();
            for (int i10 = 0; i10 < aVar.f24967a; i10++) {
                if (aVar.g(i10) && (drmInitData = aVar.c(i10).f24904o) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int F0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            UUID uuid = drmInitData.get(i10).uuid;
            if (uuid.equals(com.google.android.exoplayer2.l.f24515d)) {
                return 3;
            }
            if (uuid.equals(com.google.android.exoplayer2.l.f24516e)) {
                return 2;
            }
            if (uuid.equals(com.google.android.exoplayer2.l.f24514c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a G0(PlaybackException playbackException, Context context, boolean z10) {
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
        Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(playbackException.getCause());
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
                return new a(13, com.google.android.exoplayer2.util.p0.W(((MediaCodecRenderer.DecoderInitializationException) th2).diagnosticInfo));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, com.google.android.exoplayer2.util.p0.W(((MediaCodecDecoderException) th2).diagnosticInfo));
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
            if (com.google.android.exoplayer2.util.p0.f26854a < 16 || !(th2 instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
            return new a(D0(errorCode), errorCode);
        }
        if (th2 instanceof HttpDataSource$InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource$InvalidResponseCodeException) th2).responseCode);
        }
        if ((th2 instanceof HttpDataSource$InvalidContentTypeException) || (th2 instanceof ParserException)) {
            return new a(z10 ? 10 : 11, 0);
        }
        boolean z12 = th2 instanceof HttpDataSource$HttpDataSourceException;
        if (z12 || (th2 instanceof UdpDataSource.UdpDataSourceException)) {
            if (com.google.android.exoplayer2.util.z.d(context).f() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th2.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return (z12 && ((HttpDataSource$HttpDataSourceException) th2).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th2 instanceof DrmSession.DrmSessionException)) {
            if (!(th2 instanceof FileDataSource.FileDataSourceException) || !(th2.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause())).getCause();
            return (com.google.android.exoplayer2.util.p0.f26854a >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause());
        int i11 = com.google.android.exoplayer2.util.p0.f26854a;
        if (i11 >= 21 && (th3 instanceof MediaDrm.MediaDrmStateException)) {
            int iW = com.google.android.exoplayer2.util.p0.W(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
            return new a(D0(iW), iW);
        }
        if (i11 >= 23 && (th3 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (i11 >= 18 && (th3 instanceof NotProvisionedException)) {
            return new a(24, 0);
        }
        if (i11 >= 18 && (th3 instanceof DeniedByServerException)) {
            return new a(29, 0);
        }
        if (th3 instanceof UnsupportedDrmException) {
            return new a(23, 0);
        }
        return th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new a(28, 0) : new a(30, 0);
    }

    private static Pair H0(String str) {
        String[] strArrS0 = com.google.android.exoplayer2.util.p0.S0(str, "-");
        return Pair.create(strArrS0[0], strArrS0.length >= 2 ? strArrS0[1] : null);
    }

    private static int J0(Context context) {
        switch (com.google.android.exoplayer2.util.z.d(context).f()) {
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

    private static int K0(w1 w1Var) {
        w1.h hVar = w1Var.f27149b;
        if (hVar == null) {
            return 0;
        }
        int iQ0 = com.google.android.exoplayer2.util.p0.q0(hVar.f27212a, hVar.f27213b);
        if (iQ0 == 0) {
            return 3;
        }
        if (iQ0 != 1) {
            return iQ0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private static int L0(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 1 : 4;
        }
        return 3;
    }

    private void M0(c.b bVar) {
        for (int i10 = 0; i10 < bVar.d(); i10++) {
            int iB = bVar.b(i10);
            c.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.f60877b.d(aVarC);
            } else if (iB == 11) {
                this.f60877b.e(aVarC, this.f60886k);
            } else {
                this.f60877b.b(aVarC);
            }
        }
    }

    private void N0(long j10) {
        int iJ0 = J0(this.f60876a);
        if (iJ0 != this.f60888m) {
            this.f60888m = iJ0;
            this.f60878c.reportNetworkEvent(g2.a().setNetworkType(iJ0).setTimeSinceCreatedMillis(j10 - this.f60879d).build());
        }
    }

    private void O0(long j10) {
        PlaybackException playbackException = this.f60889n;
        if (playbackException == null) {
            return;
        }
        a aVarG0 = G0(playbackException, this.f60876a, this.f60897v == 4);
        this.f60878c.reportPlaybackErrorEvent(c3.a().setTimeSinceCreatedMillis(j10 - this.f60879d).setErrorCode(aVarG0.f60902a).setSubErrorCode(aVarG0.f60903b).setException(playbackException).build());
        this.A = true;
        this.f60889n = null;
    }

    private void P0(p2 p2Var, c.b bVar, long j10) {
        if (p2Var.getPlaybackState() != 2) {
            this.f60896u = false;
        }
        if (p2Var.c() == null) {
            this.f60898w = false;
        } else if (bVar.a(10)) {
            this.f60898w = true;
        }
        int iX0 = X0(p2Var);
        if (this.f60887l != iX0) {
            this.f60887l = iX0;
            this.A = true;
            this.f60878c.reportPlaybackStateEvent(n3.a().setState(this.f60887l).setTimeSinceCreatedMillis(j10 - this.f60879d).build());
        }
    }

    private void Q0(p2 p2Var, c.b bVar, long j10) {
        if (bVar.a(2)) {
            q3 currentTracks = p2Var.getCurrentTracks();
            boolean zD = currentTracks.d(2);
            boolean zD2 = currentTracks.d(1);
            boolean zD3 = currentTracks.d(3);
            if (zD || zD2 || zD3) {
                if (!zD) {
                    V0(j10, null, 0);
                }
                if (!zD2) {
                    R0(j10, null, 0);
                }
                if (!zD3) {
                    T0(j10, null, 0);
                }
            }
        }
        if (A0(this.f60890o)) {
            b bVar2 = this.f60890o;
            com.google.android.exoplayer2.p1 p1Var = bVar2.f60904a;
            if (p1Var.f24907r != -1) {
                V0(j10, p1Var, bVar2.f60905b);
                this.f60890o = null;
            }
        }
        if (A0(this.f60891p)) {
            b bVar3 = this.f60891p;
            R0(j10, bVar3.f60904a, bVar3.f60905b);
            this.f60891p = null;
        }
        if (A0(this.f60892q)) {
            b bVar4 = this.f60892q;
            T0(j10, bVar4.f60904a, bVar4.f60905b);
            this.f60892q = null;
        }
    }

    private void R0(long j10, com.google.android.exoplayer2.p1 p1Var, int i10) {
        if (com.google.android.exoplayer2.util.p0.c(this.f60894s, p1Var)) {
            return;
        }
        if (this.f60894s == null && i10 == 0) {
            i10 = 1;
        }
        this.f60894s = p1Var;
        W0(0, j10, p1Var, i10);
    }

    private void S0(p2 p2Var, c.b bVar) {
        DrmInitData drmInitDataE0;
        if (bVar.a(0)) {
            c.a aVarC = bVar.c(0);
            if (this.f60885j != null) {
                U0(aVarC.f60730b, aVarC.f60732d);
            }
        }
        if (bVar.a(2) && this.f60885j != null && (drmInitDataE0 = E0(p2Var.getCurrentTracks().b())) != null) {
            m2.a(com.google.android.exoplayer2.util.p0.j(this.f60885j)).setDrmType(F0(drmInitDataE0));
        }
        if (bVar.a(1011)) {
            this.f60901z++;
        }
    }

    private void T0(long j10, com.google.android.exoplayer2.p1 p1Var, int i10) {
        if (com.google.android.exoplayer2.util.p0.c(this.f60895t, p1Var)) {
            return;
        }
        if (this.f60895t == null && i10 == 0) {
            i10 = 1;
        }
        this.f60895t = p1Var;
        W0(2, j10, p1Var, i10);
    }

    private void U0(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar) {
        int iF;
        PlaybackMetrics.Builder builder = this.f60885j;
        if (bVar == null || (iF = l3Var.f(bVar.f73504a)) == -1) {
            return;
        }
        l3Var.j(iF, this.f60881f);
        l3Var.r(this.f60881f.f24525c, this.f60880e);
        builder.setStreamType(K0(this.f60880e.f24540c));
        l3.d dVar = this.f60880e;
        if (dVar.f24551n != C.TIME_UNSET && !dVar.f24549l && !dVar.f24546i && !dVar.i()) {
            builder.setMediaDurationMillis(this.f60880e.g());
        }
        builder.setPlaybackType(this.f60880e.i() ? 2 : 1);
        this.A = true;
    }

    private void V0(long j10, com.google.android.exoplayer2.p1 p1Var, int i10) {
        if (com.google.android.exoplayer2.util.p0.c(this.f60893r, p1Var)) {
            return;
        }
        if (this.f60893r == null && i10 == 0) {
            i10 = 1;
        }
        this.f60893r = p1Var;
        W0(1, j10, p1Var, i10);
    }

    private void W0(int i10, long j10, com.google.android.exoplayer2.p1 p1Var, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = v1.a(i10).setTimeSinceCreatedMillis(j10 - this.f60879d);
        if (p1Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(L0(i11));
            String str = p1Var.f24900k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = p1Var.f24901l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = p1Var.f24898i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = p1Var.f24897h;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = p1Var.f24906q;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = p1Var.f24907r;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = p1Var.f24914y;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = p1Var.f24915z;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = p1Var.f24892c;
            if (str4 != null) {
                Pair pairH0 = H0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairH0.first);
                Object obj = pairH0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = p1Var.f24908s;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.f60878c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private int X0(p2 p2Var) {
        int playbackState = p2Var.getPlaybackState();
        if (this.f60896u) {
            return 5;
        }
        if (this.f60898w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.f60887l;
            if (i10 == 0 || i10 == 2) {
                return 2;
            }
            if (p2Var.getPlayWhenReady()) {
                return p2Var.k() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (p2Var.getPlayWhenReady()) {
                return p2Var.k() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.f60887l == 0) {
            return this.f60887l;
        }
        return 12;
    }

    @Override
    public void A(c.a aVar, v9.h hVar, v9.i iVar) {
        g9.b.F(this, aVar, hVar, iVar);
    }

    @Override
    public void B(c.a aVar, long j10, int i10) {
        g9.b.j0(this, aVar, j10, i10);
    }

    @Override
    public void C(c.a aVar, na.z zVar) {
        g9.b.b0(this, aVar, zVar);
    }

    @Override
    public void D(c.a aVar) {
        g9.b.Q(this, aVar);
    }

    @Override
    public void E(c.a aVar, int i10, int i11, int i12, float f10) {
        g9.b.m0(this, aVar, i10, i11, i12, f10);
    }

    @Override
    public void F(c.a aVar, int i10, String str, long j10) {
        g9.b.q(this, aVar, i10, str, j10);
    }

    @Override
    public void G(c.a aVar, PlaybackException playbackException) {
        this.f60889n = playbackException;
    }

    @Override
    public void H(c.a aVar, String str, long j10) {
        g9.b.b(this, aVar, str, j10);
    }

    @Override
    public void I(c.a aVar, String str, long j10, long j11) {
        g9.b.c(this, aVar, str, j10, j11);
    }

    public LogSessionId I0() {
        return this.f60878c.getSessionId();
    }

    @Override
    public void J(c.a aVar, da.f fVar) {
        g9.b.m(this, aVar, fVar);
    }

    @Override
    public void K(c.a aVar, float f10) {
        g9.b.n0(this, aVar, f10);
    }

    @Override
    public void L(c.a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar) {
        g9.b.o(this, aVar, i10, eVar);
    }

    @Override
    public void M(c.a aVar, boolean z10, int i10) {
        g9.b.R(this, aVar, z10, i10);
    }

    @Override
    public void N(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        this.f60899x += eVar.f24240g;
        this.f60900y += eVar.f24238e;
    }

    @Override
    public void O(c.a aVar, v9.i iVar) {
        g9.b.d0(this, aVar, iVar);
    }

    @Override
    public void P(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        g9.b.e(this, aVar, eVar);
    }

    @Override
    public void Q(c.a aVar) {
        g9.b.v(this, aVar);
    }

    @Override
    public void R(c.a aVar, o2 o2Var) {
        g9.b.M(this, aVar, o2Var);
    }

    @Override
    public void S(c.a aVar, int i10) {
        g9.b.S(this, aVar, i10);
    }

    @Override
    public void T(c.a aVar, int i10, long j10, long j11) {
        g9.b.k(this, aVar, i10, j10, j11);
    }

    @Override
    public void U(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        g9.b.i0(this, aVar, eVar);
    }

    @Override
    public void V(c.a aVar, String str) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
        if (bVar == null || !bVar.b()) {
            C0();
            this.f60884i = str;
            this.f60885j = r2.a().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            U0(aVar.f60730b, aVar.f60732d);
        }
    }

    @Override
    public void W(c.a aVar, int i10) {
        g9.b.U(this, aVar, i10);
    }

    @Override
    public void X(c.a aVar, q3 q3Var) {
        g9.b.c0(this, aVar, q3Var);
    }

    @Override
    public void Y(c.a aVar) {
        g9.b.x(this, aVar);
    }

    @Override
    public void Z(c.a aVar, String str, long j10) {
        g9.b.f0(this, aVar, str, j10);
    }

    @Override
    public void a(c.a aVar, Object obj, long j10) {
        g9.b.T(this, aVar, obj, j10);
    }

    @Override
    public void a0(c.a aVar, int i10) {
        g9.b.a0(this, aVar, i10);
    }

    @Override
    public void b(c.a aVar) {
        g9.b.u(this, aVar);
    }

    @Override
    public void b0(c.a aVar) {
        g9.b.W(this, aVar);
    }

    @Override
    public void c(c.a aVar, v9.i iVar) {
        if (aVar.f60732d == null) {
            return;
        }
        b bVar = new b((com.google.android.exoplayer2.p1) com.google.android.exoplayer2.util.a.e(iVar.f73499c), iVar.f73500d, this.f60877b.f(aVar.f60730b, (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(aVar.f60732d)));
        int i10 = iVar.f73498b;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f60891p = bVar;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.f60892q = bVar;
                return;
            }
        }
        this.f60890o = bVar;
    }

    @Override
    public void c0(c.a aVar, boolean z10) {
        g9.b.X(this, aVar, z10);
    }

    @Override
    public void d(c.a aVar, boolean z10) {
        g9.b.H(this, aVar, z10);
    }

    @Override
    public void d0(c.a aVar, v9.h hVar, v9.i iVar) {
        g9.b.G(this, aVar, hVar, iVar);
    }

    @Override
    public void e(c.a aVar, b2 b2Var) {
        g9.b.J(this, aVar, b2Var);
    }

    @Override
    public void e0(c.a aVar, com.google.android.exoplayer2.p1 p1Var) {
        g9.b.k0(this, aVar, p1Var);
    }

    @Override
    public void f(c.a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
        g9.b.h(this, aVar, p1Var, gVar);
    }

    @Override
    public void f0(c.a aVar, com.google.android.exoplayer2.video.y yVar) {
        b bVar = this.f60890o;
        if (bVar != null) {
            com.google.android.exoplayer2.p1 p1Var = bVar.f60904a;
            if (p1Var.f24907r == -1) {
                this.f60890o = new b(p1Var.b().j0(yVar.f27140a).Q(yVar.f27141b).E(), bVar.f60905b, bVar.f60906c);
            }
        }
    }

    @Override
    public void g(c.a aVar, com.google.android.exoplayer2.r rVar) {
        g9.b.s(this, aVar, rVar);
    }

    @Override
    public void g0(c.a aVar, Exception exc) {
        g9.b.e0(this, aVar, exc);
    }

    @Override
    public void h(c.a aVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10) {
        this.f60897v = iVar.f73497a;
    }

    @Override
    public void h0(c.a aVar) {
        g9.b.w(this, aVar);
    }

    @Override
    public void i(c.a aVar) {
        g9.b.A(this, aVar);
    }

    @Override
    public void i0(c.a aVar, int i10) {
        g9.b.N(this, aVar, i10);
    }

    @Override
    public void j(c.a aVar, int i10, com.google.android.exoplayer2.p1 p1Var) {
        g9.b.r(this, aVar, i10, p1Var);
    }

    @Override
    public void j0(c.a aVar, Exception exc) {
        g9.b.a(this, aVar, exc);
    }

    @Override
    public void k0(p2 p2Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        M0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        S0(p2Var, bVar);
        O0(jElapsedRealtime);
        Q0(p2Var, bVar, jElapsedRealtime);
        N0(jElapsedRealtime);
        P0(p2Var, bVar, jElapsedRealtime);
        if (bVar.a(1028)) {
            this.f60877b.g(bVar.c(1028));
        }
    }

    @Override
    public void l(c.a aVar, w1 w1Var, int i10) {
        g9.b.I(this, aVar, w1Var, i10);
    }

    @Override
    public void l0(c.a aVar) {
        g9.b.V(this, aVar);
    }

    @Override
    public void m(c.a aVar, v9.h hVar, v9.i iVar) {
        g9.b.E(this, aVar, hVar, iVar);
    }

    @Override
    public void m0(c.a aVar, Exception exc) {
        g9.b.j(this, aVar, exc);
    }

    @Override
    public void n(c.a aVar, int i10, boolean z10) {
        g9.b.t(this, aVar, i10, z10);
    }

    @Override
    public void n0(c.a aVar, boolean z10) {
        g9.b.C(this, aVar, z10);
    }

    @Override
    public void o(c.a aVar, PlaybackException playbackException) {
        g9.b.P(this, aVar, playbackException);
    }

    @Override
    public void o0(c.a aVar, p2.b bVar) {
        g9.b.l(this, aVar, bVar);
    }

    @Override
    public void p(c.a aVar, List list) {
        g9.b.n(this, aVar, list);
    }

    @Override
    public void p0(c.a aVar, int i10, long j10, long j11) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
        if (bVar != null) {
            String strF = this.f60877b.f(aVar.f60730b, (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(bVar));
            Long l10 = (Long) this.f60883h.get(strF);
            Long l11 = (Long) this.f60882g.get(strF);
            this.f60883h.put(strF, Long.valueOf((l10 == null ? 0L : l10.longValue()) + j10));
            this.f60882g.put(strF, Long.valueOf((l11 != null ? l11.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override
    public void q(c.a aVar, boolean z10) {
        g9.b.D(this, aVar, z10);
    }

    @Override
    public void q0(c.a aVar, long j10) {
        g9.b.i(this, aVar, j10);
    }

    @Override
    public void r(c.a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar) {
        g9.b.p(this, aVar, i10, eVar);
    }

    @Override
    public void r0(c.a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
        g9.b.l0(this, aVar, p1Var, gVar);
    }

    @Override
    public void s(c.a aVar, boolean z10, int i10) {
        g9.b.L(this, aVar, z10, i10);
    }

    @Override
    public void s0(c.a aVar, Exception exc) {
        g9.b.z(this, aVar, exc);
    }

    @Override
    public void t(c.a aVar, int i10, long j10) {
        g9.b.B(this, aVar, i10, j10);
    }

    @Override
    public void t0(c.a aVar, Metadata metadata) {
        g9.b.K(this, aVar, metadata);
    }

    @Override
    public void u(c.a aVar, com.google.android.exoplayer2.p1 p1Var) {
        g9.b.g(this, aVar, p1Var);
    }

    @Override
    public void u0(c.a aVar, int i10) {
        g9.b.O(this, aVar, i10);
    }

    @Override
    public void v0(c.a aVar, int i10) {
        g9.b.y(this, aVar, i10);
    }

    @Override
    public void w(c.a aVar, boolean z10) {
        g9.b.Y(this, aVar, z10);
    }

    @Override
    public void w0(c.a aVar, String str, long j10, long j11) {
        g9.b.g0(this, aVar, str, j10, j11);
    }

    @Override
    public void x(c.a aVar, String str, boolean z10) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f60884i)) {
            C0();
        }
        this.f60882g.remove(str);
        this.f60883h.remove(str);
    }

    @Override
    public void x0(c.a aVar, String str) {
        g9.b.d(this, aVar, str);
    }

    @Override
    public void y(c.a aVar, p2.e eVar, p2.e eVar2, int i10) {
        if (i10 == 1) {
            this.f60896u = true;
        }
        this.f60886k = i10;
    }

    @Override
    public void y0(c.a aVar, int i10, int i11) {
        g9.b.Z(this, aVar, i10, i11);
    }

    @Override
    public void z(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        g9.b.f(this, aVar, eVar);
    }

    @Override
    public void z0(c.a aVar, String str) {
        g9.b.h0(this, aVar, str);
    }

    @Override
    public void v(c.a aVar, String str) {
    }

    @Override
    public void k(c.a aVar, String str, String str2) {
    }
}
