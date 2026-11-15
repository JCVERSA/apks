package h2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.k;
import h3.l;
import h3.o;
import h3.p;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

public final class i extends androidx.media3.exoplayer.i implements Handler.Callback {
    private p A;
    private int B;
    private final Handler C;
    private final h D;
    private final s2 E;
    private boolean F;
    private boolean G;
    private r H;
    private long I;
    private long J;
    private boolean K;
    private IOException L;

    private final h3.b f61228r;

    private final DecoderInputBuffer f61229s;

    private a f61230t;

    private final g f61231u;

    private boolean f61232v;

    private int f61233w;

    private l f61234x;

    private o f61235y;

    private p f61236z;

    public i(h hVar, Looper looper) {
        this(hVar, looper, g.f61226a);
    }

    private void Q() {
        androidx.media3.common.util.a.h(this.K || Objects.equals(this.H.f9849o, MimeTypes.APPLICATION_CEA608) || Objects.equals(this.H.f9849o, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(this.H.f9849o, MimeTypes.APPLICATION_CEA708), "Legacy decoding is disabled, can't handle " + this.H.f9849o + " samples (expected application/x-media3-cues).");
    }

    private void R() {
        h0(new u1.b(ImmutableList.of(), U(this.I)));
    }

    private long S(long j10) {
        int nextEventTimeIndex = this.f61236z.getNextEventTimeIndex(j10);
        if (nextEventTimeIndex == 0 || this.f61236z.getEventTimeCount() == 0) {
            return this.f61236z.timeUs;
        }
        if (nextEventTimeIndex != -1) {
            return this.f61236z.getEventTime(nextEventTimeIndex - 1);
        }
        p pVar = this.f61236z;
        return pVar.getEventTime(pVar.getEventTimeCount() - 1);
    }

    private long T() {
        if (this.B == -1) {
            return Long.MAX_VALUE;
        }
        androidx.media3.common.util.a.e(this.f61236z);
        if (this.B >= this.f61236z.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f61236z.getEventTime(this.B);
    }

    private long U(long j10) {
        androidx.media3.common.util.a.g(j10 != C.TIME_UNSET);
        return j10 - z();
    }

    private void V(SubtitleDecoderException subtitleDecoderException) {
        u.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.H, subtitleDecoderException);
        R();
        f0();
    }

    private static boolean W(k kVar, long j10) {
        return kVar == null || kVar.getEventTime(kVar.getEventTimeCount() - 1) <= j10;
    }

    private void X() {
        this.f61232v = true;
        l lVarB = this.f61231u.b((r) androidx.media3.common.util.a.e(this.H));
        this.f61234x = lVarB;
        lVarB.a(w());
    }

    private void Y(u1.b bVar) {
        this.D.onCues(bVar.f72977a);
        this.D.onCues(bVar);
    }

    private static boolean Z(r rVar) {
        return Objects.equals(rVar.f9849o, "application/x-media3-cues");
    }

    private boolean a0(long j10) {
        if (this.F || N(this.E, this.f61229s, 0) != -4) {
            return false;
        }
        if (this.f61229s.isEndOfStream()) {
            this.F = true;
            return false;
        }
        this.f61229s.d();
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f61229s.f10606c);
        h3.e eVarA = this.f61228r.a(this.f61229s.f10608e, byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        this.f61229s.clear();
        return this.f61230t.d(eVarA, j10);
    }

    private void b0() {
        this.f61235y = null;
        this.B = -1;
        p pVar = this.f61236z;
        if (pVar != null) {
            pVar.release();
            this.f61236z = null;
        }
        p pVar2 = this.A;
        if (pVar2 != null) {
            pVar2.release();
            this.A = null;
        }
    }

    private void c0() {
        b0();
        ((l) androidx.media3.common.util.a.e(this.f61234x)).release();
        this.f61234x = null;
        this.f61233w = 0;
    }

    private void d0(long j10) {
        boolean zA0 = a0(j10);
        long jC = this.f61230t.c(this.I);
        if (jC == Long.MIN_VALUE && this.F && !zA0) {
            this.G = true;
        }
        if (jC != Long.MIN_VALUE && jC <= j10) {
            zA0 = true;
        }
        if (zA0) {
            ImmutableList immutableListA = this.f61230t.a(j10);
            long jB = this.f61230t.b(j10);
            h0(new u1.b(immutableListA, U(jB)));
            this.f61230t.e(jB);
        }
        this.I = j10;
    }

    private void e0(long j10) {
        boolean z10;
        this.I = j10;
        if (this.A == null) {
            ((l) androidx.media3.common.util.a.e(this.f61234x)).setPositionUs(j10);
            try {
                this.A = (p) ((l) androidx.media3.common.util.a.e(this.f61234x)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e10) {
                V(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f61236z != null) {
            long jT = T();
            z10 = false;
            while (jT <= j10) {
                this.B++;
                jT = T();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        p pVar = this.A;
        if (pVar != null) {
            if (pVar.isEndOfStream()) {
                if (!z10 && T() == Long.MAX_VALUE) {
                    if (this.f61233w == 2) {
                        f0();
                    } else {
                        b0();
                        this.G = true;
                    }
                }
            } else if (pVar.timeUs <= j10) {
                p pVar2 = this.f61236z;
                if (pVar2 != null) {
                    pVar2.release();
                }
                this.B = pVar.getNextEventTimeIndex(j10);
                this.f61236z = pVar;
                this.A = null;
                z10 = true;
            }
        }
        if (z10) {
            androidx.media3.common.util.a.e(this.f61236z);
            h0(new u1.b(this.f61236z.getCues(j10), U(S(j10))));
        }
        if (this.f61233w == 2) {
            return;
        }
        while (!this.F) {
            try {
                o oVar = this.f61235y;
                if (oVar == null) {
                    oVar = (o) ((l) androidx.media3.common.util.a.e(this.f61234x)).dequeueInputBuffer();
                    if (oVar == null) {
                        return;
                    } else {
                        this.f61235y = oVar;
                    }
                }
                if (this.f61233w == 1) {
                    oVar.setFlags(4);
                    ((l) androidx.media3.common.util.a.e(this.f61234x)).queueInputBuffer(oVar);
                    this.f61235y = null;
                    this.f61233w = 2;
                    return;
                }
                int iN = N(this.E, oVar, 0);
                if (iN == -4) {
                    if (oVar.isEndOfStream()) {
                        this.F = true;
                        this.f61232v = false;
                    } else {
                        r rVar = this.E.f12258b;
                        if (rVar == null) {
                            return;
                        }
                        oVar.f61260i = rVar.f9854t;
                        oVar.d();
                        this.f61232v &= !oVar.isKeyFrame();
                    }
                    if (!this.f61232v) {
                        ((l) androidx.media3.common.util.a.e(this.f61234x)).queueInputBuffer(oVar);
                        this.f61235y = null;
                    }
                } else if (iN == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e11) {
                V(e11);
                return;
            }
        }
    }

    private void f0() {
        c0();
        X();
    }

    private void h0(u1.b bVar) {
        Handler handler = this.C;
        if (handler != null) {
            handler.obtainMessage(1, bVar).sendToTarget();
        } else {
            Y(bVar);
        }
    }

    @Override
    protected void C() {
        this.H = null;
        this.J = C.TIME_UNSET;
        R();
        this.I = C.TIME_UNSET;
        if (this.f61234x != null) {
            c0();
        }
    }

    @Override
    protected void F(long j10, boolean z10) {
        this.I = j10;
        a aVar = this.f61230t;
        if (aVar != null) {
            aVar.clear();
        }
        R();
        this.F = false;
        this.G = false;
        this.J = C.TIME_UNSET;
        r rVar = this.H;
        if (rVar == null || Z(rVar)) {
            return;
        }
        if (this.f61233w != 0) {
            f0();
            return;
        }
        b0();
        l lVar = (l) androidx.media3.common.util.a.e(this.f61234x);
        lVar.flush();
        lVar.a(w());
    }

    @Override
    protected void L(r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        r rVar = rVarArr[0];
        this.H = rVar;
        if (Z(rVar)) {
            this.f61230t = this.H.K == 1 ? new e() : new f();
            return;
        }
        Q();
        if (this.f61234x != null) {
            this.f61233w = 1;
        } else {
            X();
        }
    }

    @Override
    public int a(r rVar) {
        if (Z(rVar) || this.f61231u.a(rVar)) {
            return x3.a(rVar.N == 0 ? 4 : 2);
        }
        return y.s(rVar.f9849o) ? x3.a(1) : x3.a(0);
    }

    public void g0(long j10) {
        androidx.media3.common.util.a.g(isCurrentStreamFinal());
        this.J = j10;
    }

    @Override
    public String getName() {
        return "TextRenderer";
    }

    @Override
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        Y((u1.b) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.G;
    }

    @Override
    public boolean isReady() {
        if (this.H == null) {
            return true;
        }
        if (this.L == null) {
            try {
                maybeThrowStreamError();
            } catch (IOException e10) {
                this.L = e10;
            }
        }
        if (this.L != null) {
            if (Z((r) androidx.media3.common.util.a.e(this.H))) {
                return ((a) androidx.media3.common.util.a.e(this.f61230t)).c(this.I) != Long.MIN_VALUE;
            }
            if (this.G || (this.F && W(this.f61236z, this.I) && W(this.A, this.I) && this.f61235y != null)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void render(long j10, long j11) {
        if (isCurrentStreamFinal()) {
            long j12 = this.J;
            if (j12 != C.TIME_UNSET && j10 >= j12) {
                b0();
                this.G = true;
            }
        }
        if (this.G) {
            return;
        }
        if (Z((r) androidx.media3.common.util.a.e(this.H))) {
            androidx.media3.common.util.a.e(this.f61230t);
            d0(j10);
        } else {
            Q();
            e0(j10);
        }
    }

    public i(h hVar, Looper looper, g gVar) {
        super(3);
        this.D = (h) androidx.media3.common.util.a.e(hVar);
        this.C = looper == null ? null : a1.z(looper, this);
        this.f61231u = gVar;
        this.f61228r = new h3.b();
        this.f61229s = new DecoderInputBuffer(1);
        this.E = new s2();
        this.J = C.TIME_UNSET;
        this.I = C.TIME_UNSET;
        this.K = false;
    }
}
