package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

final class yw0 {
    private final mi1 a;
    private final d e;
    private final ww0.a f;
    private final h40.a g;
    private final HashMap<c, b> h;
    private final HashSet i;
    private boolean k;

    @Nullable
    private d72 l;
    private iy1 j = new iy1.a();
    private final IdentityHashMap<pw0, c> c = new IdentityHashMap<>();
    private final HashMap d = new HashMap();
    private final ArrayList b = new ArrayList();

    public static final class b {
        public final vw0 a;
        public final vw0.c b;
        public final a c;

        public b(ju0 ju0Var, vw0.c cVar, a aVar) {
            this.a = ju0Var;
            this.b = cVar;
            this.c = aVar;
        }
    }

    public static final class c implements xw0 {
        public final ju0 a;
        public int d;
        public boolean e;
        public final ArrayList c = new ArrayList();
        public final Object b = new Object();

        public c(vw0 vw0Var, boolean z) {
            this.a = new ju0(vw0Var, z);
        }

        @Override
        public final Object a() {
            return this.b;
        }

        @Override
        public final i52 b() {
            return this.a.f();
        }
    }

    public interface d {
    }

    public yw0(d dVar, ed edVar, Handler handler, mi1 mi1Var) {
        this.a = mi1Var;
        this.e = dVar;
        ww0.a aVar = new ww0.a();
        this.f = aVar;
        h40.a aVar2 = new h40.a();
        this.g = aVar2;
        this.h = new HashMap<>();
        this.i = new HashSet();
        aVar.a(handler, edVar);
        aVar2.a(handler, edVar);
    }

    public final i52 d() {
        if (this.b.size() < 0) {
            throw new IllegalArgumentException();
        }
        this.j = null;
        return a();
    }

    public final void e() {
        for (b bVar : this.h.values()) {
            try {
                bVar.a.a(bVar.b);
            } catch (RuntimeException e) {
                et0.a("MediaSourceList", "Failed to release child source.", e);
            }
            bVar.a.a((ww0) bVar.c);
            bVar.a.a((h40) bVar.c);
        }
        this.h.clear();
        this.i.clear();
        this.k = false;
    }

    public final class a implements ww0, h40 {
        private final c a;
        private ww0.a b;
        private h40.a c;

        public a(c cVar) {
            this.b = yw0.this.f;
            this.c = yw0.this.g;
            this.a = cVar;
        }

        private boolean e(int i, @Nullable vw0.b bVar) {
            vw0.b bVar2 = null;
            if (bVar != null) {
                c cVar = this.a;
                for (int i2 = 0; i2 < cVar.c.size(); i2++) {
                    if (((vw0.b) cVar.c.get(i2)).d == bVar.d) {
                        bVar2 = new vw0.b(bVar.a(h.a(cVar.b, bVar.a)));
                        break;
                    }
                }
                if (bVar2 == null) {
                    return false;
                }
            }
            int i3 = i + this.a.d;
            ww0.a aVar = this.b;
            if (aVar.a != i3 || !f92.a(aVar.b, bVar2)) {
                this.b = yw0.this.f.a(i3, bVar2);
            }
            h40.a aVar2 = this.c;
            if (aVar2.a == i3 && f92.a(aVar2.b, bVar2)) {
                return true;
            }
            this.c = yw0.this.g.a(i3, bVar2);
            return true;
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.a(lw0Var);
            }
        }

        @Override
        public final void b(int i, @Nullable vw0.b bVar) {
            if (e(i, bVar)) {
                this.c.d();
            }
        }

        @Override
        public final void c(int i, @Nullable vw0.b bVar) {
            if (e(i, bVar)) {
                this.c.a();
            }
        }

        @Override
        public final void d(int i, @Nullable vw0.b bVar) {
            if (e(i, bVar)) {
                this.c.b();
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar) {
            if (e(i, bVar)) {
                this.c.c();
            }
        }

        @Override
        public final void b(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.b(es0Var, lw0Var);
            }
        }

        @Override
        public final void c(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.c(es0Var, lw0Var);
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, int i2) {
            if (e(i, bVar)) {
                this.c.a(i2);
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, Exception exc) {
            if (e(i, bVar)) {
                this.c.a(exc);
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.a(es0Var, lw0Var);
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var, IOException iOException, boolean z) {
            if (e(i, bVar)) {
                this.b.a(es0Var, lw0Var, iOException, z);
            }
        }
    }

    public final i52 a(int i, List<c> list, iy1 iy1Var) {
        if (!list.isEmpty()) {
            this.j = iy1Var;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                c cVar = list.get(i2 - i);
                if (i2 > 0) {
                    c cVar2 = (c) this.b.get(i2 - 1);
                    cVar.d = cVar2.a.f().b() + cVar2.d;
                    cVar.e = false;
                    cVar.c.clear();
                } else {
                    cVar.d = 0;
                    cVar.e = false;
                    cVar.c.clear();
                }
                int iB = cVar.a.f().b();
                for (int i3 = i2; i3 < this.b.size(); i3++) {
                    ((c) this.b.get(i3)).d += iB;
                }
                this.b.add(i2, cVar);
                this.d.put(cVar.b, cVar);
                if (this.k) {
                    a(cVar);
                    if (this.c.isEmpty()) {
                        this.i.add(cVar);
                    } else {
                        b bVar = this.h.get(cVar);
                        if (bVar != null) {
                            bVar.a.b(bVar.b);
                        }
                    }
                }
            }
        }
        return a();
    }

