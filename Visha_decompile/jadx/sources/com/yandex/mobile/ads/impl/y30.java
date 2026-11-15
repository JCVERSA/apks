package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.muxer.MuxerUtil;
import com.yandex.mobile.ads.impl.sq1;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

public final class y30 {
    public static final rq1 h = new rq1(1);
    private final b a;
    private final CopyOnWriteArraySet<c> b;
    private int c;
    private boolean d;
    private int e;
    private boolean f;
    private List<w30> g;

    public static final class a {
        public final w30 a;
        public final boolean b;
        public final List<w30> c;

        public a(w30 w30Var, boolean z, ArrayList arrayList, @Nullable Exception exc) {
            this.a = w30Var;
            this.b = z;
            this.c = arrayList;
        }
    }

    public static final class b extends Handler {
        private final HandlerThread a;
        private final al2 b;
        private final c40 c;
        private final Handler d;
        private final ArrayList<w30> e;
        private final HashMap<String, d> f;
        private int g;
        private boolean h;
        private int i;
        private int j;
        private int k;

        public b(HandlerThread handlerThread, pz pzVar, qz qzVar, Handler handler, boolean z) {
            super(handlerThread.getLooper());
            this.a = handlerThread;
            this.b = pzVar;
            this.c = qzVar;
            this.d = handler;
            this.i = 3;
            this.j = 5;
            this.h = z;
            this.e = new ArrayList<>();
            this.f = new HashMap<>();
        }

