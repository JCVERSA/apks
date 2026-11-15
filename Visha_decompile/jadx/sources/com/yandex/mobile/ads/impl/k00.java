package com.yandex.mobile.ads.impl;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.k00;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

public final class k00 {
    public static final t32<String> h = new t32() {
        @Override
        public final Object get() {
            return k00.a();
        }
    };
    private static final Random i = new Random();
    private final i52.d a;
    private final i52.b b;
    private final HashMap<String, a> c;
    private final t32<String> d;
    private ei1 e;
    private i52 f;

    @Nullable
    private String g;

    public final class a {
        private final String a;
        private int b;
        private long c;
        private vw0.b d;
        private boolean e;
        private boolean f;

        public a(String str, int i, @Nullable vw0.b bVar) {
            this.a = str;
            this.b = i;
            this.c = bVar == null ? -1L : bVar.d;
            if (bVar == null || !bVar.a()) {
                return;
            }
            this.d = bVar;
        }

        public final boolean a(ld.a aVar) {
            long j = this.c;
            if (j == -1) {
                return false;
            }
            vw0.b bVar = aVar.d;
            if (bVar == null) {
                return this.b != aVar.c;
            }
            if (bVar.d > j) {
                return true;
            }
            if (this.d == null) {
                return false;
            }
            int iA = aVar.b.a(bVar.a);
            int iA2 = aVar.b.a(this.d.a);
            vw0.b bVar2 = aVar.d;
            if (bVar2.d < this.d.d || iA < iA2) {
                return false;
            }
            if (iA > iA2) {
                return true;
            }
            if (!bVar2.a()) {
                int i = aVar.d.e;
                return i == -1 || i > this.d.b;
            }
            vw0.b bVar3 = aVar.d;
            int i2 = bVar3.b;
            int i3 = bVar3.c;
            vw0.b bVar4 = this.d;
            int i4 = bVar4.b;
            return i2 > i4 || (i2 == i4 && i3 > bVar4.c);
        }
    }

    public k00() {
        this(h);
    }

