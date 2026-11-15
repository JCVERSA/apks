package x1;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public final class u1 implements c4 {

    public static final com.google.common.base.q f75007i = new com.google.common.base.q() {
        @Override
        public final Object get() {
            return u1.m();
        }
    };

    private static final Random f75008j = new Random();

    private final androidx.media3.common.e0.c f75009a;

    private final androidx.media3.common.e0.b f75010b;

    private final HashMap f75011c;

    private final com.google.common.base.q f75012d;

    private c4.a f75013e;

    private androidx.media3.common.e0 f75014f;

    private String f75015g;

    private long f75016h;

    private final class a {

        private final String f75017a;

        private int f75018b;

        private long f75019c;

        private androidx.media3.exoplayer.source.r.b f75020d;

        private boolean f75021e;

        private boolean f75022f;

        public a(String str, int i10, androidx.media3.exoplayer.source.r.b bVar) {
            this.f75017a = str;
            this.f75018b = i10;
            this.f75019c = bVar == null ? -1L : bVar.f12574d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.f75020d = bVar;
        }

        private int l(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i10) {
            if (i10 >= e0Var.p()) {
                if (i10 < e0Var2.p()) {
                    return i10;
                }
                return -1;
            }
            e0Var.n(i10, u1.this.f75009a);
            for (int i11 = u1.this.f75009a.f9652n; i11 <= u1.this.f75009a.f9653o; i11++) {
                int iB = e0Var2.b(e0Var.m(i11));
                if (iB != -1) {
                    return e0Var2.f(iB, u1.this.f75010b).f9624c;
                }
            }
            return -1;
        }

        public boolean i(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            if (bVar == null) {
                return i10 == this.f75018b;
            }
            androidx.media3.exoplayer.source.r.b bVar2 = this.f75020d;
            if (bVar2 == null) {
                return !bVar.b() && bVar.f12574d == this.f75019c;
            }
            return bVar.f12574d == bVar2.f12574d && bVar.f12572b == bVar2.f12572b && bVar.f12573c == bVar2.f12573c;
        }

        public boolean j(c.a aVar) {
            androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
            if (bVar == null) {
                return this.f75018b != aVar.f74858c;
            }
            long j10 = this.f75019c;
            if (j10 == -1) {
                return false;
            }
            if (bVar.f12574d > j10) {
                return true;
            }
            if (this.f75020d == null) {
                return false;
            }
            int iB = aVar.f74857b.b(bVar.f12571a);
            int iB2 = aVar.f74857b.b(this.f75020d.f12571a);
            androidx.media3.exoplayer.source.r.b bVar2 = aVar.f74859d;
            if (bVar2.f12574d < this.f75020d.f12574d || iB < iB2) {
                return false;
            }
            if (iB > iB2) {
                return true;
            }
            if (!bVar2.b()) {
                int i10 = aVar.f74859d.f12575e;
                return i10 == -1 || i10 > this.f75020d.f12572b;
            }
            androidx.media3.exoplayer.source.r.b bVar3 = aVar.f74859d;
            int i11 = bVar3.f12572b;
            int i12 = bVar3.f12573c;
            androidx.media3.exoplayer.source.r.b bVar4 = this.f75020d;
            int i13 = bVar4.f12572b;
            if (i11 <= i13) {
                return i11 == i13 && i12 > bVar4.f12573c;
            }
            return true;
        }

        public void k(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            if (this.f75019c != -1 || i10 != this.f75018b || bVar == null || bVar.f12574d < u1.this.n()) {
                return;
            }
            this.f75019c = bVar.f12574d;
        }

        public boolean m(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
            int iL = l(e0Var, e0Var2, this.f75018b);
            this.f75018b = iL;
            if (iL == -1) {
                return false;
            }
            androidx.media3.exoplayer.source.r.b bVar = this.f75020d;
            return bVar == null || e0Var2.b(bVar.f12571a) != -1;
        }
    }

    public u1() {
        this(f75007i);
    }

    private void l(a aVar) {
        if (aVar.f75019c != -1) {
            this.f75016h = aVar.f75019c;
        }
        this.f75015g = null;
    }

    public static String m() {
        byte[] bArr = new byte[12];
        f75008j.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    public long n() {
        a aVar = (a) this.f75011c.get(this.f75015g);
        return (aVar == null || aVar.f75019c == -1) ? this.f75016h + 1 : aVar.f75019c;
    }

    private a o(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f75011c.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j11 = aVar2.f75019c;
                if (j11 == -1 || j11 < j10) {
                    aVar = aVar2;
                    j10 = j11;
                } else if (j11 == j10 && ((a) androidx.media3.common.util.a1.i(aVar)).f75020d != null && aVar2.f75020d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = (String) this.f75012d.get();
        a aVar3 = new a(str, i10, bVar);
        this.f75011c.put(str, aVar3);
        return aVar3;
    }

    private void p(c.a aVar) {
        if (aVar.f74857b.q()) {
            String str = this.f75015g;
            if (str != null) {
                l((a) androidx.media3.common.util.a.e((a) this.f75011c.get(str)));
                return;
            }
            return;
        }
        a aVar2 = (a) this.f75011c.get(this.f75015g);
        a aVarO = o(aVar.f74858c, aVar.f74859d);
        this.f75015g = aVarO.f75017a;
        f(aVar);
        androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.f75019c == aVar.f74859d.f12574d && aVar2.f75020d != null && aVar2.f75020d.f12572b == aVar.f74859d.f12572b && aVar2.f75020d.f12573c == aVar.f74859d.f12573c) {
            return;
        }
        androidx.media3.exoplayer.source.r.b bVar2 = aVar.f74859d;
        this.f75013e.y(aVar, o(aVar.f74858c, new androidx.media3.exoplayer.source.r.b(bVar2.f12571a, bVar2.f12574d)).f75017a, aVarO.f75017a);
    }

    @Override
    public synchronized String a() {
        return this.f75015g;
    }

    @Override
    public synchronized String b(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        return o(e0Var.h(bVar.f12571a, this.f75010b).f9624c, bVar).f75017a;
    }

    @Override
    public synchronized void c(c.a aVar, int i10) {
        try {
            androidx.media3.common.util.a.e(this.f75013e);
            boolean z10 = i10 == 0;
            Iterator it = this.f75011c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f75021e) {
                        boolean zEquals = aVar2.f75017a.equals(this.f75015g);
                        boolean z11 = z10 && zEquals && aVar2.f75022f;
                        if (zEquals) {
                            l(aVar2);
                        }
                        this.f75013e.i(aVar, aVar2.f75017a, z11);
                    }
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void d(c.a aVar) {
        c4.a aVar2;
        try {
            String str = this.f75015g;
            if (str != null) {
                l((a) androidx.media3.common.util.a.e((a) this.f75011c.get(str)));
            }
            Iterator it = this.f75011c.values().iterator();
            while (it.hasNext()) {
                a aVar3 = (a) it.next();
                it.remove();
                if (aVar3.f75021e && (aVar2 = this.f75013e) != null) {
                    aVar2.i(aVar, aVar3.f75017a, false);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void e(c4.a aVar) {
        this.f75013e = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d6  */
    @Override
    public synchronized void f(c.a aVar) {
        c.a aVar2;
        a aVar3;
        androidx.media3.common.util.a.e(this.f75013e);
        if (aVar.f74857b.q()) {
            return;
        }
        androidx.media3.exoplayer.source.r.b bVar = aVar.f74859d;
        if (bVar != null) {
            if (bVar.f12574d < n()) {
                return;
            }
            a aVar4 = (a) this.f75011c.get(this.f75015g);
            if (aVar4 != null && aVar4.f75019c == -1 && aVar4.f75018b != aVar.f74858c) {
                return;
            }
        }
        a aVarO = o(aVar.f74858c, aVar.f74859d);
        if (this.f75015g == null) {
            this.f75015g = aVarO.f75017a;
        }
        androidx.media3.exoplayer.source.r.b bVar2 = aVar.f74859d;
        if (bVar2 != null && bVar2.b()) {
            androidx.media3.exoplayer.source.r.b bVar3 = aVar.f74859d;
            androidx.media3.exoplayer.source.r.b bVar4 = new androidx.media3.exoplayer.source.r.b(bVar3.f12571a, bVar3.f12574d, bVar3.f12572b);
            a aVarO2 = o(aVar.f74858c, bVar4);
            if (!aVarO2.f75021e) {
                aVarO2.f75021e = true;
                aVar.f74857b.h(aVar.f74859d.f12571a, this.f75010b);
                this.f75013e.v(new c.a(aVar.f74856a, aVar.f74857b, aVar.f74858c, bVar4, Math.max(0L, androidx.media3.common.util.a1.y1(this.f75010b.f(aVar.f74859d.f12572b)) + this.f75010b.n()), aVar.f74861f, aVar.f74862g, aVar.f74863h, aVar.f74864i, aVar.f74865j), aVarO2.f75017a);
            }
        }
        if (aVarO.f75021e) {
            aVar2 = aVar;
            aVar3 = aVarO;
        } else {
            aVar3 = aVarO;
            aVar3.f75021e = true;
            aVar2 = aVar;
            this.f75013e.v(aVar2, aVar3.f75017a);
        }
        if (aVar3.f75017a.equals(this.f75015g) && !aVar3.f75022f) {
            aVar3.f75022f = true;
            this.f75013e.s(aVar2, aVar3.f75017a);
        }
    }

    @Override
    public synchronized void g(c.a aVar) {
        try {
            androidx.media3.common.util.a.e(this.f75013e);
            androidx.media3.common.e0 e0Var = this.f75014f;
            this.f75014f = aVar.f74857b;
            Iterator it = this.f75011c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (!aVar2.m(e0Var, this.f75014f) || aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f75021e) {
                        if (aVar2.f75017a.equals(this.f75015g)) {
                            l(aVar2);
                        }
                        this.f75013e.i(aVar, aVar2.f75017a, false);
                    }
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public u1(com.google.common.base.q qVar) {
        this.f75012d = qVar;
        this.f75009a = new androidx.media3.common.e0.c();
        this.f75010b = new androidx.media3.common.e0.b();
        this.f75011c = new HashMap();
        this.f75014f = androidx.media3.common.e0.f9613a;
        this.f75016h = -1L;
    }
}
