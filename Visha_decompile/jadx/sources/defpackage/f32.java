package defpackage;

import android.util.Base64;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public final class f32 implements d88 {
    public static final w6a h = new w6a() {
        @Override
        public final Object get() {
            return f32.j();
        }
    };
    public static final Random i = new Random();
    public final a0.d a;
    public final a0.b b;
    public final HashMap c;
    public final w6a d;
    public d88.a e;
    public a0 f;
    public String g;

    public final class a {
        public final String a;
        public int b;
        public long c;
        public i.b d;
        public boolean e;
        public boolean f;

        public a(String str, int i, i.b bVar) {
            this.a = str;
            this.b = i;
            this.c = bVar == null ? -1L : bVar.d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.d = bVar;
        }

        public boolean i(int i, i.b bVar) {
            if (bVar == null) {
                return i == this.b;
            }
            i.b bVar2 = this.d;
            if (bVar2 == null) {
                return !bVar.b() && bVar.d == this.c;
            }
            return bVar.d == bVar2.d && bVar.b == bVar2.b && bVar.c == bVar2.c;
        }

        public boolean j(nb.a aVar) {
            long j = this.c;
            if (j == -1) {
                return false;
            }
            i.b bVar = aVar.d;
            if (bVar == null) {
                return this.b != aVar.c;
            }
            if (bVar.d > j) {
                return true;
            }
            if (this.d == null) {
                return false;
            }
            int iF = aVar.b.f(bVar.a);
            int iF2 = aVar.b.f(this.d.a);
            i.b bVar2 = aVar.d;
            if (bVar2.d < this.d.d || iF < iF2) {
                return false;
            }
            if (iF > iF2) {
                return true;
            }
            if (!bVar2.b()) {
                int i = aVar.d.e;
                return i == -1 || i > this.d.b;
            }
            i.b bVar3 = aVar.d;
            int i2 = bVar3.b;
            int i3 = bVar3.c;
            i.b bVar4 = this.d;
            int i4 = bVar4.b;
            return i2 > i4 || (i2 == i4 && i3 > bVar4.c);
        }

        public void k(int i, i.b bVar) {
            if (this.c == -1 && i == this.b && bVar != null) {
                this.c = bVar.d;
            }
        }

        public final int l(a0 a0Var, a0 a0Var2, int i) {
            if (i >= a0Var.t()) {
                if (i < a0Var2.t()) {
                    return i;
                }
                return -1;
            }
            a0Var.r(i, f32.this.a);
            for (int i2 = f32.this.a.p; i2 <= f32.this.a.q; i2++) {
                int iF = a0Var2.f(a0Var.q(i2));
                if (iF != -1) {
                    return a0Var2.j(iF, f32.this.b).d;
                }
            }
            return -1;
        }

        public boolean m(a0 a0Var, a0 a0Var2) {
            int iL = l(a0Var, a0Var2, this.b);
            this.b = iL;
            if (iL == -1) {
                return false;
            }
            i.b bVar = this.d;
            return bVar == null || a0Var2.f(bVar.a) != -1;
        }
    }

    public f32() {
        this(h);
    }

    public static String j() {
        byte[] bArr = new byte[12];
        i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @Override
    public synchronized void a(nb.a aVar) {
        try {
            zi.e(this.e);
            a0 a0Var = this.f;
            this.f = aVar.b;
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (!aVar2.m(a0Var, this.f) || aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.e) {
                        if (aVar2.a.equals(this.g)) {
                            this.g = null;
                        }
                        this.e.d0(aVar, aVar2.a, false);
                    }
                }
            }
            l(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void b(nb.a aVar, int i2) {
        try {
            zi.e(this.e);
            boolean z = i2 == 0;
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.e) {
                        boolean zEquals = aVar2.a.equals(this.g);
                        boolean z2 = z && zEquals && aVar2.f;
                        if (zEquals) {
                            this.g = null;
                        }
                        this.e.d0(aVar, aVar2.a, z2);
                    }
                }
            }
            l(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void c(nb.a aVar) {
        d88.a aVar2;
        this.g = null;
        Iterator it = this.c.values().iterator();
        while (it.hasNext()) {
            a aVar3 = (a) it.next();
            it.remove();
            if (aVar3.e && (aVar2 = this.e) != null) {
                aVar2.d0(aVar, aVar3.a, false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d7  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r25.d.d < r2.c) goto L21;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void d(nb.a aVar) {
        nb.a aVar2;
        a aVar3;
        try {
            zi.e(this.e);
            if (aVar.b.u()) {
                return;
            }
            a aVar4 = (a) this.c.get(this.g);
            if (aVar.d != null && aVar4 != null) {
                if (aVar4.c == -1) {
                    if (aVar4.b != aVar.c) {
                        return;
                    }
                }
            }
            a aVarK = k(aVar.c, aVar.d);
            if (this.g == null) {
                this.g = aVarK.a;
            }
            i.b bVar = aVar.d;
            if (bVar != null && bVar.b()) {
                i.b bVar2 = aVar.d;
                i.b bVar3 = new i.b(bVar2.a, bVar2.d, bVar2.b);
                a aVarK2 = k(aVar.c, bVar3);
                if (!aVarK2.e) {
                    aVarK2.e = true;
                    aVar.b.l(aVar.d.a, this.b);
                    this.e.b0(new nb.a(aVar.a, aVar.b, aVar.c, bVar3, Math.max(0L, blb.P0(this.b.i(aVar.d.b)) + this.b.p()), aVar.f, aVar.g, aVar.h, aVar.i, aVar.j), aVarK2.a);
                }
            }
            if (aVarK.e) {
                aVar2 = aVar;
                aVar3 = aVarK;
            } else {
                aVar3 = aVarK;
                aVar3.e = true;
                aVar2 = aVar;
                this.e.b0(aVar2, aVar3.a);
            }
            if (aVar3.a.equals(this.g) && !aVar3.f) {
                aVar3.f = true;
                this.e.f(aVar2, aVar3.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized String e(a0 a0Var, i.b bVar) {
        return k(a0Var.l(bVar.a, this.b).d, bVar).a;
    }

    @Override
    public void f(d88.a aVar) {
        this.e = aVar;
    }

    @Override
    public synchronized String getActiveSessionId() {
        return this.g;
    }

    public final a k(int i2, i.b bVar) {
        a aVar = null;
        long j = Long.MAX_VALUE;
        for (a aVar2 : this.c.values()) {
            aVar2.k(i2, bVar);
            if (aVar2.i(i2, bVar)) {
                long j2 = aVar2.c;
                if (j2 == -1 || j2 < j) {
                    aVar = aVar2;
                    j = j2;
                } else if (j2 == j && ((a) blb.j(aVar)).d != null && aVar2.d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = (String) this.d.get();
        a aVar3 = new a(str, i2, bVar);
        this.c.put(str, aVar3);
        return aVar3;
    }

    public final void l(nb.a aVar) {
        if (aVar.b.u()) {
            this.g = null;
            return;
        }
        a aVar2 = (a) this.c.get(this.g);
        a aVarK = k(aVar.c, aVar.d);
        this.g = aVarK.a;
        d(aVar);
        i.b bVar = aVar.d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.c == aVar.d.d && aVar2.d != null && aVar2.d.b == aVar.d.b && aVar2.d.c == aVar.d.c) {
            return;
        }
        i.b bVar2 = aVar.d;
        this.e.i(aVar, k(aVar.c, new i.b(bVar2.a, bVar2.d)).a, aVarK.a);
    }

    public f32(w6a w6aVar) {
        this.d = w6aVar;
        this.a = new a0.d();
        this.b = new a0.b();
        this.c = new HashMap();
        this.f = a0.b;
    }
}