    public final int b() {
        return this.b.size();
    }

    public final boolean c() {
        return this.k;
    }

    public final iu0 a(vw0.b bVar, cd cdVar, long j) {
        Object objD = h.d(bVar.a);
        vw0.b bVar2 = new vw0.b(bVar.a(h.c(bVar.a)));
        c cVar = (c) this.d.get(objD);
        cVar.getClass();
        this.i.add(cVar);
        b bVar3 = this.h.get(cVar);
        if (bVar3 != null) {
            bVar3.a.c(bVar3.b);
        }
        cVar.c.add(bVar2);
        iu0 iu0VarB = cVar.a.a(bVar2, cdVar, j);
        this.c.put(iu0VarB, cVar);
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            c cVar2 = (c) it.next();
            if (cVar2.c.isEmpty()) {
                b bVar4 = this.h.get(cVar2);
                if (bVar4 != null) {
                    bVar4.a.b(bVar4.b);
                }
                it.remove();
            }
        }
        return iu0VarB;
    }

    public final i52 a() {
        if (this.b.isEmpty()) {
            return i52.b;
        }
        int iB = 0;
        for (int i = 0; i < this.b.size(); i++) {
            c cVar = (c) this.b.get(i);
            cVar.d = iB;
            iB += cVar.a.f().b();
        }
        return new ij1(this.b, this.j);
    }

    public void a(vw0 vw0Var, i52 i52Var) {
        ((t60) this.e).h();
    }

    public final void a(@Nullable d72 d72Var) {
        if (!this.k) {
            this.l = d72Var;
            for (int i = 0; i < this.b.size(); i++) {
                c cVar = (c) this.b.get(i);
                a(cVar);
                this.i.add(cVar);
            }
            this.k = true;
            return;
        }
        throw new IllegalStateException();
    }

    private void a(c cVar) {
        ju0 ju0Var = cVar.a;
        vw0.c cVar2 = new vw0.c() {
            @Override
            public final void a(vw0 vw0Var, i52 i52Var) {
                this.a.a(vw0Var, i52Var);
            }
        };
        a aVar = new a(cVar);
        this.h.put(cVar, new b(ju0Var, cVar2, aVar));
        ju0Var.a(f92.b((Handler.Callback) null), (ww0) aVar);
        ju0Var.a(f92.b((Handler.Callback) null), (h40) aVar);
        ju0Var.a(cVar2, this.l, this.a);
    }

    public final void a(pw0 pw0Var) {
        c cVarRemove = this.c.remove(pw0Var);
        cVarRemove.getClass();
        cVarRemove.a.a(pw0Var);
        cVarRemove.c.remove(((iu0) pw0Var).b);
        if (!this.c.isEmpty()) {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.c.isEmpty()) {
                    b bVar = this.h.get(cVar);
                    if (bVar != null) {
                        bVar.a.b(bVar.b);
                    }
                    it.remove();
                }
            }
        }
        if (cVarRemove.e && cVarRemove.c.isEmpty()) {
            b bVarRemove = this.h.remove(cVarRemove);
            bVarRemove.getClass();
            bVarRemove.a.a(bVarRemove.b);
            bVarRemove.a.a((ww0) bVarRemove.c);
            bVarRemove.a.a((h40) bVarRemove.c);
            this.i.remove(cVarRemove);
        }
    }

    public final i52 a(int i, int i2, iy1 iy1Var) {
        if (i >= 0 && i <= i2 && i2 <= this.b.size()) {
            this.j = iy1Var;
            a(i, i2);
            return a();
        }
        throw new IllegalArgumentException();
    }

    private void a(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            c cVar = (c) this.b.remove(i3);
            this.d.remove(cVar.b);
            int i4 = -cVar.a.f().b();
            for (int i5 = i3; i5 < this.b.size(); i5++) {
                ((c) this.b.get(i5)).d += i4;
            }
            cVar.e = true;
            if (this.k && cVar.c.isEmpty()) {
                b bVarRemove = this.h.remove(cVar);
                bVarRemove.getClass();
                bVarRemove.a.a(bVarRemove.b);
                bVarRemove.a.a((ww0) bVarRemove.c);
                bVarRemove.a.a((h40) bVarRemove.c);
                this.i.remove(cVar);
            }
        }
    }

    public final i52 a(List<c> list, iy1 iy1Var) {
        a(0, this.b.size());
        return a(this.b.size(), list, iy1Var);
    }

    public final i52 a(iy1 iy1Var) {
        int size = this.b.size();
        if (iy1Var.b() != size) {
            iy1Var = iy1Var.d().b(size);
        }
        this.j = iy1Var;
        return a();
    }
}
