package com.yandex.mobile.ads.impl;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.extractor.Ac3Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

public final class hz implements wh {
    private int A;
    private long B;
    private long C;
    private long D;
    private long E;
    private int F;
    private boolean G;
    private boolean H;
    private long I;
    private float J;
    private uh[] K;
    private ByteBuffer[] L;

    @Nullable
    private ByteBuffer M;
    private int N;

    @Nullable
    private ByteBuffer O;
    private byte[] P;
    private int Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    private ji X;
    private boolean Y;
    private long Z;
    private final rh a;
    private boolean a0;
    private final c b;
    private boolean b0;
    private final boolean c;
    private final ho d;
    private final h72 e;
    private final uh[] f;
    private final uh[] g;
    private final ir h;
    private final zh i;
    private final ArrayDeque<i> j;
    private final boolean k;
    private final int l;
    private l m;
    private final j<wh.b> n;
    private final j<wh.e> o;
    private final iz p;

    @Nullable
    private mi1 q;

    @Nullable
    private wh.c r;

    @Nullable
    private f s;
    private f t;

    @Nullable
    private AudioTrack u;
    private ph v;

    @Nullable
    private i w;
    private i x;
    private bi1 y;

    @Nullable
    private ByteBuffer z;

    public class a extends Thread {
        final AudioTrack b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AudioTrack audioTrack) {
            super("ExoPlayer:AudioTrackReleaseThread");
            this.b = audioTrack;
        }

