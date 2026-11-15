package com.hunantv.media.player.subtitle;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.Vector;

public class e implements MgtvPlayerListener.OnSeekCompleteListener, com.hunantv.media.player.b.a {
    public Handler a;
    private long b;
    private MgtvMediaPlayer c;
    private boolean f;
    private long g;
    private long h;
    private com.hunantv.media.player.b.a.InterfaceC0134a[] i;
    private long[] j;
    private long k;
    private boolean l;
    private HandlerThread o;
    private boolean d = true;
    private boolean e = true;
    private boolean m = false;
    private boolean n = false;
    private final int p = 10;
    private int q = 10;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            e eVar;
            boolean z = true;
            if (message.what == 1) {
                int i = message.arg1;
                if (i == 0) {
                    eVar = e.this;
                    z = false;
                } else if (i == 1) {
                    eVar = e.this;
                } else if (i == 2) {
                    e.this.d();
                } else if (i == 3) {
                    e.this.c();
                }
                eVar.c(z);
            }
            if (message.what == 4) {
                e.this.a((Pair<d, SubtitleSource>) message.obj);
            }
        }
    }

    public e(MgtvMediaPlayer mgtvMediaPlayer) {
        this.b = 0L;
        this.l = false;
        this.c = mgtvMediaPlayer;
        try {
            a(true, false);
        } catch (IllegalStateException unused) {
            this.l = true;
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null && (looperMyLooper = Looper.getMainLooper()) == null) {
            HandlerThread handlerThread = new HandlerThread("MediaPlayerMTPEventThread", -2);
            this.o = handlerThread;
            handlerThread.start();
            looperMyLooper = this.o.getLooper();
        }
        this.a = new a(looperMyLooper);
        this.i = new com.hunantv.media.player.b.a.InterfaceC0134a[0];
        this.j = new long[0];
        this.b = 0L;
        this.h = 0L;
    }

    private long a(long j, boolean z) {
        if (this.d) {
            this.g = this.b + this.h;
        } else {
            long j2 = (j - this.k) / 1000;
            long j3 = this.b + j2;
            this.g = j3;
            long j4 = this.h;
            if (j4 > 0) {
                long j5 = j4 - (j2 / 2);
                if (j5 <= 0) {
                    this.h = 0L;
                } else {
                    this.g = j3 + j5;
                }
            }
        }
        return this.g;
    }

    private int c(com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a) {
        com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr;
        com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a2;
        int i = 0;
        while (true) {
            interfaceC0134aArr = this.i;
            if (i >= interfaceC0134aArr.length || (interfaceC0134a2 = interfaceC0134aArr[i]) == interfaceC0134a || interfaceC0134a2 == null) {
                break;
            }
            i++;
        }
        if (i >= interfaceC0134aArr.length) {
            int i2 = i + 1;
            com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr2 = new com.hunantv.media.player.b.a.InterfaceC0134a[i2];
            long[] jArr = new long[i2];
            System.arraycopy(interfaceC0134aArr, 0, interfaceC0134aArr2, 0, interfaceC0134aArr.length);
            long[] jArr2 = this.j;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            this.i = interfaceC0134aArr2;
            this.j = jArr;
        }
        com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr3 = this.i;
        if (interfaceC0134aArr3[i] == null) {
            interfaceC0134aArr3[i] = interfaceC0134a;
            this.j[i] = -1;
        }
        return i;
    }

    public synchronized void d() {
        for (com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a : this.i) {
            if (interfaceC0134a == null) {
                break;
            }
            interfaceC0134a.a();
        }
    }

    public void b() {
        synchronized (this) {
            c.a("TimeProvider", "onStopped");
            this.d = true;
            this.e = true;
            this.n = false;
            this.f = false;
            a(2, 0L);
        }
    }

    public void finalize() {
        a(this.o);
    }

    @Override
    public void onSeekComplete(int i, int i2) {
        synchronized (this) {
            this.e = false;
            this.n = true;
            a(3, 0L);
        }
    }

    public synchronized void c() {
        try {
            this.n = false;
            try {
                long jA = a(true, false);
                c.a("TimeProvider", "onSeekComplete at " + jA);
                com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr = this.i;
                int length = interfaceC0134aArr.length;
                for (int i = 0; i < length; i++) {
                    com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a = interfaceC0134aArr[i];
                    if (interfaceC0134a == null) {
                        break;
                    }
                    interfaceC0134a.b(jA);
                }
            } catch (IllegalStateException unused) {
                c.a("TimeProvider", "onSeekComplete but no player");
                this.m = true;
                c(false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0063 A[Catch: all -> 0x000b, TryCatch #0 {all -> 0x000b, blocks: (B:3:0x0001, B:6:0x0007, B:7:0x0009, B:11:0x000e, B:13:0x0014, B:35:0x0065, B:36:0x0069, B:17:0x0022, B:19:0x0036, B:26:0x0040, B:27:0x0042, B:29:0x0048, B:31:0x0050, B:33:0x005a, B:34:0x0063, B:38:0x006b, B:40:0x006f, B:41:0x0090, B:43:0x0092), top: B:46:0x0001, inners: #1 }] */
    @Override
    public long a(boolean z, boolean z2) throws IllegalStateException {
        synchronized (this) {
            try {
                if (this.d && !z) {
                    return this.g;
                }
                long jNanoTime = System.nanoTime();
                if (z || jNanoTime >= this.k + 5000000000L) {
                    try {
                        this.b = ((long) this.c.getCurrentPosition()) * 1000;
                        this.d = !this.c.isPlaying() || this.f;
                        this.k = jNanoTime;
                        if (z2) {
                            long j = this.b;
                            long j2 = this.g;
                            if (j < j2) {
                                long j3 = j2 - j;
                                this.h = j3;
                                if (j3 > 1000000) {
                                    this.e = false;
                                    this.n = true;
                                    a(3, 0L);
                                }
                            } else {
                                this.h = 0L;
                            }
                        } else {
                            this.h = 0L;
                        }
                    } catch (IllegalStateException e) {
                        if (!this.m) {
                            throw e;
                        }
                        this.m = false;
                        a(jNanoTime, z2);
                        this.d = true;
                        c.a("TimeProvider", "illegal state, but pausing: estimating at " + this.g);
                        return this.g;
                    }
                }
                return a(jNanoTime, z2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void b(com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a) {
        synchronized (this) {
            int i = 0;
            while (true) {
                try {
                    com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr = this.i;
                    if (i >= interfaceC0134aArr.length) {
                        break;
                    }
                    com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a2 = interfaceC0134aArr[i];
                    if (interfaceC0134a2 == interfaceC0134a) {
                        int i2 = i + 1;
                        System.arraycopy(interfaceC0134aArr, i2, interfaceC0134aArr, i, (interfaceC0134aArr.length - i) - 1);
                        long[] jArr = this.j;
                        System.arraycopy(jArr, i2, jArr, i, (jArr.length - i) - 1);
                        com.hunantv.media.player.b.a.InterfaceC0134a[] interfaceC0134aArr2 = this.i;
                        interfaceC0134aArr2[interfaceC0134aArr2.length - 1] = null;
                        long[] jArr2 = this.j;
                        jArr2[jArr2.length - 1] = -1;
                        break;
                    }
                    if (interfaceC0134a2 == null) {
                        break;
                    } else {
                        i++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            a(0, 0L);
        }
    }

    public synchronized void c(boolean z) {
        long jA;
        com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a;
        try {
            jA = a(z, true);
        } catch (IllegalStateException unused) {
            this.l = true;
            this.m = true;
            jA = a(z, true);
        }
        if (this.n) {
            return;
        }
        Vector vector = new Vector();
        int i = 0;
        long j = jA;
        while (true) {
            long[] jArr = this.j;
            if (i >= jArr.length || (interfaceC0134a = this.i[i]) == null) {
                break;
                break;
            }
            long j2 = jArr[i];
            if (j2 > -1) {
                if (j2 <= 1000 + jA) {
                    vector.add(interfaceC0134a);
                    c.a("TimeProvider", "removed");
                    this.j[i] = -1;
                } else if (j == jA || j2 < j) {
                    j = j2;
                }
            }
            i++;
        }
        c.a("TimeProvider", "refresh nextTimeUs:" + j + ",nowUs:" + jA);
        if (j <= jA || this.d) {
            this.a.removeMessages(1);
        } else {
            c.a("TimeProvider", "scheduling for " + j + " and " + jA);
            long j3 = ((j - jA) * 10) / ((long) this.q);
            StringBuilder sb = new StringBuilder();
            sb.append("scheduleNotification delayUs:");
            sb.append(j3);
            c.a("TimeProvider", sb.toString());
            a(1, j3);
        }
        Iterator it = vector.iterator();
        while (it.hasNext()) {
            ((com.hunantv.media.player.b.a.InterfaceC0134a) it.next()).a(jA);
        }
    }

    public void a() {
        this.a.removeMessages(4);
        this.a.removeMessages(1);
        a(this.o);
        this.o = null;
    }

    public void a(float f) {
        if (f > 0.0f) {
            this.q = (int) (f * 10.0f);
            a(1, 0L);
        }
    }

    public void b(boolean z) {
        synchronized (this) {
            c.a("TimeProvider", "onBuffering: " + z);
            this.f = z;
            a(1, 0L);
        }
    }

    private void a(int i, long j) {
        if (this.n && (i == 0 || i == 1)) {
            c.c("TimeProvider", "scheduleNotification mSeeking " + this.n + StringUtils.COMMA + i + " in " + j);
            return;
        }
        c.c("TimeProvider", "scheduleNotification " + i + " in " + j);
        this.a.removeMessages(1);
        this.a.sendMessageDelayed(this.a.obtainMessage(1, i, 0), (long) ((int) (j / 1000)));
    }

    @Override
    public void a(long j, com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a) {
        synchronized (this) {
            c.a("TimeProvider", "notifyAt " + j);
            this.j[c(interfaceC0134a)] = j;
            a(0, 0L);
        }
    }

    private void a(HandlerThread handlerThread) {
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    public synchronized void a(Pair<d, SubtitleSource> pair) {
        d dVar = (d) pair.first;
        SubtitleSource subtitleSource = (SubtitleSource) pair.second;
        if (dVar != null && subtitleSource != null) {
            dVar.a(subtitleSource.getContent(), true, -1L, subtitleSource.getCharset());
        }
    }

    @Override
    public void a(com.hunantv.media.player.b.a.InterfaceC0134a interfaceC0134a) {
        synchronized (this) {
            try {
                c.a("TimeProvider", "scheduleUpdate mStopped:" + this.e);
                int iC = c(interfaceC0134a);
                if (!this.e) {
                    this.j[iC] = 0;
                    a(0, 0L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(boolean z) {
        synchronized (this) {
            try {
                c.a("TimeProvider", "onPaused: " + z);
                if (this.e) {
                    this.e = false;
                    this.n = true;
                    a(3, 0L);
                } else {
                    this.m = z;
                    this.n = false;
                    a(1, 0L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
