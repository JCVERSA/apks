package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@RequiresApi(18)
public final class sz implements i40 {
    private final UUID b;
    private final l60.c c;
    private final bw0 d;
    private final HashMap<String, String> e;
    private final boolean f;
    private final int[] g;
    private final boolean h;
    private final f i;
    private final ds0 j;
    private final g k;
    private final long l;
    private final ArrayList m;
    private final Set<e> n;
    private final Set<rz> o;
    private int p;

    @Nullable
    private l60 q;

    @Nullable
    private rz r;

    @Nullable
    private rz s;
    private Looper t;
    private Handler u;
    private int v;

    @Nullable
    private byte[] w;
    private mi1 x;

    @Nullable
    volatile c y;

    public static final class a {
        private boolean d;
        private boolean f;
        private final HashMap<String, String> a = new HashMap<>();
        private UUID b = rm.d;
        private l60.c c = sc0.e;
        private d00 g = new d00();
        private int[] e = new int[0];
        private long h = 300000;

        public final a a(boolean z) {
            this.d = z;
            return this;
        }

        public final a b(boolean z) {
            this.f = z;
            return this;
        }

        public final a a(int... iArr) {
            for (int i : iArr) {
                if (i != 2 && i != 1) {
                    throw new IllegalArgumentException();
                }
            }
            this.e = (int[]) iArr.clone();
            return this;
        }

        public final a a(UUID uuid, l60.c cVar) {
            uuid.getClass();
            this.b = uuid;
            cVar.getClass();
            this.c = cVar;
            return this;
        }

        public final sz a(zh0 zh0Var) {
            return new sz(this.b, this.c, zh0Var, this.a, this.d, this.e, this.f, this.g, this.h);
        }
    }

    public class b implements l60.b {
        private b() {
        }
    }