        @Override
        public final void run() {
            try {
                this.b.flush();
                this.b.release();
            } finally {
                hz.this.h.e();
            }
        }
    }

    @RequiresApi(31)
    public static final class b {
        @DoNotInline
        public static void a(AudioTrack audioTrack, mi1 mi1Var) {
            LogSessionId logSessionIdA = mi1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface c {
    }

    public interface d {
        public static final iz a = new iz(new iz.a());
    }

    public static final class e {

        @Nullable
        private g b;
        private boolean c;
        private boolean d;
        private rh a = rh.d;
        private int e = 0;
        iz f = d.a;

        public final hz a() {
            if (this.b == null) {
                this.b = new g(new uh[0], new jy1(0), new n12());
            }
            return new hz(this);
        }

        public final e b() {
            this.d = false;
            return this;
        }

        public final e c() {
            this.c = false;
            return this;
        }

        public final e d() {
            this.e = 0;
            return this;
        }

        public final e a(rh rhVar) {
            rhVar.getClass();
            this.a = rhVar;
            return this;
        }
    }

    public static final class f {
        public final jc0 a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final uh[] i;

        public f(jc0 jc0Var, int i, int i2, int i3, int i4, int i5, int i6, int i7, uh[] uhVarArr) {
            this.a = jc0Var;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = uhVarArr;
        }

        private AudioTrack b(boolean z, ph phVar, int i) {
            int i2 = f92.a;
            if (i2 >= 29) {
                return new AudioTrack.Builder().setAudioAttributes(z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : phVar.a().a).setAudioFormat(new AudioFormat.Builder().setSampleRate(this.e).setChannelMask(this.f).setEncoding(this.g).build()).setTransferMode(1).setBufferSizeInBytes(this.h).setSessionId(i).setOffloadedPlayback(this.c == 1).build();
            }
            if (i2 < 21) {
                int iC = f92.c(phVar.d);
                return i == 0 ? new AudioTrack(iC, this.e, this.f, this.g, this.h, 1) : new AudioTrack(iC, this.e, this.f, this.g, this.h, 1, i);
            }
            return new AudioTrack(z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : phVar.a().a, new AudioFormat.Builder().setSampleRate(this.e).setChannelMask(this.f).setEncoding(this.g).build(), this.h, 1, i);
        }

        public final AudioTrack a(boolean z, ph phVar, int i) throws wh.b {
            try {
                AudioTrack audioTrackB = b(z, phVar, i);
                int state = audioTrackB.getState();
                if (state == 1) {
                    return audioTrackB;
                }
                try {
                    audioTrackB.release();
                } catch (Exception unused) {
                }
                throw new wh.b(state, this.e, this.f, this.h, this.a, this.c == 1, null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new wh.b(0, this.e, this.f, this.h, this.a, this.c == 1, e);
            }
        }
    }

    public static class g implements c {
        private final uh[] a;
        private final jy1 b;
        private final n12 c;

        public g(uh[] uhVarArr, jy1 jy1Var, n12 n12Var) {
            uh[] uhVarArr2 = new uh[uhVarArr.length + 2];
            this.a = uhVarArr2;
            System.arraycopy(uhVarArr, 0, uhVarArr2, 0, uhVarArr.length);
            this.b = jy1Var;
            this.c = n12Var;
            uhVarArr2[uhVarArr.length] = jy1Var;
            uhVarArr2[uhVarArr.length + 1] = n12Var;
        }

        public final uh[] a() {
            return this.a;
        }
    }

    public static final class h extends RuntimeException {
    }

    public static final class i {
        public final bi1 a;
        public final boolean b;
        public final long c;
        public final long d;

        private i(bi1 bi1Var, boolean z, long j, long j2) {
            this.a = bi1Var;
            this.b = z;
            this.c = j;
            this.d = j2;
        }
    }

    public static final class j<T extends Exception> {

        @Nullable
        private T a;
        private long b;
    }

    public final class k implements zh.a {
        @Override
        public final void a(long j) {
            wh.c cVar = hz.this.r;
            if (cVar != null) {
                ((hv0.a) cVar).a(j);
            }
        }

        @Override
        public final void b(long j, long j2, long j3, long j4) {
            StringBuilder sb = new StringBuilder("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            hz hzVar = hz.this;
            f fVar = hzVar.t;
            sb.append(fVar.c == 0 ? hzVar.B / ((long) fVar.b) : hzVar.C);
            sb.append(", ");
            sb.append(hz.this.j());
            et0.d("DefaultAudioSink", sb.toString());
        }

        private k() {
        }

        @Override
        public final void a(long j, long j2, long j3, long j4) {
            StringBuilder sb = new StringBuilder("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            hz hzVar = hz.this;
            f fVar = hzVar.t;
            sb.append(fVar.c == 0 ? hzVar.B / ((long) fVar.b) : hzVar.C);
            sb.append(", ");
            sb.append(hz.this.j());
            et0.d("DefaultAudioSink", sb.toString());
        }

        @Override
        public final void b(long j) {
            et0.d("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        @Override
        public final void a(int i, long j) {
            if (hz.this.r != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                hz hzVar = hz.this;
                ((hv0.a) hzVar.r).a(i, j, jElapsedRealtime - hzVar.Z);
            }
        }
    }

    @RequiresApi(29)
    public final class l {
        private final Handler a = new Handler();
        private final AudioTrack.StreamEventCallback b = new a();

        public class a extends AudioTrack.StreamEventCallback {
            public a() {
            }

            @Override
            public final void onDataRequest(AudioTrack audioTrack, int i) {
                hz hzVar = hz.this;
                if (audioTrack != hzVar.u) {
                    throw new IllegalStateException();
                }
                wh.c cVar = hzVar.r;
                if (cVar == null || !hzVar.U) {
                    return;
                }
                ((hv0.a) cVar).a();
            }

            @Override
            public final void onTearDown(AudioTrack audioTrack) {
                hz hzVar = hz.this;
                if (audioTrack != hzVar.u) {
                    throw new IllegalStateException();
                }
                wh.c cVar = hzVar.r;
                if (cVar == null || !hzVar.U) {
                    return;
                }
                ((hv0.a) cVar).a();
            }
        }

        public l() {
        }

        public final void a(AudioTrack audioTrack) {
            Handler handler = this.a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new defpackage.de1(handler), this.b);
        }

        public final void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.b);
            this.a.removeCallbacksAndMessages(null);
        }
    }

    public long j() {
        f fVar = this.t;
        return fVar.c == 0 ? this.D / ((long) fVar.d) : this.E;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:68:? A[SYNTHETIC] */
    private boolean k() throws wh.b {
        AudioTrack audioTrackA;
        mi1 mi1Var;
        if (!this.h.d()) {
            return false;
        }
        try {
            f fVar = this.t;
            fVar.getClass();
            try {
                audioTrackA = fVar.a(this.Y, this.v, this.W);
            } catch (wh.b e2) {
                wh.c cVar = this.r;
                if (cVar != null) {
                    ((hv0.a) cVar).a(e2);
                }
                throw e2;
            }
        } catch (wh.b e3) {
            f fVar2 = this.t;
            if (fVar2.h > 1000000) {
                f fVar3 = new f(fVar2.a, fVar2.b, fVar2.c, fVar2.d, fVar2.e, fVar2.f, fVar2.g, 1000000, fVar2.i);
                try {
                    try {
                        audioTrackA = fVar3.a(this.Y, this.v, this.W);
                        this.t = fVar3;
                    } catch (wh.b e4) {
                        wh.c cVar2 = this.r;
                        if (cVar2 != null) {
                            ((hv0.a) cVar2).a(e4);
                        }
                        throw e4;
                    }
                } catch (wh.b e5) {
                    e3.addSuppressed(e5);
                    if (this.t.c == 1) {
                        throw e3;
                    }
                    this.a0 = true;
                    throw e3;
                }
            }
            if (this.t.c == 1) {
                throw e3;
            }
            this.a0 = true;
            throw e3;
        }
        this.u = audioTrackA;
        if (a(audioTrackA)) {
            AudioTrack audioTrack = this.u;
            if (this.m == null) {
                this.m = new l();
            }
            this.m.a(audioTrack);
            if (this.l != 3) {
                AudioTrack audioTrack2 = this.u;
                jc0 jc0Var = this.t.a;
                audioTrack2.setOffloadDelayPadding(jc0Var.C, jc0Var.D);
            }
        }
        int i2 = f92.a;
        if (i2 >= 31 && (mi1Var = this.q) != null) {
            b.a(this.u, mi1Var);
        }
        this.W = this.u.getAudioSessionId();
        zh zhVar = this.i;
        AudioTrack audioTrack3 = this.u;
        f fVar4 = this.t;
        zhVar.a(audioTrack3, fVar4.c == 2, fVar4.g, fVar4.d, fVar4.h);
        if (l()) {
            if (i2 >= 21) {
                this.u.setVolume(this.J);
            } else {
                AudioTrack audioTrack4 = this.u;
                float f2 = this.J;
                audioTrack4.setStereoVolume(f2, f2);
            }
        }
        int i3 = this.X.a;
        if (i3 != 0) {
            this.u.attachAuxEffect(i3);
            this.u.setAuxEffectSendLevel(this.X.b);
        }
        this.H = true;
        return true;
    }

    private boolean l() {
        return this.u != null;
    }

    private void m() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        int i2 = 0;
        this.b0 = false;
        this.F = 0;
        this.x = new i(i().a, i().b, 0L, 0L);
        this.I = 0L;
        this.w = null;
        this.j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.z = null;
        this.A = 0;
        this.e.j();
        while (true) {
            uh[] uhVarArr = this.K;
            if (i2 >= uhVarArr.length) {
                return;
            }
            uh uhVar = uhVarArr[i2];
            uhVar.flush();
            this.L[i2] = uhVar.c();
            i2++;
        }
    }

    @Override
    public final void flush() {
        if (l()) {
            m();
            if (this.i.b()) {
                this.u.pause();
            }
            if (a(this.u)) {
                l lVar = this.m;
                lVar.getClass();
                lVar.b(this.u);
            }
            AudioTrack audioTrack = this.u;
            this.u = null;
            if (f92.a < 21 && !this.V) {
                this.W = 0;
            }
            f fVar = this.s;
            if (fVar != null) {
                this.t = fVar;
                this.s = null;
            }
            this.i.d();
            this.h.c();
            new a(audioTrack).start();
        }
        ((j) this.o).a = null;
        ((j) this.n).a = null;
    }

    @Override
    public final bi1 getPlaybackParameters() {
        return this.k ? this.y : i().a;
    }

    @Override
    public final void pause() {
        this.U = false;
        if (l() && this.i.c()) {
            this.u.pause();
        }
    }

    @Override
    public final void play() {
        this.U = true;
        if (l()) {
            this.i.e();
            this.u.play();
        }
    }

    @Override
    public final void setVolume(float f2) {
        if (this.J != f2) {
            this.J = f2;
            if (l()) {
                if (f92.a >= 21) {
                    this.u.setVolume(this.J);
                    return;
                }
                AudioTrack audioTrack = this.u;
                float f3 = this.J;
                audioTrack.setStereoVolume(f3, f3);
            }
        }
    }

    private hz(e eVar) {
        this.a = eVar.a;
        g gVar = eVar.b;
        this.b = gVar;
        int i2 = f92.a;
        this.c = i2 >= 21 && eVar.c;
        this.k = i2 >= 23 && eVar.d;
        this.l = i2 >= 29 ? eVar.e : 0;
        this.p = eVar.f;
        ir irVar = new ir(0);
        this.h = irVar;
        irVar.e();
        this.i = new zh(new k());
        ho hoVar = new ho();
        this.d = hoVar;
        h72 h72Var = new h72();
        this.e = h72Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new tq1(), hoVar, h72Var);
        Collections.addAll(arrayList, gVar.a());
        this.f = (uh[]) arrayList.toArray(new uh[0]);
        this.g = new uh[]{new cc0()};
        this.J = 1.0f;
        this.v = ph.h;
        this.W = 0;
        this.X = new ji();
        bi1 bi1Var = bi1.e;
        this.x = new i(bi1Var, false, 0L, 0L);
        this.y = bi1Var;
        this.R = -1;
        this.K = new uh[0];
        this.L = new ByteBuffer[0];
        this.j = new ArrayDeque<>();
        this.n = new j<>();
        this.o = new j<>();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0083  */
    private void a(long j2) {
        bi1 bi1Var;
        boolean z;
        if (this.Y || !"audio/raw".equals(this.t.a.m)) {
            bi1Var = bi1.e;
        } else {
            int i2 = this.t.a.B;
            if (this.c) {
                int i3 = f92.a;
                if (i2 == 536870912 || i2 == 805306368 || i2 == 4) {
                    bi1Var = bi1.e;
                }
            }
            c cVar = this.b;
            bi1Var = i().a;
            g gVar = (g) cVar;
            gVar.c.b(bi1Var.b);
            gVar.c.a(bi1Var.c);
        }
        bi1 bi1Var2 = bi1Var;
        int i4 = 0;
        if (this.Y || !"audio/raw".equals(this.t.a.m)) {
            z = false;
        } else {
            int i5 = this.t.a.B;
            if (this.c) {
                int i6 = f92.a;
                if (i5 == 536870912 || i5 == 805306368 || i5 == 4) {
                    z = false;
                }
            }
            c cVar2 = this.b;
            z = i().b;
            ((g) cVar2).b.a(z);
        }
        this.j.add(new i(bi1Var2, z, Math.max(0L, j2), (j() * 1000000) / ((long) this.t.e)));
        uh[] uhVarArr = this.t.i;
        ArrayList arrayList = new ArrayList();
        for (uh uhVar : uhVarArr) {
            if (uhVar.isActive()) {
                arrayList.add(uhVar);
            } else {
                uhVar.flush();
            }
        }
        int size = arrayList.size();
        this.K = (uh[]) arrayList.toArray(new uh[size]);
        this.L = new ByteBuffer[size];
        while (true) {
            uh[] uhVarArr2 = this.K;
            if (i4 >= uhVarArr2.length) {
                break;
            }
            uh uhVar2 = uhVarArr2[i4];
            uhVar2.flush();
            this.L[i4] = uhVar2.c();
            i4++;
        }
        wh.c cVar3 = this.r;
        if (cVar3 != null) {
            ((hv0.a) cVar3).a(z);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private boolean h() throws com.yandex.mobile.ads.impl.wh.e {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.R = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.R
            com.yandex.mobile.ads.impl.uh[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.d()
        L1f:
            r9.b(r7)
            boolean r0 = r4.a()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.R
            int r0 = r0 + r1
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.a(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.hz.h():boolean");
    }

    private i i() {
        i iVar = this.w;
        if (iVar != null) {
            return iVar;
        }
        return !this.j.isEmpty() ? this.j.getLast() : this.x;
    }

    @Override
    public final int b(jc0 jc0Var) {
        if (!"audio/raw".equals(jc0Var.m)) {
            return ((this.a0 || !a(jc0Var, this.v)) && this.a.a(jc0Var) == null) ? 0 : 2;
        }
        if (f92.e(jc0Var.B)) {
            int i2 = jc0Var.B;
            return (i2 == 2 || (this.c && i2 == 4)) ? 2 : 1;
        }
        et0.d("DefaultAudioSink", "Invalid PCM encoding: " + jc0Var.B);
        return 0;
    }

    @Override
    public final void c() {
        if (f92.a < 21) {
            throw new IllegalStateException();
        }
        if (!this.V) {
            throw new IllegalStateException();
        }
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override
    public final void d() throws wh.e {
        if (!this.S && l() && h()) {
            if (!this.T) {
                this.T = true;
                this.i.c(j());
                this.u.stop();
                this.A = 0;
            }
            this.S = true;
        }
    }

    @Override
    public final boolean e() {
        return l() && this.i.d(j());
    }

    @Override
    public final void f() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override
    public final void g() {
        this.G = true;
    }

    private void b(long j2) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.L[i2 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = uh.a;
                }
            }
            if (i2 == length) {
                a(byteBuffer, j2);
            } else {
                uh uhVar = this.K[i2];
                if (i2 > this.R) {
                    uhVar.a(byteBuffer);
                }
                ByteBuffer byteBufferC = uhVar.c();
                this.L[i2] = byteBufferC;
                if (byteBufferC.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    @Override
    public final void b() {
        flush();
        for (uh uhVar : this.f) {
            uhVar.b();
        }
        for (uh uhVar2 : this.g) {
            uhVar2.b();
        }
        this.U = false;
        this.a0 = false;
    }

    @RequiresApi(23)
    private void b(bi1 bi1Var) {
        if (l()) {
            try {
                this.u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(bi1Var.b).setPitch(bi1Var.c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                et0.b("DefaultAudioSink", "Failed to set playback params", e2);
            }
            bi1Var = new bi1(this.u.getPlaybackParams().getSpeed(), this.u.getPlaybackParams().getPitch());
            this.i.a(bi1Var.b);
        }
        this.y = bi1Var;
    }

    @Override
    public final void b(boolean z) {
        bi1 bi1Var = i().a;
        i iVarI = i();
        if (bi1Var.equals(iVarI.a) && z == iVarI.b) {
            return;
        }
        i iVar = new i(bi1Var, z, C.TIME_UNSET, C.TIME_UNSET);
        if (l()) {
            this.w = iVar;
        } else {
            this.x = iVar;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final void a(jc0 jc0Var, @Nullable int[] iArr) throws wh.a {
        int iB;
        int iIntValue;
        uh[] uhVarArr;
        int iB2;
        int iB3;
        int i2;
        int i3;
        int iMax;
        int i4;
        uh[] uhVarArr2;
        int[] iArr2;
        if ("audio/raw".equals(jc0Var.m)) {
            if (f92.e(jc0Var.B)) {
                iB2 = f92.b(jc0Var.B, jc0Var.z);
                int i5 = jc0Var.B;
                if (this.c && (i5 == 536870912 || i5 == 805306368 || i5 == 4)) {
                    uhVarArr2 = this.g;
                } else {
                    uhVarArr2 = this.f;
                }
                this.e.a(jc0Var.C, jc0Var.D);
                if (f92.a < 21 && jc0Var.z == 8 && iArr == null) {
                    iArr2 = new int[6];
                    for (int i6 = 0; i6 < 6; i6++) {
                        iArr2[i6] = i6;
                    }
                } else {
                    iArr2 = iArr;
                }
                this.d.a(iArr2);
                uh.a aVar = new uh.a(jc0Var.A, jc0Var.z, jc0Var.B);
                for (uh uhVar : uhVarArr2) {
                    try {
                        uh.a aVarA = uhVar.a(aVar);
                        if (uhVar.isActive()) {
                            aVar = aVarA;
                        }
                    } catch (uh.b e2) {
                        throw new wh.a(e2, jc0Var);
                    }
                }
                int i7 = aVar.c;
                i2 = aVar.a;
                int iA = f92.a(aVar.b);
                uhVarArr = uhVarArr2;
                i3 = 0;
                iB = f92.b(i7, aVar.b);
                iIntValue = iA;
                iB3 = i7;
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            uh[] uhVarArr3 = new uh[0];
            int i8 = jc0Var.A;
            iB = -1;
            if (a(jc0Var, this.v)) {
                String str = jc0Var.m;
                str.getClass();
                uhVarArr = uhVarArr3;
                iB3 = w01.b(str, jc0Var.j);
                iB2 = -1;
                iIntValue = f92.a(jc0Var.z);
                i2 = i8;
                i3 = 1;
            } else {
                Pair<Integer, Integer> pairA = this.a.a(jc0Var);
                if (pairA != null) {
                    int iIntValue2 = ((Integer) pairA.first).intValue();
                    iIntValue = ((Integer) pairA.second).intValue();
                    uhVarArr = uhVarArr3;
                    iB2 = -1;
                    iB3 = iIntValue2;
                    i2 = i8;
                    i3 = 2;
                } else {
                    throw new wh.a("Unable to configure passthrough for: " + jc0Var, jc0Var);
                }
            }
        }
        iz izVar = this.p;
        int minBufferSize = AudioTrack.getMinBufferSize(i2, iIntValue, iB3);
        if (minBufferSize != -2) {
            double d2 = this.k ? 8.0d : 1.0d;
            izVar.getClass();
            if (i3 != 0) {
                int i9 = Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
                if (i3 == 1) {
                    i3 = i3;
                    switch (iB3) {
                        case 5:
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 6:
                        case 18:
                            i9 = 768000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 7:
                            i9 = 192000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 8:
                            i9 = 2250000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 9:
                            i9 = 40000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 10:
                            i9 = 100000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 11:
                            i9 = 16000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 12:
                            i9 = 7000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 13:
                        default:
                            throw new IllegalArgumentException();
                        case 14:
                            i9 = 3062500;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 15:
                            i9 = 8000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 16:
                            i9 = 256000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                        case 17:
                            i9 = 336000;
                            iMax = hq0.a((((long) 50000000) * ((long) i9)) / 1000000);
                            break;
                    }
                } else if (i3 == 2) {
                    int i10 = iB3 == 5 ? 500000 : 250000;
                    switch (iB3) {
                        case 5:
                            break;
                        case 6:
                        case 18:
                            i9 = 768000;
                            break;
                        case 7:
                            i9 = 192000;
                            break;
                        case 8:
                            i9 = 2250000;
                            break;
                        case 9:
                            i9 = 40000;
                            break;
                        case 10:
                            i9 = 100000;
                            break;
                        case 11:
                            i9 = 16000;
                            break;
                        case 12:
                            i9 = 7000;
                            break;
                        case 13:
                        default:
                            throw new IllegalArgumentException();
                        case 14:
                            i9 = 3062500;
                            break;
                        case 15:
                            i9 = 8000;
                            break;
                        case 16:
                            i9 = 256000;
                            break;
                        case 17:
                            i9 = 336000;
                            break;
                    }
                    iMax = hq0.a((((long) i10) * ((long) i9)) / 1000000);
                } else {
                    throw new IllegalArgumentException();
                }
            } else {
                i3 = i3;
                long j2 = i2;
                long j3 = iB;
                int iA2 = hq0.a(((((long) 250000) * j2) * j3) / 1000000);
                int iA3 = hq0.a(((((long) 750000) * j2) * j3) / 1000000);
                int i11 = f92.a;
                iMax = Math.max(iA2, Math.min(4 * minBufferSize, iA3));
            }
            int iMax2 = (((Math.max(minBufferSize, (int) (((double) iMax) * d2)) + iB) - 1) / iB) * iB;
            if (iB3 == 0) {
                throw new wh.a("Invalid output encoding (mode=" + i3 + ") for: " + jc0Var, jc0Var);
            }
            if (iIntValue != 0) {
                this.a0 = false;
                f fVar = new f(jc0Var, i4, i3, iB, i2, iIntValue, iB3, iMax2, uhVarArr);
                if (l()) {
                    i4 = iB2;
                    this.s = fVar;
                    return;
                } else {
                    i4 = iB2;
                    this.t = fVar;
                    return;
                }
            }
            throw new wh.a("Invalid output channel config (mode=" + i3 + ") for: " + jc0Var, jc0Var);
        }
        throw new IllegalStateException();
    }

    @Override
    public final long a(boolean z) {
        long jA;
        if (!l() || this.H) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.i.a(z), (j() * 1000000) / ((long) this.t.e));
        while (!this.j.isEmpty() && jMin >= this.j.getFirst().d) {
            this.x = this.j.remove();
        }
        i iVar = this.x;
        long j2 = jMin - iVar.d;
        if (iVar.a.equals(bi1.e)) {
            jA = this.x.c + j2;
        } else if (this.j.isEmpty()) {
            jA = ((g) this.b).c.a(j2) + this.x.c;
        } else {
            i first = this.j.getFirst();
            long jRound = first.d - jMin;
            float f2 = this.x.a.b;
            int i2 = f92.a;
            if (f2 != 1.0f) {
                jRound = Math.round(jRound * ((double) f2));
            }
            jA = first.c - jRound;
        }
        return ((((g) this.b).b.i() * 1000000) / ((long) this.t.e)) + jA;
    }

    @Override
    public final boolean a(ByteBuffer byteBuffer, long j2, int i2) throws Exception {
        long j3;
        int iA;
        int i3;
        byte b2;
        int i4;
        byte b3;
        int i5;
        ByteBuffer byteBuffer2 = this.M;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            throw new IllegalArgumentException();
        }
        if (this.s != null) {
            if (!h()) {
                return false;
            }
            f fVar = this.s;
            f fVar2 = this.t;
            fVar.getClass();
            if (fVar2.c == fVar.c && fVar2.g == fVar.g && fVar2.e == fVar.e && fVar2.f == fVar.f && fVar2.d == fVar.d) {
                this.t = this.s;
                this.s = null;
                if (a(this.u) && this.l != 3) {
                    if (this.u.getPlayState() == 3) {
                        this.u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.u;
                    jc0 jc0Var = this.t.a;
                    audioTrack.setOffloadDelayPadding(jc0Var.C, jc0Var.D);
                    this.b0 = true;
                }
            } else {
                if (!this.T) {
                    this.T = true;
                    this.i.c(j());
                    this.u.stop();
                    this.A = 0;
                }
                if (e()) {
                    return false;
                }
                flush();
            }
            a(j2);
        }
        if (!l()) {
            try {
                if (!k()) {
                    return false;
                }
            } catch (wh.b e2) {
                if (!e2.c) {
                    j<wh.b> jVar = this.n;
                    jVar.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (((j) jVar).a == null) {
                        ((j) jVar).a = e2;
                        ((j) jVar).b = 100 + jElapsedRealtime;
                    }
                    if (jElapsedRealtime < ((j) jVar).b) {
                        return false;
                    }
                    Exception exc = ((j) jVar).a;
                    if (exc != e2) {
                        exc.addSuppressed(e2);
                    }
                    Exception exc2 = ((j) jVar).a;
                    ((j) jVar).a = null;
                    throw exc2;
                }
                throw e2;
            }
        }
        ((j) this.n).a = null;
        if (this.H) {
            this.I = Math.max(0L, j2);
            this.G = false;
            this.H = false;
            if (this.k && f92.a >= 23) {
                b(this.y);
            }
            a(j2);
            if (this.U) {
                play();
            }
        }
        if (!this.i.f(j())) {
            return false;
        }
        if (this.M == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                if (!byteBuffer.hasRemaining()) {
                    return true;
                }
                f fVar3 = this.t;
                if (fVar3.c != 0 && this.F == 0) {
                    int i6 = fVar3.g;
                    switch (i6) {
                        case 5:
                        case 6:
                        case 18:
                            iA = t.a(byteBuffer);
                            break;
                        case 7:
                        case 8:
                            int iPosition = byteBuffer.position();
                            byte b4 = byteBuffer.get(iPosition);
                            if (b4 != -2) {
                                if (b4 == -1) {
                                    i3 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                                    b3 = byteBuffer.get(iPosition + 7);
                                } else if (b4 != 31) {
                                    i3 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                                    b2 = byteBuffer.get(iPosition + 5);
                                } else {
                                    i3 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                                    b3 = byteBuffer.get(iPosition + 6);
                                }
                                i4 = b3 & 60;
                                iA = (((i4 >> 2) | i3) + 1) * 32;
                            } else {
                                i3 = (byteBuffer.get(iPosition + 5) & 1) << 6;
                                b2 = byteBuffer.get(iPosition + 4);
                            }
                            i4 = b2 & 252;
                            iA = (((i4 >> 2) | i3) + 1) * 32;
                            break;
                        case 9:
                            int iPosition2 = byteBuffer.position();
                            int i7 = f92.a;
                            int iReverseBytes = byteBuffer.getInt(iPosition2);
                            if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                iReverseBytes = Integer.reverseBytes(iReverseBytes);
                            }
                            iA = f21.b(iReverseBytes);
                            if (iA == -1) {
                                throw new IllegalArgumentException();
                            }
                            break;
                        case 10:
                        case 16:
                            iA = 1024;
                            break;
                        case 11:
                        case 12:
                            iA = 2048;
                            break;
                        case 13:
                        default:
                            throw new IllegalStateException(oe.a("Unexpected audio encoding: ", i6));
                        case 14:
                            int iPosition3 = byteBuffer.position();
                            int iLimit = byteBuffer.limit() - 10;
                            int i8 = iPosition3;
                            while (true) {
                                if (i8 <= iLimit) {
                                    int i9 = f92.a;
                                    int iReverseBytes2 = byteBuffer.getInt(i8 + 4);
                                    if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                        iReverseBytes2 = Integer.reverseBytes(iReverseBytes2);
                                    }
                                    if ((iReverseBytes2 & (-2)) == -126718022) {
                                        i5 = i8 - iPosition3;
                                    } else {
                                        i8++;
                                    }
                                } else {
                                    i5 = -1;
                                }
                            }
                            if (i5 != -1) {
                                iA = (40 << ((byteBuffer.get((byteBuffer.position() + i5) + ((byteBuffer.get((byteBuffer.position() + i5) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                            } else {
                                iA = 0;
                            }
                            break;
                        case 15:
                            iA = 512;
                            break;
                        case 17:
                            byte[] bArr = new byte[16];
                            int iPosition4 = byteBuffer.position();
                            byteBuffer.get(bArr);
                            byteBuffer.position(iPosition4);
                            iA = w.a(new zf1(16, bArr)).c;
                            break;
                    }
                    this.F = iA;
                    if (iA == 0) {
                        return true;
                    }
                }
                if (this.w != null) {
                    if (!h()) {
                        return false;
                    }
                    a(j2);
                    this.w = null;
                }
                long j4 = this.I;
                f fVar4 = this.t;
                if (fVar4.c == 0) {
                    j3 = this.B / ((long) fVar4.b);
                } else {
                    j3 = this.C;
                }
                long jI = (((j3 - this.e.i()) * 1000000) / ((long) fVar4.a.A)) + j4;
                if (!this.G && Math.abs(jI - j2) > 200000) {
                    ((hv0.a) this.r).a(new wh.d(j2, jI));
                    this.G = true;
                }
                if (this.G) {
                    if (!h()) {
                        return false;
                    }
                    long j5 = j2 - jI;
                    this.I += j5;
                    this.G = false;
                    a(j2);
                    wh.c cVar = this.r;
                    if (cVar != null && j5 != 0) {
                        ((hv0.a) cVar).c();
                    }
                }
                if (this.t.c == 0) {
                    this.B += (long) byteBuffer.remaining();
                } else {
                    this.C = (((long) this.F) * ((long) i2)) + this.C;
                }
                this.M = byteBuffer;
                this.N = i2;
            } else {
                throw new IllegalArgumentException();
            }
        }
        b(j2);
        if (!this.M.hasRemaining()) {
            this.M = null;
            this.N = 0;
            return true;
        }
        if (!this.i.e(j())) {
            return false;
        }
        et0.d("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override
    public final boolean a() {
        return !l() || (this.S && !e());
    }

    @Override
    public final void a(ph phVar) {
        if (this.v.equals(phVar)) {
            return;
        }
        this.v = phVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override
    public final void a(int i2) {
        if (this.W != i2) {
            this.W = i2;
            this.V = i2 != 0;
            flush();
        }
    }

    @Override
    public final void a(ji jiVar) {
        if (this.X.equals(jiVar)) {
            return;
        }
        int i2 = jiVar.a;
        float f2 = jiVar.b;
        AudioTrack audioTrack = this.u;
        if (audioTrack != null) {
            if (this.X.a != i2) {
                audioTrack.attachAuxEffect(i2);
            }
            if (i2 != 0) {
                this.u.setAuxEffectSendLevel(f2);
            }
        }
        this.X = jiVar;
    }

    public final void a(wh.c cVar) {
        this.r = cVar;
    }

    @Override
    public final void a(bi1 bi1Var) {
        float f2 = bi1Var.b;
        int i2 = f92.a;
        bi1 bi1Var2 = new bi1(Math.max(0.1f, Math.min(f2, 8.0f)), Math.max(0.1f, Math.min(bi1Var.c, 8.0f)));
        if (this.k && f92.a >= 23) {
            b(bi1Var2);
            return;
        }
        boolean z = i().b;
        i iVarI = i();
        if (bi1Var2.equals(iVarI.a) && z == iVarI.b) {
            return;
        }
        i iVar = new i(bi1Var2, z, C.TIME_UNSET, C.TIME_UNSET);
        if (l()) {
            this.w = iVar;
        } else {
            this.x = iVar;
        }
    }

    @Override
    public final void a(@Nullable mi1 mi1Var) {
        this.q = mi1Var;
    }

    @Override
    public final boolean a(jc0 jc0Var) {
        return b(jc0Var) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e0  */
    private void a(ByteBuffer byteBuffer, long j2) throws Exception {
        int iWrite;
        wh.c cVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 == null) {
                this.O = byteBuffer;
                if (f92.a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.P = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.P, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.Q = 0;
                }
            } else if (byteBuffer2 != byteBuffer) {
                throw new IllegalArgumentException();
            }
            int iRemaining2 = byteBuffer.remaining();
            int i2 = f92.a;
            if (i2 < 21) {
                int iB = this.i.b(this.D);
                if (iB > 0) {
                    iWrite = this.u.write(this.P, this.Q, Math.min(iRemaining2, iB));
                    if (iWrite > 0) {
                        this.Q += iWrite;
                        byteBuffer.position(byteBuffer.position() + iWrite);
                    }
                } else {
                    iWrite = 0;
                }
            } else if (!this.Y) {
                iWrite = this.u.write(byteBuffer, iRemaining2, 1);
            } else if (j2 != C.TIME_UNSET) {
                AudioTrack audioTrack = this.u;
                if (i2 >= 26) {
                    iWrite = audioTrack.write(byteBuffer, iRemaining2, 1, j2 * 1000);
                } else {
                    if (this.z == null) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                        this.z = byteBufferAllocate;
                        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                        this.z.putInt(1431633921);
                    }
                    if (this.A == 0) {
                        this.z.putInt(4, iRemaining2);
                        this.z.putLong(8, j2 * 1000);
                        this.z.position(0);
                        this.A = iRemaining2;
                    }
                    int iRemaining3 = this.z.remaining();
                    if (iRemaining3 > 0) {
                        int iWrite2 = audioTrack.write(this.z, iRemaining3, 1);
                        if (iWrite2 < 0) {
                            this.A = 0;
                            iWrite = iWrite2;
                        } else if (iWrite2 < iRemaining3) {
                            iWrite = 0;
                        } else {
                            iWrite = audioTrack.write(byteBuffer, iRemaining2, 1);
                            if (iWrite < 0) {
                                this.A = 0;
                            } else {
                                this.A -= iWrite;
                            }
                        }
                    } else {
                        iWrite = audioTrack.write(byteBuffer, iRemaining2, 1);
                        if (iWrite < 0) {
                            this.A = 0;
                        } else {
                            this.A -= iWrite;
                        }
                    }
                }
            } else {
                throw new IllegalStateException();
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iWrite < 0) {
                boolean z = (i2 >= 24 && iWrite == -6) || iWrite == -32;
                if (z && this.t.c == 1) {
                    this.a0 = true;
                }
                wh.e eVar = new wh.e(iWrite, this.t.a, z);
                wh.c cVar2 = this.r;
                if (cVar2 != null) {
                    ((hv0.a) cVar2).a(eVar);
                }
                if (!eVar.c) {
                    j<wh.e> jVar = this.o;
                    jVar.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (((j) jVar).a == null) {
                        ((j) jVar).a = eVar;
                        ((j) jVar).b = 100 + jElapsedRealtime;
                    }
                    if (jElapsedRealtime >= ((j) jVar).b) {
                        Exception exc = ((j) jVar).a;
                        if (exc != eVar) {
                            exc.addSuppressed(eVar);
                        }
                        Exception exc2 = ((j) jVar).a;
                        ((j) jVar).a = null;
                        throw exc2;
                    }
                    return;
                }
                throw eVar;
            }
            ((j) this.o).a = null;
            if (a(this.u)) {
                if (this.E > 0) {
                    this.b0 = false;
                }
                if (this.U && (cVar = this.r) != null && iWrite < iRemaining2 && !this.b0) {
                    ((hv0.a) cVar).b();
                }
            }
            int i3 = this.t.c;
            if (i3 == 0) {
                this.D += (long) iWrite;
            }
            if (iWrite == iRemaining2) {
                if (i3 != 0) {
                    if (byteBuffer != this.M) {
                        throw new IllegalStateException();
                    }
                    this.E = (((long) this.F) * ((long) this.N)) + this.E;
                }
                this.O = null;
            }
        }
    }

    private boolean a(jc0 jc0Var, ph phVar) {
        int iA;
        int playbackOffloadSupport;
        int i2 = f92.a;
        if (i2 < 29 || this.l == 0) {
            return false;
        }
        String str = jc0Var.m;
        str.getClass();
        int iB = w01.b(str, jc0Var.j);
        if (iB == 0 || (iA = f92.a(jc0Var.z)) == 0) {
            return false;
        }
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(jc0Var.A).setChannelMask(iA).setEncoding(iB).build();
        AudioAttributes audioAttributes = phVar.a().a;
        if (i2 >= 31) {
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatBuild, audioAttributes);
        } else if (AudioManager.isOffloadedPlaybackSupported(audioFormatBuild, audioAttributes)) {
            playbackOffloadSupport = (i2 == 30 && f92.d.startsWith("Pixel")) ? 2 : 1;
        } else {
            playbackOffloadSupport = 0;
        }
        if (playbackOffloadSupport == 0) {
            return false;
        }
        if (playbackOffloadSupport == 1) {
            return ((jc0Var.C != 0 || jc0Var.D != 0) && (this.l == 1)) ? false : true;
        }
        if (playbackOffloadSupport == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private static boolean a(AudioTrack audioTrack) {
        return f92.a >= 29 && audioTrack.isOffloadedPlayback();
    }
}
