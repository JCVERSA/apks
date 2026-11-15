package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.e0;
import androidx.media3.common.h0;
import androidx.media3.common.i0;
import androidx.media3.common.m;
import androidx.media3.common.m0;
import androidx.media3.common.r;
import androidx.media3.common.t;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import androidx.media3.common.v;
import androidx.media3.common.x;
import androidx.media3.common.z;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.j;
import androidx.media3.exoplayer.k;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import f2.i;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

public class a implements x1.c {

    private static final NumberFormat f12720e;

    private final String f12721a;

    private final e0.c f12722b;

    private final e0.b f12723c;

    private final long f12724d;

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        f12720e = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public a() {
        this("EventLogger");
    }

    private static String A0(int i10) {
        if (i10 == 0) {
            return "NONE";
        }
        if (i10 != 1) {
            return i10 != 3 ? UrlUtils.QUESTION_MARK : "UNSUITABLE_AUDIO_OUTPUT";
        }
        return "TRANSIENT_AUDIO_FOCUS_LOSS";
    }

    private static String B0(int i10) {
        if (i10 == 0) {
            return "OFF";
        }
        if (i10 != 1) {
            return i10 != 2 ? UrlUtils.QUESTION_MARK : "ALL";
        }
        return "ONE";
    }

    private static String C0(int i10) {
        if (i10 == 1) {
            return CustomSwipeRefreshLayout.IDLE;
        }
        if (i10 == 2) {
            return "BUFFERING";
        }
        if (i10 != 3) {
            return i10 != 4 ? UrlUtils.QUESTION_MARK : "ENDED";
        }
        return "READY";
    }

    private static String D0(long j10) {
        return j10 == C.TIME_UNSET ? UrlUtils.QUESTION_MARK : f12720e.format(j10 / 1000.0f);
    }