    @SuppressLint({"HandlerLeak"})
    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (rz rzVar : sz.this.m) {
                if (rzVar.a(bArr)) {
                    rzVar.a(message.what);
                    return;
                }
            }
        }
    }

    public static final class d extends Exception {
        private d(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public class e implements i40.b {

        @Nullable
        private final h40.a b;

        @Nullable
        private g40 c;
        private boolean d;

        public e(@Nullable h40.a aVar) {
            this.b = aVar;
        }

        public void b(jc0 jc0Var) {
            sz szVar = sz.this;
            if (szVar.p == 0 || this.d) {
                return;
            }
            Looper looper = szVar.t;
            looper.getClass();
            this.c = szVar.a(looper, this.b, jc0Var, false);
            sz.this.n.add(this);
        }

        @Override
        public final void release() {
            Handler handler = sz.this.u;
            handler.getClass();
            f92.a(handler, new Runnable() {
                @Override
                public final void run() {
                    this.b.a();
                }
            });
        }

        public final void a(final jc0 jc0Var) {
            Handler handler = sz.this.u;
            handler.getClass();
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(jc0Var);
                }
            });
        }

        public void a() {
            if (this.d) {
                return;
            }
            g40 g40Var = this.c;
            if (g40Var != null) {
                g40Var.a(this.b);
            }
            sz.this.n.remove(this);
            this.d = true;
        }
    }

    public class f implements rz.a {
        private final HashSet a = new HashSet();

        @Nullable
        private rz b;

        /* JADX WARN: Multi-variable type inference failed */
        public final void a() {
            this.b = null;
            kk0 kk0VarA = kk0.a((Collection) this.a);
            this.a.clear();
            j82 j82VarListIterator = kk0VarA.listIterator(0);
            while (j82VarListIterator.hasNext()) {
                ((rz) j82VarListIterator.next()).b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Exception exc, boolean z) {
            this.b = null;
            kk0 kk0VarA = kk0.a((Collection) this.a);
            this.a.clear();
            j82 j82VarListIterator = kk0VarA.listIterator(0);
            while (j82VarListIterator.hasNext()) {
                ((rz) j82VarListIterator.next()).a(exc, z);
            }
        }

        public final void a(rz rzVar) {
            this.a.add(rzVar);
            if (this.b != null) {
                return;
            }
            this.b = rzVar;
            rzVar.d();
        }
    }

    public class g implements rz.b {
        public final void b(rz rzVar) {
            sz szVar = sz.this;
            if (szVar.l != C.TIME_UNSET) {
                szVar.o.remove(rzVar);
                Handler handler = sz.this.u;
                handler.getClass();
                handler.removeCallbacksAndMessages(rzVar);
            }
        }

        private g() {
        }

        /* JADX WARN: Code duplicated, block: B:10:0x003f  */
        /* JADX WARN: Code duplicated, block: B:12:0x0050  */
        /* JADX WARN: Code duplicated, block: B:15:0x0059  */
        /* JADX WARN: Code duplicated, block: B:18:0x006d  */
        /* JADX WARN: Code duplicated, block: B:20:0x007a  */
        /* JADX WARN: Code duplicated, block: B:23:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x003d A[DONT_INVERT] */
        public final void a(final rz rzVar, int i) {
            sz szVar;
            f fVar;
            sz szVar2;
            if (i == 1) {
                sz szVar3 = sz.this;
                if (szVar3.p > 0 && szVar3.l != C.TIME_UNSET) {
                    szVar3.o.add(rzVar);
                    Handler handler = sz.this.u;
                    handler.getClass();
                    handler.postAtTime(new Runnable() {
                        @Override
                        public final void run() {
                            rzVar.a((h40.a) null);
                        }
                    }, rzVar, SystemClock.uptimeMillis() + sz.this.l);
                } else if (i == 0) {
                    sz.this.m.remove(rzVar);
                    szVar = sz.this;
                    if (szVar.r == rzVar) {
                        szVar.r = null;
                    }
                    if (szVar.s == rzVar) {
                        szVar.s = null;
                    }
                    fVar = szVar.i;
                    fVar.a.remove(rzVar);
                    if (fVar.b == rzVar) {
                        fVar.b = null;
                        if (!fVar.a.isEmpty()) {
                            rz rzVar2 = (rz) fVar.a.iterator().next();
                            fVar.b = rzVar2;
                            rzVar2.d();
                        }
                    }
                    szVar2 = sz.this;
                    if (szVar2.l != C.TIME_UNSET) {
                        Handler handler2 = szVar2.u;
                        handler2.getClass();
                        handler2.removeCallbacksAndMessages(rzVar);
                        sz.this.o.remove(rzVar);
                    }
                }
            } else if (i == 0) {
                sz.this.m.remove(rzVar);
                szVar = sz.this;
                if (szVar.r == rzVar) {
                    szVar.r = null;
                }
                if (szVar.s == rzVar) {
                    szVar.s = null;
                }
                fVar = szVar.i;
                fVar.a.remove(rzVar);
                if (fVar.b == rzVar) {
                    fVar.b = null;
                    if (!fVar.a.isEmpty()) {
                        rz rzVar3 = (rz) fVar.a.iterator().next();
                        fVar.b = rzVar3;
                        rzVar3.d();
                    }
                }
                szVar2 = sz.this;
                if (szVar2.l != C.TIME_UNSET) {
                    Handler handler3 = szVar2.u;
                    handler3.getClass();
                    handler3.removeCallbacksAndMessages(rzVar);
                    sz.this.o.remove(rzVar);
                }
            }
            sz szVar4 = sz.this;
            if (szVar4.q != null && szVar4.p == 0 && szVar4.m.isEmpty() && szVar4.n.isEmpty()) {
                l60 l60Var = szVar4.q;
                l60Var.getClass();
                l60Var.release();
                szVar4.q = null;
            }
        }
    }

    @Override
    public final void prepare() {
        int i = this.p;
        this.p = i + 1;
        if (i != 0) {
            return;
        }
        if (this.q == null) {
            l60 l60VarA = this.c.a(this.b);
            this.q = l60VarA;
            l60VarA.a(new b());
        } else if (this.l != C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.m.size(); i2++) {
                ((rz) this.m.get(i2)).b(null);
            }
        }
    }

    @Override
    public final void release() {
        int i = this.p - 1;
        this.p = i;
        if (i != 0) {
            return;
        }
        if (this.l != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.m);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((rz) arrayList.get(i2)).a((h40.a) null);
            }
        }
        Iterator it = mk0.a(this.n).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
        if (this.q != null && this.p == 0 && this.m.isEmpty() && this.n.isEmpty()) {
            l60 l60Var = this.q;
            l60Var.getClass();
            l60Var.release();
            this.q = null;
        }
    }

    private sz(UUID uuid, l60.c cVar, zh0 zh0Var, HashMap map, boolean z, int[] iArr, boolean z2, d00 d00Var, long j) {
        hg.a(uuid);
        hg.a("Use C.CLEARKEY_UUID instead", !rm.b.equals(uuid));
        this.b = uuid;
        this.c = cVar;
        this.d = zh0Var;
        this.e = map;
        this.f = z;
        this.g = iArr;
        this.h = z2;
        this.j = d00Var;
        this.i = new f();
        this.k = new g();
        this.v = 0;
        this.m = new ArrayList();
        this.n = wx1.a();
        this.o = wx1.a();
        this.l = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public g40 a(Looper looper, @Nullable h40.a aVar, jc0 jc0Var, boolean z) {
        ArrayList arrayListA;
        if (this.y == null) {
            this.y = new c(looper);
        }
        f40 f40Var = jc0Var.p;
        rz rzVarA = null;
        Object[] objArr = 0;
        if (f40Var == null) {
            int iC = w01.c(jc0Var.m);
            l60 l60Var = this.q;
            l60Var.getClass();
            if (l60Var.b() == 2 && rc0.d) {
                return null;
            }
            int[] iArr = this.g;
            for (int i = 0; i < iArr.length; i++) {
                if (iArr[i] == iC) {
                    if (i == -1 || l60Var.b() == 1) {
                        return null;
                    }
                    rz rzVar = this.r;
                    if (rzVar == null) {
                        rz rzVarA2 = a(kk0.h(), true, (h40.a) null, z);
                        this.m.add(rzVarA2);
                        this.r = rzVarA2;
                    } else {
                        rzVar.b(null);
                    }
                    return this.r;
                }
            }
            return null;
        }
        if (this.w == null) {
            arrayListA = a(f40Var, this.b, false);
            if (arrayListA.isEmpty()) {
                d dVar = new d(this.b);
                et0.a("DefaultDrmSessionMgr", "DRM error", dVar);
                if (aVar != null) {
                    aVar.a(dVar);
                }
                return new u50(new g40.a(dVar, 6003));
            }
        } else {
            arrayListA = null;
        }
        if (this.f) {
            for (rz rzVar2 : this.m) {
                if (f92.a(rzVar2.a, arrayListA)) {
                    rzVarA = rzVar2;
                    break;
                }
            }
        } else {
            rzVarA = this.s;
        }
        if (rzVarA == null) {
            rzVarA = a((List<f40.b>) arrayListA, false, aVar, z);
            if (!this.f) {
                this.s = rzVarA;
            }
            this.m.add(rzVarA);
        } else {
            rzVarA.b(aVar);
        }
        return rzVarA;
    }

    @Override
    @Nullable
    public final g40 b(@Nullable h40.a aVar, jc0 jc0Var) {
        if (this.p <= 0) {
            throw new IllegalStateException();
        }
        Looper looper = this.t;
        if (looper != null) {
            return a(looper, aVar, jc0Var, true);
        }
        throw new IllegalStateException();
    }

    private rz a(@Nullable List<f40.b> list, boolean z, @Nullable h40.a aVar) {
        this.q.getClass();
        boolean z2 = this.h | z;
        UUID uuid = this.b;
        l60 l60Var = this.q;
        f fVar = this.i;
        g gVar = this.k;
        int i = this.v;
        byte[] bArr = this.w;
        HashMap<String, String> map = this.e;
        bw0 bw0Var = this.d;
        Looper looper = this.t;
        looper.getClass();
        ds0 ds0Var = this.j;
        mi1 mi1Var = this.x;
        mi1Var.getClass();
        rz rzVar = new rz(uuid, l60Var, fVar, gVar, list, i, z2, z, bArr, map, bw0Var, looper, ds0Var, mi1Var);
        rzVar.b(aVar);
        if (this.l != C.TIME_UNSET) {
            rzVar.b(null);
        }
        return rzVar;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002e  */
    /* JADX WARN: Code duplicated, block: B:13:0x003e A[LOOP:0: B:11:0x0038->B:13:0x003e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:16:0x0051  */
    /* JADX WARN: Code duplicated, block: B:8:0x0026  */
    private rz a(@Nullable List<f40.b> list, boolean z, @Nullable h40.a aVar, boolean z2) {
        Iterator it;
        rz rzVarA = a(list, z, aVar);
        if (rzVarA.getState() == 1) {
            if (f92.a >= 19) {
                g40.a error = rzVarA.getError();
                error.getClass();
                if (error.getCause() instanceof ResourceBusyException) {
                    if (!this.o.isEmpty()) {
                        it = mk0.a(this.o).iterator();
                        while (it.hasNext()) {
                            ((g40) it.next()).a(null);
                        }
                        rzVarA.a(aVar);
                        if (this.l != C.TIME_UNSET) {
                            rzVarA.a((h40.a) null);
                        }
                        rzVarA = a(list, z, aVar);
                    }
                }
            } else if (!this.o.isEmpty()) {
                it = mk0.a(this.o).iterator();
                while (it.hasNext()) {
                    ((g40) it.next()).a(null);
                }
                rzVarA.a(aVar);
                if (this.l != C.TIME_UNSET) {
                    rzVarA.a((h40.a) null);
                }
                rzVarA = a(list, z, aVar);
            }
        }
        if (rzVarA.getState() != 1) {
            return rzVarA;
        }
        if (f92.a >= 19) {
            g40.a error2 = rzVarA.getError();
            error2.getClass();
            if (!(error2.getCause() instanceof ResourceBusyException)) {
                return rzVarA;
            }
        }
        if (!z2 || this.n.isEmpty()) {
            return rzVarA;
        }
        Iterator it2 = mk0.a(this.n).iterator();
        while (it2.hasNext()) {
            ((e) it2.next()).release();
        }
        if (!this.o.isEmpty()) {
            Iterator it3 = mk0.a(this.o).iterator();
            while (it3.hasNext()) {
                ((g40) it3.next()).a(null);
            }
        }
        rzVarA.a(aVar);
        if (this.l != C.TIME_UNSET) {
            rzVarA.a((h40.a) null);
        }
        return a(list, z, aVar);
    }

    @Override
    public final int a(jc0 jc0Var) {
        String str;
        l60 l60Var = this.q;
        l60Var.getClass();
        int iB = l60Var.b();
        f40 f40Var = jc0Var.p;
        if (f40Var == null) {
            int iC = w01.c(jc0Var.m);
            int[] iArr = this.g;
            for (int i = 0; i < iArr.length; i++) {
                if (iArr[i] == iC) {
                    if (i == -1) {
                        break;
                    }
                    return iB;
                }
            }
            return 0;
        }
        if (this.w != null) {
            return iB;
        }
        if (a(f40Var, this.b, true).isEmpty()) {
            if (f40Var.e == 1) {
                f40.b bVarA = f40Var.a(0);
                UUID uuid = rm.b;
                bVarA.getClass();
                if (rm.a.equals(bVarA.c) || uuid.equals(bVarA.c)) {
                    et0.d("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.b);
                    str = f40Var.d;
                    return str == null ? iB : iB;
                }
            }
        } else {
            str = f40Var.d;
            if (str == null && !C.CENC_TYPE_cenc.equals(str)) {
                if (C.CENC_TYPE_cbcs.equals(str)) {
                    if (f92.a >= 25) {
                        return iB;
                    }
                } else if (!C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str)) {
                    return iB;
                }
            }
        }
        return 1;
    }

    @Override
    public final i40.b a(@Nullable h40.a aVar, jc0 jc0Var) {
        if (this.p > 0) {
            if (this.t != null) {
                e eVar = new e(aVar);
                eVar.a(jc0Var);
                return eVar;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    public final void a(@Nullable byte[] bArr) {
        if (this.m.isEmpty()) {
            this.v = 0;
            this.w = bArr;
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(Looper looper, mi1 mi1Var) {
        synchronized (this) {
            try {
                Looper looper2 = this.t;
                if (looper2 == null) {
                    this.t = looper;
                    this.u = new Handler(looper);
                } else if (looper2 == looper) {
                    this.u.getClass();
                } else {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.x = mi1Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    private static ArrayList a(f40 f40Var, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(f40Var.e);
        for (int i = 0; i < f40Var.e; i++) {
            f40.b bVarA = f40Var.a(i);
            bVarA.getClass();
            UUID uuid2 = rm.a;
            if (!uuid2.equals(bVarA.c) && !uuid.equals(bVarA.c)) {
                if (rm.c.equals(uuid)) {
                    UUID uuid3 = rm.b;
                    if (uuid2.equals(bVarA.c) || uuid3.equals(bVarA.c)) {
                        if (bVarA.f == null) {
                            arrayList.add(bVarA);
                        } else {
                            arrayList.add(bVarA);
                        }
                    }
                }
            } else if (bVarA.f == null || z) {
                arrayList.add(bVarA);
            }
        }
        return arrayList;
    }
}
