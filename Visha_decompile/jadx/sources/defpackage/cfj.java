package defpackage;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public final class cfj implements pfj {
    public static final k3i h = new k3i() {
        @Override
        public final Object zza() {
            return cfj.m();
        }
    };
    public static final Random i = new Random();
    public nfj d;
    public String f;
    public final e4f a = new e4f();
    public final y2f b = new y2f();
    public final HashMap c = new HashMap();
    public w4f e = w4f.a;
    public long g = -1;

    public cfj(k3i k3iVar) {
    }

    public static String m() {
        byte[] bArr = new byte[12];
        i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @Override
    public final void a(nfj nfjVar) {
        this.d = nfjVar;
    }

    @Override
    public final synchronized void b(raj rajVar) {
        try {
            if (this.d == null) {
                throw null;
            }
            w4f w4fVar = this.e;
            this.e = rajVar.b;
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                afj afjVar = (afj) it.next();
                if (!afjVar.l(w4fVar, this.e) || afjVar.k(rajVar)) {
                    it.remove();
                    if (afjVar.e) {
                        if (afjVar.a.equals(this.f)) {
                            n(afjVar);
                        }
                        this.d.j(rajVar, afjVar.a, false);
                    }
                }
            }
            o(rajVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003f A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:10:0x0013, B:12:0x001d, B:14:0x0029, B:16:0x0033, B:21:0x003f, B:23:0x0049, B:26:0x0052, B:28:0x0058, B:30:0x006d, B:31:0x0089, B:33:0x008f, B:34:0x0095, B:36:0x00a1, B:38:0x00a7, B:44:0x00b8), top: B:47:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0049 A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:10:0x0013, B:12:0x001d, B:14:0x0029, B:16:0x0033, B:21:0x003f, B:23:0x0049, B:26:0x0052, B:28:0x0058, B:30:0x006d, B:31:0x0089, B:33:0x008f, B:34:0x0095, B:36:0x00a1, B:38:0x00a7, B:44:0x00b8), top: B:47:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x006d A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:10:0x0013, B:12:0x001d, B:14:0x0029, B:16:0x0033, B:21:0x003f, B:23:0x0049, B:26:0x0052, B:28:0x0058, B:30:0x006d, B:31:0x0089, B:33:0x008f, B:34:0x0095, B:36:0x00a1, B:38:0x00a7, B:44:0x00b8), top: B:47:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008f A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:10:0x0013, B:12:0x001d, B:14:0x0029, B:16:0x0033, B:21:0x003f, B:23:0x0049, B:26:0x0052, B:28:0x0058, B:30:0x006d, B:31:0x0089, B:33:0x008f, B:34:0x0095, B:36:0x00a1, B:38:0x00a7, B:44:0x00b8), top: B:47:0x0001 }] */
    @Override
    public final synchronized void c(raj rajVar) {
        int i2;
        afj afjVarL;
        Object obj;
        int i3;
        afj afjVarL2;
        afj afjVar;
        try {
            if (this.d == null) {
                throw null;
            }
            w4f w4fVar = rajVar.b;
            if (!w4fVar.o()) {
                bnj bnjVar = rajVar.d;
                if (bnjVar == null) {
                    i2 = rajVar.c;
                    afjVarL = l(i2, bnjVar);
                    if (this.f == null) {
                        this.f = afjVarL.a;
                    }
                    if (bnjVar != null) {
                        obj = bnjVar.a;
                        long j = bnjVar.d;
                        i3 = bnjVar.b;
                        afjVarL2 = l(i2, new bnj(obj, j, i3));
                        if (!afjVarL2.e) {
                            afjVarL2.e = true;
                            y2f y2fVar = this.b;
                            w4fVar.n(obj, y2fVar);
                            y2fVar.g(i3);
                            Math.max(0L, kfh.Q(0L) + kfh.Q(0L));
                            String unused = afjVarL2.a;
                        }
                    }
                    if (!afjVarL.e) {
                        afjVarL.e = true;
                        String unused2 = afjVarL.a;
                    }
                    if (afjVarL.a.equals(this.f)) {
                        afjVarL.f = true;
                        this.d.f(rajVar, afjVarL.a);
                    }
                } else if (bnjVar.d >= k() && ((afjVar = (afj) this.c.get(this.f)) == null || afjVar.c != -1 || afjVar.b == rajVar.c)) {
                    i2 = rajVar.c;
                    afjVarL = l(i2, bnjVar);
                    if (this.f == null) {
                        this.f = afjVarL.a;
                    }
                    if (bnjVar != null && bnjVar.b()) {
                        obj = bnjVar.a;
                        long j2 = bnjVar.d;
                        i3 = bnjVar.b;
                        afjVarL2 = l(i2, new bnj(obj, j2, i3));
                        if (!afjVarL2.e) {
                            afjVarL2.e = true;
                            y2f y2fVar2 = this.b;
                            w4fVar.n(obj, y2fVar2);
                            y2fVar2.g(i3);
                            Math.max(0L, kfh.Q(0L) + kfh.Q(0L));
                            String unused3 = afjVarL2.a;
                        }
                    }
                    if (!afjVarL.e) {
                        afjVarL.e = true;
                        String unused4 = afjVarL.a;
                    }
                    if (afjVarL.a.equals(this.f) && !afjVarL.f) {
                        afjVarL.f = true;
                        this.d.f(rajVar, afjVarL.a);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void d(raj rajVar) {
        nfj nfjVar;
        try {
            String str = this.f;
            if (str != null) {
                afj afjVar = (afj) this.c.get(str);
                if (afjVar == null) {
                    throw null;
                }
                n(afjVar);
            }
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                afj afjVar2 = (afj) it.next();
                it.remove();
                if (afjVar2.e && (nfjVar = this.d) != null) {
                    nfjVar.j(rajVar, afjVar2.a, false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized String e(w4f w4fVar, bnj bnjVar) {
        return l(w4fVar.n(bnjVar.a, this.b).c, bnjVar).a;
    }

    @Override
    public final synchronized void f(raj rajVar, int i2) {
        try {
            if (this.d == null) {
                throw null;
            }
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                afj afjVar = (afj) it.next();
                if (afjVar.k(rajVar)) {
                    it.remove();
                    if (afjVar.e) {
                        boolean zEquals = afjVar.a.equals(this.f);
                        boolean z = false;
                        if (i2 == 0 && zEquals && afjVar.f) {
                            z = true;
                        }
                        if (zEquals) {
                            n(afjVar);
                        }
                        this.d.j(rajVar, afjVar.a, z);
                    }
                }
            }
            o(rajVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final long k() {
        afj afjVar = (afj) this.c.get(this.f);
        return (afjVar == null || afjVar.c == -1) ? this.g + 1 : afjVar.c;
    }

    public final afj l(int i2, bnj bnjVar) {
        HashMap map = this.c;
        long j = Long.MAX_VALUE;
        afj afjVar = null;
        for (afj afjVar2 : map.values()) {
            afjVar2.g(i2, bnjVar);
            if (afjVar2.j(i2, bnjVar)) {
                long j2 = afjVar2.c;
                if (j2 == -1 || j2 < j) {
                    afjVar = afjVar2;
                    j = j2;
                } else if (j2 == j) {
                    int i3 = kfh.a;
                    if (afjVar.d != null && afjVar2.d != null) {
                        afjVar = afjVar2;
                    }
                }
            }
        }
        if (afjVar != null) {
            return afjVar;
        }
        String strM = m();
        afj afjVar3 = new afj(this, strM, i2, bnjVar);
        map.put(strM, afjVar3);
        return afjVar3;
    }

    public final void n(afj afjVar) {
        if (afjVar.c != -1) {
            this.g = afjVar.c;
        }
        this.f = null;
    }

    public final void o(raj rajVar) {
        if (rajVar.b.o()) {
            String str = this.f;
            if (str != null) {
                afj afjVar = (afj) this.c.get(str);
                afjVar.getClass();
                n(afjVar);
                return;
            }
            return;
        }
        afj afjVar2 = (afj) this.c.get(this.f);
        int i2 = rajVar.c;
        bnj bnjVar = rajVar.d;
        afj afjVarL = l(i2, bnjVar);
        this.f = afjVarL.a;
        c(rajVar);
        if (bnjVar == null || !bnjVar.b()) {
            return;
        }
        if (afjVar2 != null) {
            if (afjVar2.c == bnjVar.d && afjVar2.d != null && afjVar2.d.b == bnjVar.b && afjVar2.d.c == bnjVar.c) {
                return;
            }
        }
        String unused = l(i2, new bnj(bnjVar.a, bnjVar.d)).a;
        String unused2 = afjVarL.a;
    }

    @Override
    public final synchronized String zze() {
        return this.f;
    }
}