    private static String E0(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? UrlUtils.QUESTION_MARK : "SOURCE_UPDATE";
        }
        return "PLAYLIST_CHANGED";
    }

    private static String F0(boolean z10) {
        return z10 ? "[X]" : "[ ]";
    }

    private void H0(x1.c.a aVar, String str) {
        G0(v(aVar, str, null, null));
    }

    private void I0(x1.c.a aVar, String str, String str2) {
        G0(v(aVar, str, str2, null));
    }

    private void K0(x1.c.a aVar, String str, String str2, Throwable th2) {
        J0(v(aVar, str, str2, th2));
    }

    private void L0(x1.c.a aVar, String str, Throwable th2) {
        J0(v(aVar, str, null, th2));
    }

    private void M0(x1.c.a aVar, String str, Exception exc) {
        K0(aVar, "internalError", str, exc);
    }

    private void N0(x xVar, String str) {
        for (int i10 = 0; i10 < xVar.e(); i10++) {
            G0(str + xVar.d(i10));
        }
    }

    private static String i(AudioSink.a aVar) {
        return aVar.f10689a + "," + aVar.f10691c + "," + aVar.f10690b + "," + aVar.f10692d + "," + aVar.f10693e + "," + aVar.f10694f;
    }

    private static String s(int i10) {
        switch (i10) {
            case 0:
                return "AUTO_TRANSITION";
            case 1:
                return "SEEK";
            case 2:
                return "SEEK_ADJUSTMENT";
            case 3:
                return "SKIP";
            case 4:
                return "REMOVE";
            case 5:
                return "INTERNAL";
            case 6:
                return "SILENCE_SKIP";
            default:
                return UrlUtils.QUESTION_MARK;
        }
    }

    private String v(x1.c.a aVar, String str, String str2, Throwable th2) {
        String str3 = str + " [" + y(aVar);
        if (th2 instanceof PlaybackException) {
            str3 = str3 + ", errorCode=" + ((PlaybackException) th2).getErrorCodeName();
        }
        if (str2 != null) {
            str3 = str3 + ", " + str2;
        }
        String strE = u.e(th2);
        if (!TextUtils.isEmpty(strE)) {
            str3 = str3 + "\n  " + strE.replace("\n", "\n  ") + '\n';
        }
        return str3 + "]";
    }

    private String y(x1.c.a aVar) {
        String str = "window=" + aVar.f74858c;
        if (aVar.f74859d != null) {
            str = str + ", period=" + aVar.f74857b.b(aVar.f74859d.f12571a);
            if (aVar.f74859d.b()) {
                str = (str + ", adGroup=" + aVar.f74859d.f12572b) + ", ad=" + aVar.f74859d.f12573c;
            }
        }
        return "eventTime=" + D0(aVar.f74856a - this.f12724d) + ", mediaPos=" + D0(aVar.f74860e) + ", " + str;
    }

    private static String y0(int i10) {
        if (i10 == 0) {
            return "REPEAT";
        }
        if (i10 == 1) {
            return "AUTO";
        }
        if (i10 != 2) {
            return i10 != 3 ? UrlUtils.QUESTION_MARK : "PLAYLIST_CHANGED";
        }
        return "SEEK";
    }

    private static String z0(int i10) {
        if (i10 == 1) {
            return "USER_REQUEST";
        }
        if (i10 == 2) {
            return "AUDIO_FOCUS_LOSS";
        }
        if (i10 == 3) {
            return "AUDIO_BECOMING_NOISY";
        }
        if (i10 != 4) {
            return i10 != 5 ? UrlUtils.QUESTION_MARK : "END_OF_MEDIA_ITEM";
        }
        return "REMOTE";
    }

    @Override
    public void A(x1.c.a aVar, r rVar, k kVar) {
        I0(aVar, "videoInputFormat", r.i(rVar));
    }

    @Override
    public void B(x1.c.a aVar, String str) {
        I0(aVar, "audioDecoderReleased", str);
    }

    @Override
    public void C(x1.c.a aVar, boolean z10) {
        I0(aVar, "isPlaying", Boolean.toString(z10));
    }

    @Override
    public void D(x1.c.a aVar, j jVar) {
        H0(aVar, "videoDisabled");
    }

    @Override
    public void E(x1.c.a aVar) {
        H0(aVar, "drmKeysLoaded");
    }

    @Override
    public void F(x1.c.a aVar, boolean z10) {
        I0(aVar, "loading", Boolean.toString(z10));
    }

    @Override
    public void G(x1.c.a aVar, PlaybackException playbackException) {
        x1.b.Q(this, aVar, playbackException);
    }

    protected void G0(String str) {
        u.b(this.f12721a, str);
    }

    @Override
    public void H(x1.c.a aVar, Exception exc) {
        x1.b.a(this, aVar, exc);
    }

    @Override
    public void I(x1.c.a aVar, int i10, int i11, int i12, float f10) {
        x1.b.m0(this, aVar, i10, i11, i12, f10);
    }

    @Override
    public void J(x1.c.a aVar, Object obj, long j10) {
        I0(aVar, "renderedFirstFrame", String.valueOf(obj));
    }

    protected void J0(String str) {
        u.c(this.f12721a, str);
    }

    @Override
    public void K(x1.c.a aVar) {
        H0(aVar, "drmSessionReleased");
    }

    @Override
    public void L(x1.c.a aVar, String str) {
        I0(aVar, "videoDecoderReleased", str);
    }

    @Override
    public void M(x1.c.a aVar, boolean z10) {
        x1.b.I(this, aVar, z10);
    }

    @Override
    public void N(x1.c.a aVar, AudioSink.a aVar2) {
        I0(aVar, "audioTrackInit", i(aVar2));
    }

    @Override
    public void O(x1.c.a aVar, long j10, int i10) {
        x1.b.k0(this, aVar, j10, i10);
    }

    @Override
    public void P(x1.c.a aVar, int i10) {
        I0(aVar, "drmSessionAcquired", "state=" + i10);
    }

    @Override
    public void Q(x1.c.a aVar, Exception exc) {
        M0(aVar, "drmSessionManagerError", exc);
    }

    @Override
    public void R(x1.c.a aVar, int i10) {
        I0(aVar, "playbackSuppressionReason", A0(i10));
    }

    @Override
    public void S(x1.c.a aVar, j jVar) {
        H0(aVar, "audioEnabled");
    }

    @Override
    public void T(x1.c.a aVar, boolean z10, int i10) {
        x1.b.S(this, aVar, z10, i10);
    }

    @Override
    public void U(x1.c.a aVar, Exception exc) {
        x1.b.f0(this, aVar, exc);
    }

    @Override
    public void V(x1.c.a aVar, z zVar) {
        I0(aVar, "playbackParameters", zVar.toString());
    }

    @Override
    public void W(x1.c.a aVar, String str, long j10) {
        x1.b.g0(this, aVar, str, j10);
    }

    @Override
    public void X(x1.c.a aVar, boolean z10) {
        I0(aVar, "shuffleModeEnabled", Boolean.toString(z10));
    }

    @Override
    public void Y(x1.c.a aVar, long j10) {
        x1.b.h(this, aVar, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void Z(x1.c.a aVar, i0 i0Var) {
        x xVar;
        G0("tracks [" + y(aVar));
        ImmutableList immutableListA = i0Var.a();
        for (int i10 = 0; i10 < immutableListA.size(); i10++) {
            i0.a aVar2 = (i0.a) immutableListA.get(i10);
            G0("  group [");
            for (int i11 = 0; i11 < aVar2.f9779a; i11++) {
                G0("    " + F0(aVar2.h(i11)) + " Track:" + i11 + ", " + r.i(aVar2.b(i11)) + ", supported=" + a1.d0(aVar2.c(i11)));
            }
            G0("  ]");
        }
        boolean z10 = false;
        for (int i12 = 0; !z10 && i12 < immutableListA.size(); i12++) {
            i0.a aVar3 = (i0.a) immutableListA.get(i12);
            for (int i13 = 0; !z10 && i13 < aVar3.f9779a; i13++) {
                if (aVar3.h(i13) && (xVar = aVar3.b(i13).f9846l) != null && xVar.e() > 0) {
                    G0("  Metadata [");
                    N0(xVar, "    ");
                    G0("  ]");
                    z10 = true;
                }
            }
        }
        G0("]");
    }

    @Override
    public void a(x1.c.a aVar, int i10, boolean z10) {
        x1.b.s(this, aVar, i10, z10);
    }

    @Override
    public void a0(x1.c.a aVar, String str, long j10) {
        x1.b.b(this, aVar, str, j10);
    }

    @Override
    public void b(x1.c.a aVar, int i10) {
        x1.b.T(this, aVar, i10);
    }

    @Override
    public void b0(x1.c.a aVar, int i10) {
        I0(aVar, "audioSessionId", Integer.toString(i10));
    }

    @Override
    public void c(x1.c.a aVar, j jVar) {
        H0(aVar, "audioDisabled");
    }

    @Override
    public void c0(x1.c.a aVar, int i10) {
        I0(aVar, "state", C0(i10));
    }

    @Override
    public void d(x1.c.a aVar) {
        H0(aVar, "drmKeysRestored");
    }

    @Override
    public void d0(x1.c.a aVar, int i10, int i11) {
        I0(aVar, "surfaceSize", i10 + ", " + i11);
    }

    @Override
    public void e(x1.c.a aVar, i iVar, f2.j jVar, int i10) {
        x1.b.H(this, aVar, iVar, jVar, i10);
    }

    @Override
    public void e0(x1.c.a aVar, boolean z10, int i10) {
        I0(aVar, "playWhenReady", z10 + ", " + z0(i10));
    }

    @Override
    public void f(x1.c.a aVar, i iVar, f2.j jVar) {
        x1.b.F(this, aVar, iVar, jVar);
    }

    @Override
    public void f0(x1.c.a aVar, v vVar) {
        x1.b.K(this, aVar, vVar);
    }

    @Override
    public void g(a0 a0Var, x1.c.b bVar) {
        x1.b.B(this, a0Var, bVar);
    }

    @Override
    public void g0(x1.c.a aVar, m mVar) {
        x1.b.r(this, aVar, mVar);
    }

    @Override
    public void h(x1.c.a aVar) {
        H0(aVar, "drmKeysRemoved");
    }

    @Override
    public void h0(x1.c.a aVar, t tVar, int i10) {
        G0("mediaItem [" + y(aVar) + ", reason=" + y0(i10) + "]");
    }

    @Override
    public void i0(x1.c.a aVar, a0.b bVar) {
        x1.b.n(this, aVar, bVar);
    }

    @Override
    public void j(x1.c.a aVar, float f10) {
        I0(aVar, "volume", Float.toString(f10));
    }

    @Override
    public void j0(x1.c.a aVar, String str, long j10, long j11) {
        I0(aVar, "videoDecoderInitialized", str);
    }

    @Override
    public void k(x1.c.a aVar, int i10) {
        I0(aVar, "repeatMode", B0(i10));
    }

    @Override
    public void k0(x1.c.a aVar, h0 h0Var) {
        x1.b.c0(this, aVar, h0Var);
    }

    @Override
    public void l(x1.c.a aVar, Exception exc) {
        x1.b.j(this, aVar, exc);
    }

    @Override
    public void l0(x1.c.a aVar, a0.e eVar, a0.e eVar2, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("reason=");
        sb2.append(s(i10));
        sb2.append(", PositionInfo:old [");
        sb2.append("mediaItem=");
        sb2.append(eVar.f9495c);
        sb2.append(", period=");
        sb2.append(eVar.f9498f);
        sb2.append(", pos=");
        sb2.append(eVar.f9499g);
        if (eVar.f9501i != -1) {
            sb2.append(", contentPos=");
            sb2.append(eVar.f9500h);
            sb2.append(", adGroup=");
            sb2.append(eVar.f9501i);
            sb2.append(", ad=");
            sb2.append(eVar.f9502j);
        }
        sb2.append("], PositionInfo:new [");
        sb2.append("mediaItem=");
        sb2.append(eVar2.f9495c);
        sb2.append(", period=");
        sb2.append(eVar2.f9498f);
        sb2.append(", pos=");
        sb2.append(eVar2.f9499g);
        if (eVar2.f9501i != -1) {
            sb2.append(", contentPos=");
            sb2.append(eVar2.f9500h);
            sb2.append(", adGroup=");
            sb2.append(eVar2.f9501i);
            sb2.append(", ad=");
            sb2.append(eVar2.f9502j);
        }
        sb2.append("]");
        I0(aVar, "positionDiscontinuity", sb2.toString());
    }

    @Override
    public void m(x1.c.a aVar) {
        x1.b.X(this, aVar);
    }

    @Override
    public void m0(x1.c.a aVar, i iVar, f2.j jVar) {
        x1.b.G(this, aVar, iVar, jVar);
    }

    @Override
    public void n(x1.c.a aVar, j jVar) {
        H0(aVar, "videoEnabled");
    }

    @Override
    public void n0(x1.c.a aVar, int i10) {
        int i11 = aVar.f74857b.i();
        int iP = aVar.f74857b.p();
        G0("timeline [" + y(aVar) + ", periodCount=" + i11 + ", windowCount=" + iP + ", reason=" + E0(i10));
        for (int i12 = 0; i12 < Math.min(i11, 3); i12++) {
            aVar.f74857b.f(i12, this.f12723c);
            G0("  period [" + D0(this.f12723c.j()) + "]");
        }
        if (i11 > 3) {
            G0("  ...");
        }
        for (int i13 = 0; i13 < Math.min(iP, 3); i13++) {
            aVar.f74857b.n(i13, this.f12722b);
            G0("  window [" + D0(this.f12722b.d()) + ", seekable=" + this.f12722b.f9646h + ", dynamic=" + this.f12722b.f9647i + "]");
        }
        if (iP > 3) {
            G0("  ...");
        }
        G0("]");
    }

    @Override
    public void o(x1.c.a aVar, u1.b bVar) {
        x1.b.q(this, aVar, bVar);
    }

    @Override
    public void o0(x1.c.a aVar, m0 m0Var) {
        I0(aVar, "videoSize", m0Var.f9803a + ", " + m0Var.f9804b);
    }

    @Override
    public void p(x1.c.a aVar, int i10, long j10) {
        I0(aVar, "droppedFrames", Integer.toString(i10));
    }

    @Override
    public void p0(x1.c.a aVar, i iVar, f2.j jVar, IOException iOException, boolean z10) {
        M0(aVar, "loadError", iOException);
    }

    @Override
    public void q(x1.c.a aVar, int i10, long j10, long j11) {
        K0(aVar, "audioTrackUnderrun", i10 + ", " + j10 + ", " + j11, null);
    }

    @Override
    public void q0(x1.c.a aVar, i iVar, f2.j jVar) {
        x1.b.E(this, aVar, iVar, jVar);
    }

    @Override
    public void r(x1.c.a aVar) {
        x1.b.w(this, aVar);
    }

    @Override
    public void r0(x1.c.a aVar, r rVar, k kVar) {
        I0(aVar, "audioInputFormat", r.i(rVar));
    }

    @Override
    public void s0(x1.c.a aVar, PlaybackException playbackException) {
        L0(aVar, "playerFailed", playbackException);
    }

    @Override
    public void t(x1.c.a aVar, f2.j jVar) {
        I0(aVar, "downstreamFormat", r.i(jVar.f59919c));
    }

    @Override
    public void t0(x1.c.a aVar) {
        x1.b.R(this, aVar);
    }

    @Override
    public void u(x1.c.a aVar, f2.j jVar) {
        I0(aVar, "upstreamDiscarded", r.i(jVar.f59919c));
    }

    @Override
    public void u0(x1.c.a aVar, boolean z10) {
        I0(aVar, "skipSilenceEnabled", Boolean.toString(z10));
    }

    @Override
    public void v0(x1.c.a aVar, int i10, int i11, boolean z10) {
        I0(aVar, "rendererReady", "rendererIndex=" + i10 + ", " + a1.t0(i11) + ", " + z10);
    }

    @Override
    public void w(x1.c.a aVar, x xVar) {
        G0("metadata [" + y(aVar));
        N0(xVar, "  ");
        G0("]");
    }

    @Override
    public void w0(x1.c.a aVar, List list) {
        x1.b.p(this, aVar, list);
    }

    @Override
    public void x(x1.c.a aVar, String str, long j10, long j11) {
        I0(aVar, "audioDecoderInitialized", str);
    }

    @Override
    public void x0(x1.c.a aVar, int i10, long j10, long j11) {
        x1.b.o(this, aVar, i10, j10, j11);
    }

    @Override
    public void z(x1.c.a aVar, AudioSink.a aVar2) {
        I0(aVar, "audioTrackReleased", i(aVar2));
    }

    public a(String str) {
        this.f12721a = str;
        this.f12722b = new e0.c();
        this.f12723c = new e0.b();
        this.f12724d = SystemClock.elapsedRealtime();
    }
}
