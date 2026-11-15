package defpackage;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzcm;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzqa;
import com.google.android.gms.internal.ads.zzqb;
import com.google.android.gms.internal.ads.zzqd;
import com.google.android.gms.internal.ads.zzqe;
import defpackage.bjj;
import defpackage.xij;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public final class xij implements phj {
    public static final Object a0 = new Object();
    public static ScheduledExecutorService b0;
    public static int c0;
    public long A;
    public long B;
    public int C;
    public boolean D;
    public boolean E;
    public long F;
    public float G;
    public ByteBuffer H;
    public int I;
    public ByteBuffer J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public int O;
    public klh P;
    public sgj Q;
    public long R;
    public boolean S;
    public boolean T;
    public Looper U;
    public long V;
    public long W;
    public Handler X;
    public final cij Y;
    public final vhj Z;
    public final Context a;
    public final uhj b;
    public final hjj c;
    public final zzfww d;
    public final zzfww e;
    public final thj f;
    public final ArrayDeque g;
    public vij h;
    public final gij i;
    public final gij j;
    public tfj k;
    public ohj l;
    public bij m;
    public bij n;
    public aof o;
    public AudioTrack p;
    public ggj q;
    public qgj r;
    public fij s;
    public hvg t;
    public dij u;
    public dij v;
    public vwe w;
    public boolean x;
    public long y;
    public long z;

    public xij(aij aijVar, wij wijVar) {
        Context context = aijVar.a;
        this.a = context;
        this.t = hvg.b;
        wij wijVar2 = null;
        this.q = context != null ? null : aijVar.b;
        this.Y = aijVar.f;
        int i = kfh.a;
        vhj vhjVar = aijVar.g;
        vhjVar.getClass();
        this.Z = vhjVar;
        this.f = new thj(new sij(this, wijVar2));
        uhj uhjVar = new uhj();
        this.b = uhjVar;
        hjj hjjVar = new hjj();
        this.c = hjjVar;
        this.d = zzfww.zzq(new vuf(), uhjVar, hjjVar);
        this.e = zzfww.zzq(new gjj(), uhjVar, hjjVar);
        this.G = 1.0f;
        this.O = 0;
        this.P = new klh(0, 0.0f);
        vwe vweVar = vwe.d;
        this.v = new dij(vweVar, 0L, 0L, null);
        this.w = vweVar;
        this.x = false;
        this.g = new ArrayDeque();
        this.i = new gij();
        this.j = new gij();
    }

    public static boolean P(AudioTrack audioTrack) {
        return kfh.a >= 29 && audioTrack.isOffloadedPlayback();
    }

    public static final AudioTrack R(ehj ehjVar, hvg hvgVar, int i, erj erjVar) throws zzqb {
        try {
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(hvgVar.a().a).setAudioFormat(kfh.S(ehjVar.b, ehjVar.c, ehjVar.a)).setTransferMode(1).setBufferSizeInBytes(ehjVar.e).setSessionId(i);
            if (kfh.a >= 29) {
                sessionId.setOffloadedPlayback(ehjVar.d);
            }
            AudioTrack audioTrackBuild = sessionId.build();
            int state = audioTrackBuild.getState();
            if (state == 1) {
                return audioTrackBuild;
            }
            try {
                audioTrackBuild.release();
            } catch (Exception unused) {
            }
            throw new zzqb(state, ehjVar.b, ehjVar.c, ehjVar.a, erjVar, ehjVar.d, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new zzqb(0, ehjVar.b, ehjVar.c, ehjVar.a, erjVar, ehjVar.d, e);
        }
    }

    public static void v(xij xijVar) {
        if (xijVar.W >= 300000) {
            ((bjj) xijVar.l).a.N0 = true;
            xijVar.W = 0L;
        }
    }

    public static void x(AudioTrack audioTrack, final ohj ohjVar, Handler handler, final ehj ehjVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (ohjVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ((bjj) ohjVar).a.C0.p(ehjVar);
                    }
                });
            }
            synchronized (a0) {
                try {
                    int i = c0 - 1;
                    c0 = i;
                    if (i == 0) {
                        b0.shutdown();
                        b0 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            if (ohjVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        ((bjj) ohjVar).a.C0.p(ehjVar);
                    }
                });
            }
            synchronized (a0) {
                try {
                    int i2 = c0 - 1;
                    c0 = i2;
                    if (i2 == 0) {
                        b0.shutdown();
                        b0 = null;
                    }
                    throw th2;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public static boolean z() {
        boolean z;
        synchronized (a0) {
            z = c0 > 0;
        }
        return z;
    }

    public final long A() {
        bij bijVar = this.n;
        return bijVar.c == 0 ? this.y / ((long) bijVar.b) : this.z;
    }

    public final long B() {
        bij bijVar = this.n;
        if (bijVar.c != 0) {
            return this.B;
        }
        long j = this.A;
        long j2 = bijVar.d;
        int i = kfh.a;
        return ((j + j2) - 1) / j2;
    }

    public final AudioTrack C(bij bijVar) throws zzqb {
        try {
            return R(bijVar.a(), this.t, this.O, bijVar.a);
        } catch (zzqb e) {
            ohj ohjVar = this.l;
            if (ohjVar != null) {
                ohjVar.b(e);
            }
            throw e;
        }
    }

    public final void D(long j) {
        vwe vweVar;
        boolean z;
        if (Q()) {
            cij cijVar = this.Y;
            vweVar = this.w;
            cijVar.c(vweVar);
        } else {
            vweVar = vwe.d;
        }
        vwe vweVar2 = vweVar;
        this.w = vweVar2;
        if (Q()) {
            cij cijVar2 = this.Y;
            z = this.x;
            cijVar2.d(z);
        } else {
            z = false;
        }
        this.x = z;
        this.g.add(new dij(vweVar2, Math.max(0L, j), kfh.O(B(), this.n.e), null));
        M();
        ohj ohjVar = this.l;
        if (ohjVar != null) {
            ((bjj) ohjVar).a.C0.w(this.x);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    public final void E(long j) throws zzqe {
        ohj ohjVar;
        if (this.J == null) {
            return;
        }
        gij gijVar = this.j;
        if (gijVar.c()) {
            return;
        }
        int iRemaining = this.J.remaining();
        boolean z = true;
        int iWrite = this.p.write(this.J, iRemaining, 1);
        this.R = SystemClock.elapsedRealtime();
        if (iWrite < 0) {
            if ((kfh.a < 24 || iWrite != -6) && iWrite != -32) {
                z = false;
            } else if (B() <= 0) {
                if (P(this.p)) {
                    F();
                } else {
                    z = false;
                }
            }
            zzqe zzqeVar = new zzqe(iWrite, this.n.a, z);
            ohj ohjVar2 = this.l;
            if (ohjVar2 != null) {
                ohjVar2.b(zzqeVar);
            }
            if (!zzqeVar.zzb || this.a == null) {
                gijVar.b(zzqeVar);
                return;
            } else {
                this.q = ggj.c;
                throw zzqeVar;
            }
        }
        gijVar.a();
        if (P(this.p)) {
            if (this.B > 0) {
                this.T = false;
            }
            if (this.N && (ohjVar = this.l) != null && iWrite < iRemaining) {
            }
        }
        int i = this.n.c;
        if (i == 0) {
            this.A += (long) iWrite;
        }
        if (iWrite == iRemaining) {
            if (i != 0) {
                n7g.f(this.J == this.H);
                this.B += ((long) this.C) * ((long) this.I);
            }
            this.J = null;
        }
    }

    public final void F() {
        if (this.n.c == 1) {
            this.S = true;
        }
    }

    public final void G() {
        Context context;
        if (this.r == null && (context = this.a) != null) {
            this.U = Looper.myLooper();
            qgj qgjVar = new qgj(context, new whj(this), this.t, this.Q);
            this.r = qgjVar;
            this.q = qgjVar.c();
        }
        this.q.getClass();
    }

    public final void H() {
        if (this.L) {
            return;
        }
        this.L = true;
        this.f.b(B());
        if (P(this.p)) {
            this.M = false;
        }
        this.p.stop();
    }

    public final void I(long j) throws zzqe {
        E(j);
        if (this.J != null) {
            return;
        }
        if (!this.o.h()) {
            ByteBuffer byteBuffer = this.H;
            if (byteBuffer != null) {
                K(byteBuffer);
                E(j);
                return;
            }
            return;
        }
        while (!this.o.g()) {
            do {
                ByteBuffer byteBufferB = this.o.b();
                if (byteBufferB.hasRemaining()) {
                    K(byteBufferB);
                    E(j);
                } else {
                    ByteBuffer byteBuffer2 = this.H;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.o.e(this.H);
                    }
                }
            } while (this.J == null);
            return;
        }
    }

    public final void J(vwe vweVar) {
        dij dijVar = new dij(vweVar, C.TIME_UNSET, C.TIME_UNSET, null);
        if (O()) {
            this.u = dijVar;
        } else {
            this.v = dijVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x013f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0141 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0143  */
    /* JADX WARN: Code duplicated, block: B:49:0x0147  */
    /* JADX WARN: Code duplicated, block: B:51:0x014b  */
    /* JADX WARN: Code duplicated, block: B:53:0x014f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0153  */
    /* JADX WARN: Code duplicated, block: B:57:0x0157  */
    /* JADX WARN: Code duplicated, block: B:60:0x0175  */
    /* JADX WARN: Code duplicated, block: B:61:0x0188  */
    /* JADX WARN: Code duplicated, block: B:62:0x0195  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x01bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:67:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:68:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:79:0x016f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x004b A[SYNTHETIC] */
    public final void K(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        n7g.f(this.J == null);
        if (byteBuffer.hasRemaining()) {
            if (this.n.c == 0) {
                int iK = (int) kfh.K(kfh.N(20L), this.n.e);
                long jB = B();
                long j = iK;
                if (jB < j) {
                    bij bijVar = this.n;
                    int i12 = bijVar.g;
                    int i13 = bijVar.d;
                    ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
                    int iPosition = byteBuffer.position();
                    int i14 = (int) jB;
                    while (byteBuffer.hasRemaining() && i14 < iK) {
                        if (i12 != 2) {
                            if (i12 == 3) {
                                i3 = (byteBuffer.get() & 255) << 24;
                            } else if (i12 != 4) {
                                if (i12 != 21) {
                                    if (i12 == 22) {
                                        i8 = byteBuffer.get() & 255;
                                        i9 = (byteBuffer.get() & 255) << 8;
                                        i10 = (byteBuffer.get() & 255) << 16;
                                        i11 = (byteBuffer.get() & 255) << 24;
                                    } else if (i12 == 268435456) {
                                        i = (byteBuffer.get() & 255) << 24;
                                        i2 = (byteBuffer.get() & 255) << 16;
                                    } else if (i12 == 1342177280) {
                                        i5 = (byteBuffer.get() & 255) << 24;
                                        i6 = (byteBuffer.get() & 255) << 16;
                                        i7 = (byteBuffer.get() & 255) << 8;
                                    } else {
                                        if (i12 != 1610612736) {
                                            throw new IllegalStateException();
                                        }
                                        i8 = (byteBuffer.get() & 255) << 24;
                                        i9 = (byteBuffer.get() & 255) << 16;
                                        i10 = (byteBuffer.get() & 255) << 8;
                                        i11 = byteBuffer.get() & 255;
                                    }
                                    i3 = i8 | i9 | i10 | i11;
                                } else {
                                    i5 = (byteBuffer.get() & 255) << 8;
                                    i6 = (byteBuffer.get() & 255) << 16;
                                    i7 = (byteBuffer.get() & 255) << 24;
                                }
                                i3 = i5 | i6 | i7;
                            } else {
                                float fMax = Math.max(-1.0f, Math.min(byteBuffer.getFloat(), 1.0f));
                                if (fMax < 0.0f) {
                                    fMax = -fMax;
                                    f = -2.14748365E9f;
                                } else {
                                    f = 2.14748365E9f;
                                }
                                i3 = (int) (fMax * f);
                            }
                            i4 = (int) ((((long) i3) * ((long) i14)) / j);
                            if (i12 != 2) {
                                byteBufferOrder.put((byte) (i4 >> 16));
                                byteBufferOrder.put((byte) (i4 >> 24));
                            } else if (i12 != 3) {
                                byteBufferOrder.put((byte) (i4 >> 24));
                            } else if (i12 != 4) {
                                if (i12 != 21) {
                                    byteBufferOrder.put((byte) (i4 >> 8));
                                    byteBufferOrder.put((byte) (i4 >> 16));
                                    byteBufferOrder.put((byte) (i4 >> 24));
                                } else if (i12 != 22) {
                                    byteBufferOrder.put((byte) i4);
                                    byteBufferOrder.put((byte) (i4 >> 8));
                                    byteBufferOrder.put((byte) (i4 >> 16));
                                    byteBufferOrder.put((byte) (i4 >> 24));
                                } else if (i12 != 268435456) {
                                    byteBufferOrder.put((byte) (i4 >> 24));
                                    byteBufferOrder.put((byte) (i4 >> 16));
                                } else if (i12 != 1342177280) {
                                    byteBufferOrder.put((byte) (i4 >> 24));
                                    byteBufferOrder.put((byte) (i4 >> 16));
                                    byteBufferOrder.put((byte) (i4 >> 8));
                                } else {
                                    if (i12 == 1610612736) {
                                        throw new IllegalStateException();
                                    }
                                    byteBufferOrder.put((byte) (i4 >> 24));
                                    byteBufferOrder.put((byte) (i4 >> 16));
                                    byteBufferOrder.put((byte) (i4 >> 8));
                                    byteBufferOrder.put((byte) i4);
                                }
                            } else if (i4 < 0) {
                                byteBufferOrder.putFloat((-i4) / (-2.14748365E9f));
                            } else {
                                byteBufferOrder.putFloat(i4 / 2.14748365E9f);
                            }
                            if (byteBuffer.position() == iPosition + i13) {
                                i14++;
                                iPosition = byteBuffer.position();
                            }
                        } else {
                            i = (byteBuffer.get() & 255) << 16;
                            i2 = (byteBuffer.get() & 255) << 24;
                        }
                        i3 = i | i2;
                        i4 = (int) ((((long) i3) * ((long) i14)) / j);
                        if (i12 != 2) {
                            byteBufferOrder.put((byte) (i4 >> 16));
                            byteBufferOrder.put((byte) (i4 >> 24));
                        } else if (i12 != 3) {
                            byteBufferOrder.put((byte) (i4 >> 24));
                        } else if (i12 != 4) {
                            if (i12 != 21) {
                                byteBufferOrder.put((byte) (i4 >> 8));
                                byteBufferOrder.put((byte) (i4 >> 16));
                                byteBufferOrder.put((byte) (i4 >> 24));
                            } else if (i12 != 22) {
                                byteBufferOrder.put((byte) i4);
                                byteBufferOrder.put((byte) (i4 >> 8));
                                byteBufferOrder.put((byte) (i4 >> 16));
                                byteBufferOrder.put((byte) (i4 >> 24));
                            } else if (i12 != 268435456) {
                                byteBufferOrder.put((byte) (i4 >> 24));
                                byteBufferOrder.put((byte) (i4 >> 16));
                            } else if (i12 != 1342177280) {
                                byteBufferOrder.put((byte) (i4 >> 24));
                                byteBufferOrder.put((byte) (i4 >> 16));
                                byteBufferOrder.put((byte) (i4 >> 8));
                            } else {
                                if (i12 == 1610612736) {
                                    throw new IllegalStateException();
                                }
                                byteBufferOrder.put((byte) (i4 >> 24));
                                byteBufferOrder.put((byte) (i4 >> 16));
                                byteBufferOrder.put((byte) (i4 >> 8));
                                byteBufferOrder.put((byte) i4);
                            }
                        } else if (i4 < 0) {
                            byteBufferOrder.putFloat((-i4) / (-2.14748365E9f));
                        } else {
                            byteBufferOrder.putFloat(i4 / 2.14748365E9f);
                        }
                        if (byteBuffer.position() == iPosition + i13) {
                            i14++;
                            iPosition = byteBuffer.position();
                        }
                    }
                    byteBufferOrder.put(byteBuffer);
                    byteBufferOrder.flip();
                    byteBuffer2 = byteBufferOrder;
                } else {
                    byteBuffer2 = byteBuffer;
                }
            } else {
                byteBuffer2 = byteBuffer;
            }
            this.J = byteBuffer2;
        }
    }

    public final void L() {
        if (O()) {
            this.p.setVolume(this.G);
        }
    }

    public final void M() {
        aof aofVar = this.n.i;
        this.o = aofVar;
        aofVar.c();
    }

    public final boolean N() throws zzqe {
        if (!this.o.h()) {
            E(Long.MIN_VALUE);
            return this.J == null;
        }
        this.o.d();
        I(Long.MIN_VALUE);
        if (!this.o.g()) {
            return false;
        }
        ByteBuffer byteBuffer = this.J;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    public final boolean O() {
        return this.p != null;
    }

    public final boolean Q() {
        bij bijVar = this.n;
        if (bijVar.c != 0) {
            return false;
        }
        int i = bijVar.a.G;
        return true;
    }

    @Override
    public final int a(erj erjVar) {
        G();
        if (!"audio/raw".equals(erjVar.o)) {
            return this.q.b(erjVar, this.t) != null ? 2 : 0;
        }
        int i = erjVar.G;
        if (kfh.k(i)) {
            return i != 2 ? 1 : 2;
        }
        zrg.f("DefaultAudioSink", "Invalid PCM encoding: " + i);
        return 0;
    }

    @Override
    public final void b(int i, int i2) {
        AudioTrack audioTrack = this.p;
        if (audioTrack != null) {
            P(audioTrack);
        }
    }

    @Override
    public final void c(int i) {
        if (this.O != i) {
            this.O = i;
            zzf();
        }
    }

    @Override
    public final long d(boolean z) {
        ArrayDeque arrayDeque;
        long j;
        if (!O() || this.E) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.f.a(), kfh.O(B(), this.n.e));
        while (true) {
            arrayDeque = this.g;
            if (arrayDeque.isEmpty() || jMin < ((dij) arrayDeque.getFirst()).c) {
                break;
            }
            this.v = (dij) arrayDeque.remove();
        }
        dij dijVar = this.v;
        long j2 = jMin - dijVar.c;
        long jL = kfh.L(j2, dijVar.a.a);
        if (arrayDeque.isEmpty()) {
            long jA = this.Y.a(j2);
            dij dijVar2 = this.v;
            j = dijVar2.b + jA;
            dijVar2.d = jA - jL;
        } else {
            dij dijVar3 = this.v;
            j = dijVar3.b + jL + dijVar3.d;
        }
        long jB = this.Y.b();
        long jO = j + kfh.O(jB, this.n.e);
        long j3 = this.V;
        if (jB > j3) {
            long jO2 = kfh.O(jB - j3, this.n.e);
            this.V = jB;
            this.W += jO2;
            if (this.X == null) {
                this.X = new Handler(Looper.myLooper());
            }
            this.X.removeCallbacksAndMessages(null);
            this.X.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    xij.v(this.zza);
                }
            }, 100L);
        }
        return jO;
    }

    @Override
    public final void e(klh klhVar) {
        if (this.P.equals(klhVar)) {
            return;
        }
        if (this.p != null) {
            int i = this.P.a;
        }
        this.P = klhVar;
    }

    @Override
    public final void f(vwe vweVar) {
        float f = vweVar.a;
        int i = kfh.a;
        this.w = new vwe(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(vweVar.b, 8.0f)));
        J(vweVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:132:0x0264  */
    /* JADX WARN: Code duplicated, block: B:133:0x0269  */
    /* JADX WARN: Code duplicated, block: B:135:0x0275  */
    /* JADX WARN: Code duplicated, block: B:138:0x0280  */
    /* JADX WARN: Code duplicated, block: B:140:0x0289  */
    /* JADX WARN: Code duplicated, block: B:141:0x028d  */
    /* JADX WARN: Code duplicated, block: B:143:0x0297 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:144:0x0299 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:145:0x029b  */
    /* JADX WARN: Code duplicated, block: B:147:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:149:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:150:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:152:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:214:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean g(ByteBuffer byteBuffer, long j, int i) throws zzqe, zzqb {
        AudioTrack audioTrackC;
        qgj qgjVar;
        tfj tfjVar;
        boolean z;
        int iB;
        int iPosition;
        byte b;
        int i2;
        int i3;
        int i4;
        byte b2;
        int i5;
        int i6;
        ByteBuffer byteBuffer2 = this.H;
        n7g.d(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.m != null) {
            if (!N()) {
                return false;
            }
            bij bijVar = this.m;
            bij bijVar2 = this.n;
            if (bijVar2.c == bijVar.c && bijVar2.g == bijVar.g && bijVar2.e == bijVar.e && bijVar2.f == bijVar.f && bijVar2.d == bijVar.d) {
                this.n = bijVar;
                this.m = null;
                AudioTrack audioTrack = this.p;
                if (audioTrack != null && P(audioTrack)) {
                    boolean z2 = this.n.k;
                }
            } else {
                H();
                if (zzy()) {
                    return false;
                }
                zzf();
            }
            D(j);
        }
        if (!O()) {
            try {
                if (this.i.c()) {
                    return false;
                }
                try {
                    bij bijVar3 = this.n;
                    if (bijVar3 == null) {
                        throw null;
                    }
                    audioTrackC = C(bijVar3);
                    this.p = audioTrackC;
                    if (P(audioTrackC)) {
                        AudioTrack audioTrack2 = this.p;
                        if (this.h == null) {
                            this.h = new vij(this);
                        }
                        this.h.a(audioTrack2);
                        boolean z3 = this.n.k;
                    }
                    int i7 = kfh.a;
                    if (i7 >= 31 && (tfjVar = this.k) != null) {
                        AudioTrack audioTrack3 = this.p;
                        LogSessionId logSessionIdA = tfjVar.a();
                        if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                            audioTrack3.setLogSessionId(logSessionIdA);
                        }
                    }
                    this.O = this.p.getAudioSessionId();
                    thj thjVar = this.f;
                    AudioTrack audioTrack4 = this.p;
                    bij bijVar4 = this.n;
                    thjVar.d(audioTrack4, bijVar4.c == 2, bijVar4.g, bijVar4.d, bijVar4.h);
                    L();
                    int i8 = this.P.a;
                    sgj sgjVar = this.Q;
                    if (sgjVar != null) {
                        xhj.a(this.p, sgjVar);
                        qgj qgjVar2 = this.r;
                        if (qgjVar2 != null) {
                            qgjVar2.h(this.Q.a);
                        }
                    }
                    if (i7 >= 24 && (qgjVar = this.r) != null) {
                        this.s = new fij(this.p, qgjVar);
                    }
                    this.E = true;
                    ohj ohjVar = this.l;
                    if (ohjVar != null) {
                        ((bjj) ohjVar).a.C0.o(this.n.a());
                    }
                } catch (zzqb e) {
                    bij bijVar5 = this.n;
                    if (bijVar5.h > 1000000) {
                        bij bijVar6 = new bij(bijVar5.a, bijVar5.b, bijVar5.c, bijVar5.d, bijVar5.e, bijVar5.f, bijVar5.g, 1000000, bijVar5.i, false, false, false);
                        try {
                            audioTrackC = C(bijVar6);
                            this.n = bijVar6;
                        } catch (zzqb e2) {
                            e.addSuppressed(e2);
                            F();
                            throw e;
                        }
                    }
                    F();
                    throw e;
                }
            } catch (zzqb e3) {
                if (e3.zzb) {
                    throw e3;
                }
                this.i.b(e3);
                return false;
            }
        }
        this.i.a();
        if (this.E) {
            this.F = Math.max(0L, j);
            this.D = false;
            this.E = false;
            D(j);
            if (this.N) {
                zzi();
            }
        }
        thj thjVar2 = this.f;
        thjVar2.j(B());
        if (this.H == null) {
            n7g.d(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            bij bijVar7 = this.n;
            if (bijVar7.c != 0 && this.C == 0) {
                int i9 = bijVar7.g;
                if (i9 == 20) {
                    z = true;
                    iB = x9e.b(byteBuffer);
                } else if (i9 != 30) {
                    switch (i9) {
                        case 5:
                        case 6:
                            iB = w7e.a(byteBuffer);
                            z = true;
                            break;
                        case 7:
                        case 8:
                            int[] iArr = b9e.a;
                            if (byteBuffer.getInt(0) == -233094848) {
                                z = true;
                                iB = 1024;
                            } else {
                                if (byteBuffer.getInt(0) == -398277519) {
                                    iB = 1024;
                                } else if (byteBuffer.getInt(0) != 622876772) {
                                    iPosition = byteBuffer.position();
                                    b = byteBuffer.get(iPosition);
                                    if (b != -2) {
                                        if (b != -1) {
                                            if (b != 31) {
                                                i4 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                                                i5 = byteBuffer.get(iPosition + 5) & 252;
                                                i3 = 2;
                                            } else {
                                                i3 = 2;
                                                i4 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                                                b2 = byteBuffer.get(iPosition + 6);
                                            }
                                            i2 = (i5 >> i3) | i4;
                                            z = true;
                                        } else {
                                            i3 = 2;
                                            i4 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                                            b2 = byteBuffer.get(iPosition + 7);
                                        }
                                        i5 = b2 & 60;
                                        i2 = (i5 >> i3) | i4;
                                        z = true;
                                    } else {
                                        z = true;
                                        i2 = ((byteBuffer.get(iPosition + 5) & 1) << 6) | ((byteBuffer.get(iPosition + 4) & 252) >> 2);
                                    }
                                    iB = (i2 + (z ? 1 : 0)) * 32;
                                } else {
                                    iB = 4096;
                                }
                                z = true;
                            }
                            break;
                        case 9:
                            iB = v9e.c(kfh.E(byteBuffer, byteBuffer.position()));
                            if (iB == -1) {
                                throw new IllegalArgumentException();
                            }
                            z = true;
                            break;
                        case 10:
                            iB = 1024;
                            z = true;
                            break;
                        case 11:
                        case 12:
                            iB = 2048;
                            z = true;
                            break;
                        default:
                            switch (i9) {
                                case 14:
                                    int[] iArr2 = w7e.a;
                                    int iPosition2 = byteBuffer.position();
                                    int iLimit = byteBuffer.limit() - 10;
                                    int i10 = iPosition2;
                                    while (true) {
                                        if (i10 > iLimit) {
                                            i6 = -1;
                                        } else if ((kfh.E(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                                            i6 = i10 - iPosition2;
                                        } else {
                                            i10++;
                                        }
                                    }
                                    if (i6 != -1) {
                                        iB = (40 << ((byteBuffer.get((byteBuffer.position() + i6) + ((byteBuffer.get((byteBuffer.position() + i6) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                                    } else {
                                        iB = 0;
                                    }
                                    break;
                                case 15:
                                    iB = 512;
                                    break;
                                case 16:
                                    iB = 1024;
                                    break;
                                case 17:
                                    int[] iArr3 = a8e.a;
                                    byte[] bArr = new byte[16];
                                    int iPosition3 = byteBuffer.position();
                                    byteBuffer.get(bArr);
                                    byteBuffer.position(iPosition3);
                                    iB = a8e.b(new p3h(bArr, 16)).c;
                                    break;
                                case 18:
                                    iB = w7e.a(byteBuffer);
                                    break;
                                default:
                                    throw new IllegalStateException("Unexpected audio encoding: " + i9);
                            }
                            z = true;
                            break;
                    }
                } else {
                    int[] iArr4 = b9e.a;
                    if (byteBuffer.getInt(0) == -233094848) {
                        if (byteBuffer.getInt(0) == -398277519) {
                            iB = 1024;
                        } else if (byteBuffer.getInt(0) != 622876772) {
                            iB = 4096;
                        } else {
                            iPosition = byteBuffer.position();
                            b = byteBuffer.get(iPosition);
                            if (b != -2) {
                                if (b != -1) {
                                    if (b != 31) {
                                        i4 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                                        i5 = byteBuffer.get(iPosition + 5) & 252;
                                        i3 = 2;
                                    } else {
                                        i3 = 2;
                                        i4 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                                        b2 = byteBuffer.get(iPosition + 6);
                                    }
                                    i2 = (i5 >> i3) | i4;
                                    z = true;
                                } else {
                                    i3 = 2;
                                    i4 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                                    b2 = byteBuffer.get(iPosition + 7);
                                }
                                i5 = b2 & 60;
                                i2 = (i5 >> i3) | i4;
                                z = true;
                            } else {
                                z = true;
                                i2 = ((byteBuffer.get(iPosition + 5) & 1) << 6) | ((byteBuffer.get(iPosition + 4) & 252) >> 2);
                            }
                            iB = (i2 + (z ? 1 : 0)) * 32;
                        }
                        z = true;
                    } else {
                        z = true;
                        iB = 1024;
                    }
                }
                this.C = iB;
                if (iB == 0) {
                    return z;
                }
            }
            if (this.u != null) {
                if (!N()) {
                    return false;
                }
                D(j);
                this.u = null;
            }
            long jO = this.F + kfh.O(A() - this.c.i(), this.n.a.F);
            if (!this.D && Math.abs(jO - j) > 200000) {
                ohj ohjVar2 = this.l;
                if (ohjVar2 != null) {
                    ohjVar2.b(new zzqd(j, jO));
                }
                this.D = true;
            }
            if (this.D) {
                if (!N()) {
                    return false;
                }
                long j2 = j - jO;
                this.F += j2;
                this.D = false;
                D(j);
                ohj ohjVar3 = this.l;
                if (ohjVar3 != null && j2 != 0) {
                    ((bjj) ohjVar3).a.z0();
                }
            }
            if (this.n.c == 0) {
                this.y += (long) byteBuffer.remaining();
            } else {
                this.z += ((long) this.C) * ((long) i);
            }
            this.H = byteBuffer;
            this.I = i;
        }
        I(j);
        if (!this.H.hasRemaining()) {
            this.H = null;
            this.I = 0;
            return true;
        }
        if (!thjVar2.i(B())) {
            return false;
        }
        zrg.f("DefaultAudioSink", "Resetting stalled audio track");
        zzf();
        return true;
    }

    @Override
    public final boolean h(erj erjVar) {
        return a(erjVar) != 0;
    }

    @Override
    public final ygj i(erj erjVar) {
        return this.S ? ygj.d : this.Z.a(erjVar, this.t);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0165  */
    /* JADX WARN: Code duplicated, block: B:51:0x0168  */
    @Override
    public final void j(erj erjVar, int i, int[] iArr) throws zzqa {
        int i2;
        aof aofVar;
        int iF;
        int iIntValue;
        int iF2;
        int i3;
        int i4;
        int iMax;
        int i5;
        bij bijVar;
        G();
        if ("audio/raw".equals(erjVar.o)) {
            int i6 = erjVar.G;
            n7g.d(kfh.k(i6));
            int i7 = erjVar.E;
            iF2 = kfh.F(i6) * i7;
            l4i l4iVar = new l4i();
            l4iVar.i(this.d);
            l4iVar.h(this.Y.e());
            aof aofVar2 = new aof(l4iVar.j());
            if (aofVar2.equals(this.o)) {
                aofVar2 = this.o;
            }
            this.c.k(erjVar.H, erjVar.I);
            this.b.i(iArr);
            try {
                cpf cpfVarA = aofVar2.a(new cpf(erjVar.F, i7, i6));
                i4 = cpfVarA.c;
                i3 = cpfVarA.a;
                int i8 = cpfVarA.b;
                iIntValue = kfh.D(i8);
                iF = kfh.F(i4) * i8;
                aofVar = aofVar2;
                i2 = 0;
            } catch (zzcm e) {
                throw new zzqa(e, erjVar);
            }
        } else {
            aof aofVar3 = new aof(zzfww.zzn());
            int i9 = erjVar.F;
            ygj ygjVar = ygj.d;
            Pair pairB = this.q.b(erjVar, this.t);
            if (pairB == null) {
                throw new zzqa("Unable to configure passthrough for: ".concat(String.valueOf(erjVar)), erjVar);
            }
            int iIntValue2 = ((Integer) pairB.first).intValue();
            i2 = 2;
            aofVar = aofVar3;
            iF = -1;
            iIntValue = ((Integer) pairB.second).intValue();
            iF2 = -1;
            i3 = i9;
            i4 = iIntValue2;
        }
        if (i4 == 0) {
            throw new zzqa("Invalid output encoding (mode=" + i2 + ") for: " + String.valueOf(erjVar), erjVar);
        }
        if (iIntValue == 0) {
            throw new zzqa("Invalid output channel config (mode=" + i2 + ") for: " + String.valueOf(erjVar), erjVar);
        }
        int i10 = erjVar.j;
        if (MimeTypes.AUDIO_DTS_EXPRESS.equals(erjVar.o) && i10 == -1) {
            i10 = 768000;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i3, iIntValue, i4);
        n7g.f(minBufferSize != -2);
        int i11 = iF != -1 ? iF : 1;
        int i12 = 250000;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i4 == 5) {
                    i12 = 500000;
                } else if (i4 == 8) {
                    i12 = 1000000;
                    i4 = 8;
                }
                iMax = s7.b((((long) i12) * ((long) (i10 != -1 ? m6i.b(i10, 8, RoundingMode.CEILING) : zij.b(i4)))) / 1000000);
                i5 = i4;
            } else {
                iMax = s7.b((((long) zij.b(i4)) * 50000000) / 1000000);
            }
            int iMax2 = (((Math.max(minBufferSize, iMax) + i11) - 1) / i11) * i11;
            this.S = false;
            bijVar = new bij(erjVar, iF2, i2, iF, i3, iIntValue, i5, iMax2, aofVar, false, false, false);
            if (O()) {
                this.m = bijVar;
            } else {
                this.n = bijVar;
            }
        }
        int iA = zij.a(250000, i3, i11);
        int iA2 = zij.a(750000, i3, i11);
        int i13 = kfh.a;
        iMax = Math.max(iA, Math.min(minBufferSize * 4, iA2));
        i5 = i4;
        int iMax3 = (((Math.max(minBufferSize, iMax) + i11) - 1) / i11) * i11;
        this.S = false;
        bijVar = new bij(erjVar, iF2, i2, iF, i3, iIntValue, i5, iMax3, aofVar, false, false, false);
        if (O()) {
            this.m = bijVar;
        } else {
            this.n = bijVar;
        }
    }

    @Override
    public final void k(tbg tbgVar) {
        this.f.e(tbgVar);
    }

    @Override
    public final void l(AudioDeviceInfo audioDeviceInfo) {
        this.Q = audioDeviceInfo == null ? null : new sgj(audioDeviceInfo);
        qgj qgjVar = this.r;
        if (qgjVar != null) {
            qgjVar.h(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.p;
        if (audioTrack != null) {
            xhj.a(audioTrack, this.Q);
        }
    }

    @Override
    public final void m(ohj ohjVar) {
        this.l = ohjVar;
    }

    @Override
    public final void n(float f) {
        if (this.G != f) {
            this.G = f;
            L();
        }
    }

    @Override
    public final void o(tfj tfjVar) {
        this.k = tfjVar;
    }

    @Override
    public final void p(hvg hvgVar) {
        if (this.t.equals(hvgVar)) {
            return;
        }
        this.t = hvgVar;
        qgj qgjVar = this.r;
        if (qgjVar != null) {
            qgjVar.g(hvgVar);
        }
        zzf();
    }

    public final void y(ggj ggjVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.U;
        if (looper != looperMyLooper) {
            String name = looper == null ? "null" : looper.getThread().getName();
            throw new IllegalStateException("Current looper (" + (looperMyLooper != null ? looperMyLooper.getThread().getName() : "null") + ") is not the playback looper (" + name + ")");
        }
        ggj ggjVar2 = this.q;
        if (ggjVar2 == null || ggjVar.equals(ggjVar2)) {
            return;
        }
        this.q = ggjVar;
        ohj ohjVar = this.l;
        if (ohjVar != null) {
            ((bjj) ohjVar).a.q();
        }
    }

    @Override
    public final vwe zzc() {
        return this.w;
    }

    @Override
    public final void zzf() {
        fij fijVar;
        if (O()) {
            this.y = 0L;
            this.z = 0L;
            this.A = 0L;
            this.B = 0L;
            this.T = false;
            this.C = 0;
            this.v = new dij(this.w, 0L, 0L, null);
            this.F = 0L;
            this.u = null;
            this.g.clear();
            this.H = null;
            this.I = 0;
            this.J = null;
            this.L = false;
            this.K = false;
            this.M = false;
            this.c.j();
            M();
            thj thjVar = this.f;
            if (thjVar.h()) {
                this.p.pause();
            }
            if (P(this.p)) {
                vij vijVar = this.h;
                vijVar.getClass();
                vijVar.b(this.p);
            }
            final ehj ehjVarA = this.n.a();
            bij bijVar = this.m;
            if (bijVar != null) {
                this.n = bijVar;
                this.m = null;
            }
            thjVar.c();
            if (kfh.a >= 24 && (fijVar = this.s) != null) {
                fijVar.b();
                this.s = null;
            }
            final AudioTrack audioTrack = this.p;
            final ohj ohjVar = this.l;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (a0) {
                try {
                    if (b0 == null) {
                        final String str = "ExoPlayer:AudioTrackReleaseThread";
                        b0 = Executors.newSingleThreadScheduledExecutor(new ThreadFactory(str) {
                            public final String b = "ExoPlayer:AudioTrackReleaseThread";

                            @Override
                            public final Thread newThread(Runnable runnable) {
                                int i = kfh.a;
                                return new Thread(runnable, this.b);
                            }
                        });
                    }
                    c0++;
                    b0.schedule(new Runnable() {
                        @Override
                        public final void run() {
                            xij.x(audioTrack, ohjVar, handler, ehjVarA);
                        }
                    }, 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.p = null;
        }
        this.j.a();
        this.i.a();
        this.V = 0L;
        this.W = 0L;
        Handler handler2 = this.X;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override
    public final void zzg() {
        this.D = true;
    }

    @Override
    public final void zzh() {
        this.N = false;
        if (O()) {
            if (this.f.k() || P(this.p)) {
                this.p.pause();
            }
        }
    }

    @Override
    public final void zzi() {
        this.N = true;
        if (O()) {
            this.f.f();
            this.p.play();
        }
    }

    @Override
    public final void zzj() {
        if (!this.K && O() && N()) {
            H();
            this.K = true;
        }
    }

    @Override
    public final void zzk() {
        qgj qgjVar = this.r;
        if (qgjVar != null) {
            qgjVar.i();
        }
    }

    @Override
    public final void zzl() {
        zzf();
        zzfww zzfwwVar = this.d;
        int size = zzfwwVar.size();
        for (int i = 0; i < size; i++) {
            ((vqf) zzfwwVar.get(i)).zzf();
        }
        zzfww zzfwwVar2 = this.e;
        int size2 = zzfwwVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((vqf) zzfwwVar2.get(i2)).zzf();
        }
        aof aofVar = this.o;
        if (aofVar != null) {
            aofVar.f();
        }
        this.N = false;
        this.S = false;
    }

    @Override
    public final void zzv(boolean z) {
        this.x = z;
        J(this.w);
    }

    @Override
    public final boolean zzy() {
        if (O()) {
            return !(kfh.a >= 29 && this.p.isOffloadedPlayback() && this.M) && this.f.g(B());
        }
        return false;
    }

    @Override
    public final boolean zzz() {
        if (O()) {
            return this.K && !zzy();
        }
        return true;
    }
}
