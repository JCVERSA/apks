package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;

public final class ju0 extends fr<Void> {
    private final vw0 k;
    private final boolean l;
    private final i52.d m;
    private final i52.b n;
    private a o;

    @Nullable
    private iu0 p;
    private boolean q;
    private boolean r;
    private boolean s;

    public static final class a extends oc0 {
        public static final Object f = new Object();

        @Nullable
        private final Object d;

        @Nullable
        private final Object e;

        @Override
        public final int a(Object obj) {
            Object obj2;
            i52 i52Var = this.c;
            if (f.equals(obj) && (obj2 = this.e) != null) {
                obj = obj2;
            }
            return i52Var.a(obj);
        }

        private a(i52 i52Var, @Nullable Object obj, @Nullable Object obj2) {
            super(i52Var);
            this.d = obj;
            this.e = obj2;
        }

        @Override
        public final i52.b a(int i, i52.b bVar, boolean z) {
            this.c.a(i, bVar, z);
            if (f92.a(bVar.c, this.e) && z) {
                bVar.c = f;
            }
            return bVar;
        }

        @Override
        public final Object a(int i) {
            Object objA = this.c.a(i);
            return f92.a(objA, this.e) ? f : objA;
        }

        @Override
        public final i52.d a(int i, i52.d dVar, long j) {
            this.c.a(i, dVar, j);
            if (f92.a(dVar.b, this.d)) {
                dVar.b = i52.d.s;
            }
            return dVar;
        }

        public static a a(jw0 jw0Var) {
            return new a(new b(jw0Var), i52.d.s, f);
        }
    }

    @VisibleForTesting
    public static final class b extends i52 {
        private final jw0 c;

        public b(jw0 jw0Var) {
            this.c = jw0Var;
        }

        @Override
        public final int a() {
            return 1;
        }

        @Override
        public final int b() {
            return 1;
        }

        @Override
        public final int a(Object obj) {
            return obj == a.f ? 0 : -1;
        }

        @Override
        public final i52.b a(int i, i52.b bVar, boolean z) {
            bVar.a(z ? 0 : null, z ? a.f : null, 0, C.TIME_UNSET, 0L, n5.h, true);
            return bVar;
        }

        @Override
        public final i52.d a(int i, i52.d dVar, long j) {
            dVar.a(i52.d.s, this.c, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            dVar.m = true;
            return dVar;
        }

        @Override
        public final Object a(int i) {
            return a.f;
        }
    }

    public ju0(vw0 vw0Var, boolean z) {
        boolean z2;
        this.k = vw0Var;
        if (z) {
            vw0Var.getClass();
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        this.m = new i52.d();
        this.n = new i52.b();
        vw0Var.getClass();
        this.o = a.a(vw0Var.getMediaItem());
    }

    @Override
    public final iu0 a(vw0.b bVar, cd cdVar, long j) {
        iu0 iu0Var = new iu0(bVar, cdVar, j);
        iu0Var.a(this.k);
        if (this.r) {
            Object obj = bVar.a;
            if (this.o.e != null && obj.equals(a.f)) {
                obj = this.o.e;
            }
            iu0Var.a(new vw0.b(bVar.a(obj)));
        } else {
            this.p = iu0Var;
            if (!this.q) {
                this.q = true;
                a((Object) null, this.k);
            }
        }
        return iu0Var;
    }

    @Override
    public final void e() {
        this.r = false;
        this.q = false;
        super.e();
    }

    public final i52 f() {
        return this.o;
    }

    @Override
    public final jw0 getMediaItem() {
        return this.k.getMediaItem();
    }

    @Override
    public final void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    @Nullable
    public final vw0.b a(Void r1, vw0.b bVar) {
        Object obj = bVar.a;
        Object obj2 = this.o.e;
        if (obj2 != null && obj2.equals(obj)) {
            obj = a.f;
        }
        return new vw0.b(bVar.a(obj));
    }

    @Override
    public final void a(@Nullable d72 d72Var) {
        super.a(d72Var);
        if (this.l) {
            return;
        }
        this.q = true;
        a((Object) null, this.k);
    }

    @Override
    public final void a(pw0 pw0Var) {
        ((iu0) pw0Var).c();
        if (pw0Var == this.p) {
            this.p = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [mkd] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final void a(Void r16, vw0 vw0Var, i52 i52Var) {
        a aVar;
        a aVar2;
        vw0.b bVar = 0;
        bVar = 0;
        bVar = 0;
        bVar = 0;
        if (this.r) {
            a aVar3 = this.o;
            this.o = new a(i52Var, aVar3.d, aVar3.e);
            iu0 iu0Var = this.p;
            if (iu0Var != null) {
                a(iu0Var.a());
            }
        } else if (i52Var.c()) {
            if (this.s) {
                a aVar4 = this.o;
                aVar2 = new a(i52Var, aVar4.d, aVar4.e);
            } else {
                aVar2 = new a(i52Var, i52.d.s, a.f);
            }
            this.o = aVar2;
        } else {
            i52Var.a(0, this.m, 0L);
            i52.d dVar = this.m;
            long j = dVar.n;
            Object obj = dVar.b;
            iu0 iu0Var2 = this.p;
            if (iu0Var2 != null) {
                long jB = iu0Var2.b();
                a aVar5 = this.o;
                Object obj2 = this.p.b.a;
                aVar5.a(aVar5.a(obj2), this.n, true);
                long j2 = this.n.f + jB;
                if (j2 != this.o.a(0, this.m, 0L).n) {
                    j = j2;
                }
            }
            Pair<Object, Long> pairA = i52Var.a(this.m, this.n, 0, j);
            Object obj3 = pairA.first;
            long jLongValue = ((Long) pairA.second).longValue();
            if (this.s) {
                a aVar6 = this.o;
                aVar = new a(i52Var, aVar6.d, aVar6.e);
            } else {
                aVar = new a(i52Var, obj, obj3);
            }
            this.o = aVar;
            iu0 iu0Var3 = this.p;
            if (iu0Var3 != null) {
                a(jLongValue);
                vw0.b bVar2 = iu0Var3.b;
                Object obj4 = bVar2.a;
                if (this.o.e != null && obj4.equals(a.f)) {
                    obj4 = this.o.e;
                }
                bVar = new vw0.b(bVar2.a(obj4));
            }
        }
        this.s = true;
        this.r = true;
        a(this.o);
        if (bVar != 0) {
            iu0 iu0Var4 = this.p;
            iu0Var4.getClass();
            iu0Var4.a(bVar);
        }
    }

    private void a(long j) {
        iu0 iu0Var = this.p;
        int iA = this.o.a(iu0Var.b.a);
        if (iA == -1) {
            return;
        }
        long j2 = this.o.a(iA, this.n, false).e;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        iu0Var.a(j);
    }
}