    public final synchronized void a(ld.a aVar) {
        ei1 ei1Var;
        this.g = null;
        Iterator<a> it = this.c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            it.remove();
            if (next.e && (ei1Var = this.e) != null) {
                ((nw0) ei1Var).b(aVar, next.a);
            }
        }
    }

    @Nullable
    public final synchronized String b() {
        return this.g;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009a A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:4:0x0016, B:6:0x001c, B:8:0x002f, B:21:0x006a, B:31:0x0085, B:33:0x008e, B:35:0x009a, B:36:0x009d, B:24:0x0070, B:29:0x007f, B:27:0x0077, B:13:0x0039, B:14:0x0048, B:16:0x0050, B:18:0x005a, B:19:0x0066, B:37:0x00aa), top: B:42:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x008e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0016 A[SYNTHETIC] */
    public final synchronized void d(ld.a aVar) {
        vw0.b bVar;
        try {
            this.e.getClass();
            i52 i52Var = this.f;
            this.f = aVar.b;
            Iterator<a> it = this.c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                i52 i52Var2 = this.f;
                int i2 = next.b;
                if (i2 < i52Var.b()) {
                    i52Var.a(i2, k00.this.a, 0L);
                    int i3 = k00.this.a.p;
                    while (true) {
                        if (i3 > k00.this.a.q) {
                            i2 = -1;
                            break;
                        }
                        int iA = i52Var2.a(i52Var.a(i3));
                        if (iA != -1) {
                            i2 = i52Var2.a(iA, k00.this.b, false).d;
                            break;
                        }
                        i3++;
                    }
                } else if (i2 >= i52Var2.b()) {
                    i2 = -1;
                    break;
                }
                next.b = i2;
                if (i2 == -1 || ((bVar = next.d) != null && i52Var2.a(bVar.a) == -1)) {
                    it.remove();
                    if (!next.e) {
                        if (next.a.equals(this.g)) {
                            this.g = null;
                        }
                        ((nw0) this.e).b(aVar, next.a);
                    }
                } else if (next.a(aVar)) {
                    it.remove();
                    if (!next.e) {
                        if (next.a.equals(this.g)) {
                            this.g = null;
                        }
                        ((nw0) this.e).b(aVar, next.a);
                    }
                }
            }
            b(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public k00(t32<String> t32Var) {
        this.d = t32Var;
        this.a = new i52.d();
        this.b = new i52.b();
        this.c = new HashMap<>();
        this.f = i52.b;
    }

    private void b(ld.a aVar) {
        vw0.b bVar;
        if (aVar.b.c()) {
            this.g = null;
            return;
        }
        a aVar2 = this.c.get(this.g);
        this.g = a(aVar.c, aVar.d).a;
        c(aVar);
        vw0.b bVar2 = aVar.d;
        if (bVar2 == null || !bVar2.a()) {
            return;
        }
        if (aVar2 != null) {
            long j = aVar2.c;
            vw0.b bVar3 = aVar.d;
            if (j == bVar3.d && (bVar = aVar2.d) != null && bVar.b == bVar3.b && bVar.c == bVar3.c) {
                return;
            }
        }
        vw0.b bVar4 = aVar.d;
        a(aVar.c, new vw0.b(bVar4.a, bVar4.d));
        this.e.getClass();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r1.d < r2) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void c(ld.a aVar) {
        try {
            this.e.getClass();
            if (aVar.b.c()) {
                return;
            }
            a aVar2 = this.c.get(this.g);
            vw0.b bVar = aVar.d;
            if (bVar != null && aVar2 != null) {
                long j = aVar2.c;
                if (j == -1) {
                    if (aVar2.b != aVar.c) {
                        return;
                    }
                }
            }
            a aVarA = a(aVar.c, bVar);
            if (this.g == null) {
                this.g = aVarA.a;
            }
            vw0.b bVar2 = aVar.d;
            if (bVar2 != null && bVar2.a()) {
                vw0.b bVar3 = aVar.d;
                Object obj = bVar3.a;
                a aVarA2 = a(aVar.c, new vw0.b(bVar3.b, bVar3.d, obj));
                if (!aVarA2.e) {
                    aVarA2.e = true;
                    aVar.b.a(aVar.d.a, this.b);
                    Math.max(0L, f92.b(this.b.f) + f92.b(this.b.b(aVar.d.b)));
                    this.e.getClass();
                }
            }
            if (!aVarA.e) {
                aVarA.e = true;
                this.e.getClass();
            }
            if (aVarA.a.equals(this.g) && !aVarA.f) {
                aVarA.f = true;
                ((nw0) this.e).a(aVar, aVarA.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String a() {
        byte[] bArr = new byte[12];
        i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0086 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private a a(int i2, @Nullable vw0.b bVar) {
        long j;
        a aVar = null;
        long j2 = Long.MAX_VALUE;
        for (a aVar2 : this.c.values()) {
            if (aVar2.c == -1 && i2 == aVar2.b && bVar != null) {
                aVar2.c = bVar.d;
            }
            if (bVar == null) {
                if (i2 == aVar2.b) {
                    j = aVar2.c;
                    if (j != -1 || j < j2) {
                        aVar = aVar2;
                        j2 = j;
                    } else if (j == j2) {
                        int i3 = f92.a;
                        if (aVar.d != null && aVar2.d != null) {
                            aVar = aVar2;
                        }
                    }
                }
            } else {
                vw0.b bVar2 = aVar2.d;
                if (bVar2 == null) {
                    if (!bVar.a() && bVar.d == aVar2.c) {
                        j = aVar2.c;
                        if (j != -1) {
                        }
                        aVar = aVar2;
                        j2 = j;
                    }
                } else if (bVar.d == bVar2.d && bVar.b == bVar2.b && bVar.c == bVar2.c) {
                    j = aVar2.c;
                    if (j != -1) {
                    }
                    aVar = aVar2;
                    j2 = j;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = this.d.get();
        a aVar3 = new a(str, i2, bVar);
        this.c.put(str, aVar3);
        return aVar3;
    }

    public final synchronized String a(i52 i52Var, vw0.b bVar) {
        return a(i52Var.a(bVar.a, this.b).d, bVar).a;
    }

    public final void a(ei1 ei1Var) {
        this.e = ei1Var;
    }

    public final synchronized void a(ld.a aVar, int i2) {
        try {
            this.e.getClass();
            boolean z = i2 == 0;
            Iterator<a> it = this.c.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.a(aVar)) {
                    it.remove();
                    if (next.e) {
                        boolean zEquals = next.a.equals(this.g);
                        if (z && zEquals) {
                            boolean unused = next.f;
                        }
                        if (zEquals) {
                            this.g = null;
                        }
                        ((nw0) this.e).b(aVar, next.a);
                    }
                }
            }
            b(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
