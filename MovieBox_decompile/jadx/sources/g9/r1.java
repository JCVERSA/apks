package g9;

import android.util.Base64;
import com.google.android.exoplayer2.l3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public final class r1 implements t1 {

    public static final com.google.common.base.q f60855h = new com.google.common.base.q() {
        @Override
        public final Object get() {
            return r1.k();
        }
    };

    private static final Random f60856i = new Random();

    private final l3.d f60857a;

    private final l3.b f60858b;

    private final HashMap f60859c;

    private final com.google.common.base.q f60860d;

    private t1.a f60861e;

    private l3 f60862f;

    private String f60863g;

    private final class a {

        private final String f60864a;

        private int f60865b;

        private long f60866c;

        private com.google.android.exoplayer2.source.o.b f60867d;

        private boolean f60868e;

        private boolean f60869f;

        public a(String str, int i10, com.google.android.exoplayer2.source.o.b bVar) {
            this.f60864a = str;
            this.f60865b = i10;
            this.f60866c = bVar == null ? -1L : bVar.f73507d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.f60867d = bVar;
        }

        private int l(l3 l3Var, l3 l3Var2, int i10) {
            if (i10 >= l3Var.t()) {
                if (i10 < l3Var2.t()) {
                    return i10;
                }
                return -1;
            }
            l3Var.r(i10, r1.this.f60857a);
            for (int i11 = r1.this.f60857a.f24552o; i11 <= r1.this.f60857a.f24553p; i11++) {
                int iF = l3Var2.f(l3Var.q(i11));
                if (iF != -1) {
                    return l3Var2.j(iF, r1.this.f60858b).f24525c;
                }
            }
            return -1;
        }

        public boolean i(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (bVar == null) {
                return i10 == this.f60865b;
            }
            com.google.android.exoplayer2.source.o.b bVar2 = this.f60867d;
            if (bVar2 == null) {
                return !bVar.b() && bVar.f73507d == this.f60866c;
            }
            return bVar.f73507d == bVar2.f73507d && bVar.f73505b == bVar2.f73505b && bVar.f73506c == bVar2.f73506c;
        }

        public boolean j(c.a aVar) {
            long j10 = this.f60866c;
            if (j10 == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
            if (bVar == null) {
                return this.f60865b != aVar.f60731c;
            }
            if (bVar.f73507d > j10) {
                return true;
            }
            if (this.f60867d == null) {
                return false;
            }
            int iF = aVar.f60730b.f(bVar.f73504a);
            int iF2 = aVar.f60730b.f(this.f60867d.f73504a);
            com.google.android.exoplayer2.source.o.b bVar2 = aVar.f60732d;
            if (bVar2.f73507d < this.f60867d.f73507d || iF < iF2) {
                return false;
            }
            if (iF > iF2) {
                return true;
            }
            if (!bVar2.b()) {
                int i10 = aVar.f60732d.f73508e;
                return i10 == -1 || i10 > this.f60867d.f73505b;
            }
            com.google.android.exoplayer2.source.o.b bVar3 = aVar.f60732d;
            int i11 = bVar3.f73505b;
            int i12 = bVar3.f73506c;
            com.google.android.exoplayer2.source.o.b bVar4 = this.f60867d;
            int i13 = bVar4.f73505b;
            return i11 > i13 || (i11 == i13 && i12 > bVar4.f73506c);
        }

        public void k(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (this.f60866c == -1 && i10 == this.f60865b && bVar != null) {
                this.f60866c = bVar.f73507d;
            }
        }

        public boolean m(l3 l3Var, l3 l3Var2) {
            int iL = l(l3Var, l3Var2, this.f60865b);
            this.f60865b = iL;
            if (iL == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.o.b bVar = this.f60867d;
            return bVar == null || l3Var2.f(bVar.f73504a) != -1;
        }
    }

    public r1() {
        this(f60855h);
    }

    public static String k() {
        byte[] bArr = new byte[12];
        f60856i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f60859c.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j11 = aVar2.f60866c;
                if (j11 == -1 || j11 < j10) {
                    aVar = aVar2;
                    j10 = j11;
                } else if (j11 == j10 && ((a) com.google.android.exoplayer2.util.p0.j(aVar)).f60867d != null && aVar2.f60867d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = (String) this.f60860d.get();
        a aVar3 = new a(str, i10, bVar);
        this.f60859c.put(str, aVar3);
        return aVar3;
    }

    private void m(c.a aVar) {
        if (aVar.f60730b.u()) {
            this.f60863g = null;
            return;
        }
        a aVar2 = (a) this.f60859c.get(this.f60863g);
        a aVarL = l(aVar.f60731c, aVar.f60732d);
        this.f60863g = aVarL.f60864a;
        b(aVar);
        com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.f60866c == aVar.f60732d.f73507d && aVar2.f60867d != null && aVar2.f60867d.f73505b == aVar.f60732d.f73505b && aVar2.f60867d.f73506c == aVar.f60732d.f73506c) {
            return;
        }
        com.google.android.exoplayer2.source.o.b bVar2 = aVar.f60732d;
        this.f60861e.k(aVar, l(aVar.f60731c, new com.google.android.exoplayer2.source.o.b(bVar2.f73504a, bVar2.f73507d)).f60864a, aVarL.f60864a);
    }

    @Override
    public synchronized String a() {
        return this.f60863g;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d7  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r25.f60732d.f73507d < r2.f60866c) goto L21;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void b(c.a aVar) {
        c.a aVar2;
        a aVar3;
        try {
            com.google.android.exoplayer2.util.a.e(this.f60861e);
            if (aVar.f60730b.u()) {
                return;
            }
            a aVar4 = (a) this.f60859c.get(this.f60863g);
            if (aVar.f60732d != null && aVar4 != null) {
                if (aVar4.f60866c == -1) {
                    if (aVar4.f60865b != aVar.f60731c) {
                        return;
                    }
                }
            }
            a aVarL = l(aVar.f60731c, aVar.f60732d);
            if (this.f60863g == null) {
                this.f60863g = aVarL.f60864a;
            }
            com.google.android.exoplayer2.source.o.b bVar = aVar.f60732d;
            if (bVar != null && bVar.b()) {
                com.google.android.exoplayer2.source.o.b bVar2 = aVar.f60732d;
                com.google.android.exoplayer2.source.o.b bVar3 = new com.google.android.exoplayer2.source.o.b(bVar2.f73504a, bVar2.f73507d, bVar2.f73505b);
                a aVarL2 = l(aVar.f60731c, bVar3);
                if (!aVarL2.f60868e) {
                    aVarL2.f60868e = true;
                    aVar.f60730b.l(aVar.f60732d.f73504a, this.f60858b);
                    this.f60861e.v(new c.a(aVar.f60729a, aVar.f60730b, aVar.f60731c, bVar3, Math.max(0L, com.google.android.exoplayer2.util.p0.e1(this.f60858b.i(aVar.f60732d.f73505b)) + this.f60858b.p()), aVar.f60734f, aVar.f60735g, aVar.f60736h, aVar.f60737i, aVar.f60738j), aVarL2.f60864a);
                }
            }
            if (aVarL.f60868e) {
                aVar2 = aVar;
                aVar3 = aVarL;
            } else {
                aVar3 = aVarL;
                aVar3.f60868e = true;
                aVar2 = aVar;
                this.f60861e.v(aVar2, aVar3.f60864a);
            }
            if (aVar3.f60864a.equals(this.f60863g) && !aVar3.f60869f) {
                aVar3.f60869f = true;
                this.f60861e.V(aVar2, aVar3.f60864a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void c(t1.a aVar) {
        this.f60861e = aVar;
    }

    @Override
    public synchronized void d(c.a aVar) {
        try {
            com.google.android.exoplayer2.util.a.e(this.f60861e);
            l3 l3Var = this.f60862f;
            this.f60862f = aVar.f60730b;
            Iterator it = this.f60859c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (!aVar2.m(l3Var, this.f60862f) || aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f60868e) {
                        if (aVar2.f60864a.equals(this.f60863g)) {
                            this.f60863g = null;
                        }
                        this.f60861e.x(aVar, aVar2.f60864a, false);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void e(c.a aVar, int i10) {
        try {
            com.google.android.exoplayer2.util.a.e(this.f60861e);
            boolean z10 = i10 == 0;
            Iterator it = this.f60859c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f60868e) {
                        boolean zEquals = aVar2.f60864a.equals(this.f60863g);
                        boolean z11 = z10 && zEquals && aVar2.f60869f;
                        if (zEquals) {
                            this.f60863g = null;
                        }
                        this.f60861e.x(aVar, aVar2.f60864a, z11);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized String f(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar) {
        return l(l3Var.l(bVar.f73504a, this.f60858b).f24525c, bVar).f60864a;
    }

    @Override
    public synchronized void g(c.a aVar) {
        t1.a aVar2;
        this.f60863g = null;
        Iterator it = this.f60859c.values().iterator();
        while (it.hasNext()) {
            a aVar3 = (a) it.next();
            it.remove();
            if (aVar3.f60868e && (aVar2 = this.f60861e) != null) {
                aVar2.x(aVar, aVar3.f60864a, false);
            }
        }
    }

    public r1(com.google.common.base.q qVar) {
        this.f60860d = qVar;
        this.f60857a = new l3.d();
        this.f60858b = new l3.b();
        this.f60859c = new HashMap();
        this.f60862f = l3.f24520a;
    }
}