        public static int a(w30 w30Var, w30 w30Var2) {
            long j = w30Var.c;
            long j2 = w30Var2.c;
            int i = f92.a;
            if (j < j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override
        public final void handleMessage(Message message) {
            x30 x30VarA = null;
            i = 0;
            int i = 0;
            switch (message.what) {
                case 0:
                    this.g = message.arg1;
                    try {
                        ((pz) this.b).b();
                        x30VarA = ((pz) this.b).a(0, 1, 2, 5, 7);
                        while (true) {
                            pz.a aVar = (pz.a) x30VarA;
                            if (!aVar.a(aVar.b() + 1)) {
                                this.d.obtainMessage(0, new ArrayList(this.e)).sendToTarget();
                                b();
                                i = 1;
                                this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                                return;
                            }
                            this.e.add(((pz.a) x30VarA).a());
                        }
                    } catch (IOException e) {
                        et0.a("DownloadManager", "Failed to load index.", e);
                        this.e.clear();
                    } finally {
                        f92.a((Closeable) x30VarA);
                    }
                    break;
                case 1:
                    this.h = message.arg1 != 0;
                    b();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 2:
                    this.g = message.arg1;
                    b();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 3:
                    String str = (String) message.obj;
                    int i2 = message.arg1;
                    if (str != null) {
                        w30 w30VarA = a(str, false);
                        if (w30VarA != null) {
                            a(w30VarA, i2);
                        } else {
                            try {
                                ((pz) this.b).a(i2, str);
                            } catch (IOException e2) {
                                et0.a("DownloadManager", "Failed to set manual stop reason: ".concat(str), e2);
                            }
                        }
                        break;
                    } else {
                        for (int i3 = 0; i3 < this.e.size(); i3++) {
                            a(this.e.get(i3), i2);
                        }
                        try {
                            ((pz) this.b).a(i2);
                        } catch (IOException e3) {
                            et0.a("DownloadManager", "Failed to set manual stop reason", e3);
                        }
                        break;
                    }
                    b();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 4:
                    this.i = message.arg1;
                    b();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 5:
                    this.j = message.arg1;
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 6:
                    a40 a40Var = (a40) message.obj;
                    int i4 = message.arg1;
                    w30 w30VarA2 = a(a40Var.b, true);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (w30VarA2 != null) {
                        int i5 = w30VarA2.b;
                        long j = (i5 == 5 || i5 == 3 || i5 == 4) ? jCurrentTimeMillis : w30VarA2.c;
                        a(new w30(w30VarA2.a.a(a40Var), (i5 == 5 || i5 == 7) ? 7 : i4 != 0 ? 1 : 0, j, jCurrentTimeMillis, -1L, i4, 0, new z30()));
                    } else {
                        a(new w30(a40Var, i4 != 0 ? 1 : 0, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i4, 0, new z30()));
                    }
                    b();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 7:
                    String str2 = (String) message.obj;
                    w30 w30VarA3 = a(str2, true);
                    if (w30VarA3 == null) {
                        et0.b("DownloadManager", "Failed to remove nonexistent download: " + str2);
                    } else {
                        a(w30VarA3, 5, 0);
                        b();
                    }
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 8:
                    a();
                    i = 1;
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 9:
                    d dVar = (d) message.obj;
                    String str3 = dVar.b.b;
                    this.f.remove(str3);
                    boolean z = dVar.e;
                    if (!z) {
                        int i6 = this.k - 1;
                        this.k = i6;
                        if (i6 == 0) {
                            removeMessages(11);
                        }
                    }
                    if (!dVar.h) {
                        Exception exc = dVar.i;
                        if (exc != null) {
                            et0.a("DownloadManager", "Task failed: " + dVar.b + ", " + z, exc);
                        }
                        w30 w30VarA4 = a(str3, false);
                        w30VarA4.getClass();
                        int i7 = w30VarA4.b;
                        if (i7 != 2) {
                            if (i7 != 5 && i7 != 7) {
                                throw new IllegalStateException();
                            }
                            if (!z) {
                                throw new IllegalStateException();
                            }
                            if (i7 == 7) {
                                int i8 = w30VarA4.f;
                                a(w30VarA4, i8 == 0 ? 0 : 1, i8);
                                b();
                            } else {
                                this.e.remove(a(w30VarA4.a.b));
                                try {
                                    ((pz) this.b).c(w30VarA4.a.b);
                                } catch (IOException unused) {
                                    et0.b("DownloadManager", "Failed to remove from database");
                                }
                                this.d.obtainMessage(2, new a(w30VarA4, true, new ArrayList(this.e), null)).sendToTarget();
                            }
                        } else {
                            if (z) {
                                throw new IllegalStateException();
                            }
                            w30 w30Var = new w30(w30VarA4.a, exc == null ? 3 : 4, w30VarA4.c, System.currentTimeMillis(), w30VarA4.e, w30VarA4.f, exc == null ? 0 : 1, w30VarA4.h);
                            this.e.remove(a(w30Var.a.b));
                            try {
                                ((pz) this.b).a(w30Var);
                            } catch (IOException e4) {
                                et0.a("DownloadManager", "Failed to update index.", e4);
                            }
                            this.d.obtainMessage(2, new a(w30Var, false, new ArrayList(this.e), exc)).sendToTarget();
                        }
                        b();
                        break;
                    } else {
                        b();
                    }
                    this.d.obtainMessage(1, i, this.f.size()).sendToTarget();
                    return;
                case 10:
                    d dVar2 = (d) message.obj;
                    int i9 = message.arg1;
                    int i10 = message.arg2;
                    int i11 = f92.a;
                    long j2 = ((((long) i9) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i10));
                    w30 w30VarA5 = a(dVar2.b.b, false);
                    w30VarA5.getClass();
                    if (j2 == w30VarA5.e || j2 == -1) {
                        return;
                    }
                    a(new w30(w30VarA5.a, w30VarA5.b, w30VarA5.c, System.currentTimeMillis(), j2, w30VarA5.f, w30VarA5.g, w30VarA5.h));
                    return;
                case 11:
                    for (int i12 = 0; i12 < this.e.size(); i12++) {
                        w30 w30Var2 = this.e.get(i12);
                        if (w30Var2.b == 2) {
                            try {
                                ((pz) this.b).a(w30Var2);
                            } catch (IOException e5) {
                                et0.a("DownloadManager", "Failed to update index.", e5);
                            }
                        }
                    }
                    sendEmptyMessageDelayed(11, 5000L);
                    return;
                case 12:
                    Iterator<d> it = this.f.values().iterator();
                    while (it.hasNext()) {
                        it.next().a(true);
                    }
                    try {
                        ((pz) this.b).b();
                        break;
                    } catch (IOException e6) {
                        et0.a("DownloadManager", "Failed to update index.", e6);
                    }
                    this.e.clear();
                    this.a.quit();
                    synchronized (this) {
                        notifyAll();
                        break;
                    }
                    return;
                default:
                    throw new IllegalStateException();
            }
        }

        @Nullable
        private w30 a(String str, boolean z) {
            int iA = a(str);
            if (iA != -1) {
                return this.e.get(iA);
            }
            if (!z) {
                return null;
            }
            try {
                return ((pz) this.b).b(str);
            } catch (IOException e) {
                et0.a("DownloadManager", "Failed to load download: " + str, e);
                return null;
            }
        }

        private void b() {
            int i = 0;
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                w30 w30Var = this.e.get(i2);
                d dVar = this.f.get(w30Var.a.b);
                int i3 = w30Var.b;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 == 2) {
                            dVar.getClass();
                            if (dVar.e) {
                                throw new IllegalStateException();
                            }
                            if (this.h || this.g != 0 || i >= this.i) {
                                a(w30Var, 0, 0);
                                dVar.a(false);
                            }
                        } else {
                            if (i3 != 5 && i3 != 7) {
                                throw new IllegalStateException();
                            }
                            if (dVar == null) {
                                d dVar2 = new d(w30Var.a, ((qz) this.c).a(w30Var.a), w30Var.h, true, this.j, this);
                                this.f.put(w30Var.a.b, dVar2);
                                dVar2.start();
                            } else if (!dVar.e) {
                                dVar.a(false);
                            }
                        }
                    } else if (dVar != null) {
                        if (dVar.e) {
                            throw new IllegalStateException();
                        }
                        dVar.a(false);
                    }
                } else if (dVar != null) {
                    if (dVar.e) {
                        throw new IllegalStateException();
                    }
                    dVar.a(false);
                } else if (this.h || this.g != 0 || this.k >= this.i) {
                    dVar = null;
                } else {
                    w30 w30VarA = a(w30Var, 2, 0);
                    dVar = new d(w30VarA.a, ((qz) this.c).a(w30VarA.a), w30VarA.h, false, this.j, this);
                    this.f.put(w30VarA.a.b, dVar);
                    int i4 = this.k;
                    this.k = i4 + 1;
                    if (i4 == 0) {
                        sendEmptyMessageDelayed(11, 5000L);
                    }
                    dVar.start();
                }
                if (dVar != null && !dVar.e) {
                    i++;
                }
            }
        }

        private int a(String str) {
            for (int i = 0; i < this.e.size(); i++) {
                if (this.e.get(i).a.b.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        private w30 a(w30 w30Var) {
            int i = w30Var.b;
            if (i != 3 && i != 4) {
                int iA = a(w30Var.a.b);
                if (iA == -1) {
                    this.e.add(w30Var);
                    Collections.sort(this.e, new as2());
                } else {
                    boolean z = w30Var.c != this.e.get(iA).c;
                    this.e.set(iA, w30Var);
                    if (z) {
                        Collections.sort(this.e, new as2());
                    }
                }
                try {
                    ((pz) this.b).a(w30Var);
                } catch (IOException e) {
                    et0.a("DownloadManager", "Failed to update index.", e);
                }
                this.d.obtainMessage(2, new a(w30Var, false, new ArrayList(this.e), null)).sendToTarget();
                return w30Var;
            }
            throw new IllegalStateException();
        }

        private w30 a(w30 w30Var, int i, int i2) {
            if (i != 3 && i != 4) {
                return a(new w30(w30Var.a, i, w30Var.c, System.currentTimeMillis(), w30Var.e, i2, 0, w30Var.h));
            }
            throw new IllegalStateException();
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0053 A[LOOP:1: B:19:0x004b->B:21:0x0053, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:25:0x008a A[LOOP:2: B:23:0x0084->B:25:0x008a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:34:0x00df A[LOOP:3: B:32:0x00d7->B:34:0x00df, LOOP_END] */
        private void a() {
            int i;
            int i2;
            ArrayList arrayList;
            int i3;
            ArrayList arrayList2 = new ArrayList();
            try {
                try {
                    x30 x30VarA = ((pz) this.b).a(3, 4);
                    while (true) {
                        try {
                            pz.a aVar = (pz.a) x30VarA;
                            if (!aVar.a(aVar.b() + 1)) {
                                break;
                            } else {
                                arrayList2.add(((pz.a) x30VarA).a());
                            }
                            for (i = 0; i < this.e.size(); i++) {
                                ArrayList<w30> arrayList3 = this.e;
                                w30 w30Var = arrayList3.get(i);
                                arrayList3.set(i, new w30(w30Var.a, 5, w30Var.c, System.currentTimeMillis(), w30Var.e, 0, 0, w30Var.h));
                            }
                            for (i2 = 0; i2 < arrayList2.size(); i2++) {
                                ArrayList<w30> arrayList4 = this.e;
                                w30 w30Var2 = (w30) arrayList2.get(i2);
                                arrayList4.add(new w30(w30Var2.a, 5, w30Var2.c, System.currentTimeMillis(), w30Var2.e, 0, 0, w30Var2.h));
                            }
                            Collections.sort(this.e, new as2());
                            ((pz) this.b).c();
                            arrayList = new ArrayList(this.e);
                            for (i3 = 0; i3 < this.e.size(); i3++) {
                                this.d.obtainMessage(2, new a(this.e.get(i3), false, arrayList, null)).sendToTarget();
                            }
                            b();
                        } catch (Throwable th) {
                            try {
                                ((pz.a) x30VarA).close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                        et0.b("DownloadManager", "Failed to load downloads.");
                    }
                    ((pz.a) x30VarA).close();
                } catch (IOException unused) {
                    et0.b("DownloadManager", "Failed to load downloads.");
                }
                ((pz) this.b).c();
            } catch (IOException e) {
                et0.a("DownloadManager", "Failed to update index.", e);
            }
            while (i < this.e.size()) {
                ArrayList<w30> arrayList5 = this.e;
                w30 w30Var3 = arrayList5.get(i);
                arrayList5.set(i, new w30(w30Var3.a, 5, w30Var3.c, System.currentTimeMillis(), w30Var3.e, 0, 0, w30Var3.h));
            }
            while (i2 < arrayList2.size()) {
                ArrayList<w30> arrayList6 = this.e;
                w30 w30Var4 = (w30) arrayList2.get(i2);
                arrayList6.add(new w30(w30Var4.a, 5, w30Var4.c, System.currentTimeMillis(), w30Var4.e, 0, 0, w30Var4.h));
            }
            Collections.sort(this.e, new as2());
            arrayList = new ArrayList(this.e);
            while (i3 < this.e.size()) {
                this.d.obtainMessage(2, new a(this.e.get(i3), false, arrayList, null)).sendToTarget();
            }
            b();
        }

        private void a(w30 w30Var, int i) {
            if (i == 0) {
                if (w30Var.b == 1) {
                    a(w30Var, 0, 0);
                }
            } else if (i != w30Var.f) {
                int i2 = w30Var.b;
                if (i2 == 0 || i2 == 2) {
                    i2 = 1;
                }
                a(new w30(w30Var.a, i2, w30Var.c, System.currentTimeMillis(), w30Var.e, i, 0, w30Var.h));
            }
        }
    }

    public interface c {
        default void a(y30 y30Var, w30 w30Var) {
        }
    }

    public static class d extends Thread implements b40.a {
        private final a40 b;
        private final b40 c;
        private final z30 d;
        private final boolean e;
        private final int f;

        @Nullable
        private volatile b g;
        private volatile boolean h;

        @Nullable
        private Exception i;
        private long j;

        @Override
        public final void run() {
            try {
                if (this.e) {
                    this.c.remove();
                } else {
                    long j = -1;
                    int i = 0;
                    while (!this.h) {
                        try {
                            this.c.a(this);
                            break;
                        } catch (IOException e) {
                            if (!this.h) {
                                long j2 = this.d.a;
                                if (j2 != j) {
                                    i = 0;
                                    j = j2;
                                }
                                int i2 = i + 1;
                                if (i2 > this.f) {
                                    throw e;
                                }
                                Thread.sleep(Math.min(i * 1000, 5000));
                                i = i2;
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e2) {
                this.i = e2;
            }
            b bVar = this.g;
            if (bVar != null) {
                bVar.obtainMessage(9, this).sendToTarget();
            }
        }

        private d(a40 a40Var, b40 b40Var, z30 z30Var, boolean z, int i, b bVar) {
            this.b = a40Var;
            this.c = b40Var;
            this.d = z30Var;
            this.e = z;
            this.f = i;
            this.g = bVar;
            this.j = -1L;
        }

        public final void a(boolean z) {
            if (z) {
                this.g = null;
            }
            if (this.h) {
                return;
            }
            this.h = true;
            this.c.cancel();
            interrupt();
        }

        public final void a(long j, long j2, float f) {
            this.d.a = j2;
            this.d.b = f;
            if (j != this.j) {
                this.j = j;
                b bVar = this.g;
                if (bVar != null) {
                    bVar.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
                }
            }
        }
    }

    public y30(Context context, pz pzVar, qz qzVar) {
        context.getApplicationContext();
        this.d = true;
        this.g = Collections.emptyList();
        this.b = new CopyOnWriteArraySet<>();
        Handler handlerB = f92.b(new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.a(message);
            }
        });
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        b bVar = new b(handlerThread, pzVar, qzVar, handlerB, this.d);
        this.a = bVar;
        int iA = new sq1(context, new sq1.b() {
            @Override
            public final void a(sq1 sq1Var, int i) {
                this.a.a(sq1Var, i);
            }
        }).a();
        this.e = iA;
        this.c = 1;
        bVar.obtainMessage(0, iA, 0).sendToTarget();
    }

    private boolean b() {
        boolean z;
        if (!this.d && this.e != 0) {
            int i = 0;
            while (true) {
                if (i >= this.g.size()) {
                    z = false;
                    break;
                }
                if (this.g.get(i).b == 0) {
                    z = true;
                    break;
                }
                i++;
            }
        } else {
            z = false;
            break;
        }
        boolean z2 = this.f != z;
        this.f = z;
        return z2;
    }

    public final void a(a40 a40Var) {
        this.c++;
        this.a.obtainMessage(6, 0, 0, a40Var).sendToTarget();
    }

    public final void a(qj2 qj2Var) {
        this.b.add(qj2Var);
    }

    public boolean a(Message message) {
        int i = message.what;
        if (i == 0) {
            this.g = Collections.unmodifiableList((List) message.obj);
            boolean zB = b();
            Iterator<c> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().getClass();
            }
            if (zB) {
                Iterator<c> it2 = this.b.iterator();
                while (it2.hasNext()) {
                    it2.next().getClass();
                }
            }
        } else if (i == 1) {
            int i2 = message.arg1;
            int i3 = message.arg2;
            int i4 = this.c - i2;
            this.c = i4;
            if (i3 == 0 && i4 == 0) {
                Iterator<c> it3 = this.b.iterator();
                while (it3.hasNext()) {
                    it3.next().getClass();
                }
            }
        } else if (i == 2) {
            a aVar = (a) message.obj;
            this.g = Collections.unmodifiableList(aVar.c);
            w30 w30Var = aVar.a;
            boolean zB2 = b();
            if (aVar.b) {
                Iterator<c> it4 = this.b.iterator();
                while (it4.hasNext()) {
                    it4.next().getClass();
                }
            } else {
                Iterator<c> it5 = this.b.iterator();
                while (it5.hasNext()) {
                    it5.next().a(this, w30Var);
                }
            }
            if (zB2) {
                Iterator<c> it6 = this.b.iterator();
                while (it6.hasNext()) {
                    it6.next().getClass();
                }
            }
        } else {
            throw new IllegalStateException();
        }
        return true;
    }

    public void a(sq1 sq1Var, int i) {
        sq1Var.getClass();
        if (this.e != i) {
            this.e = i;
            this.c++;
            this.a.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean zB = b();
        Iterator<c> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().getClass();
        }
        if (zB) {
            Iterator<c> it2 = this.b.iterator();
            while (it2.hasNext()) {
                it2.next().getClass();
            }
        }
    }

    public final void a(String str) {
        this.c++;
        this.a.obtainMessage(7, str).sendToTarget();
    }

    public final void a(c cVar) {
        this.b.remove(cVar);
    }

    public final void a() {
        if (this.d) {
            this.d = false;
            this.c++;
            this.a.obtainMessage(1, 0, 0).sendToTarget();
            boolean zB = b();
            Iterator<c> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().getClass();
            }
            if (zB) {
                Iterator<c> it2 = this.b.iterator();
                while (it2.hasNext()) {
                    it2.next().getClass();
                }
            }
        }
    }
}
