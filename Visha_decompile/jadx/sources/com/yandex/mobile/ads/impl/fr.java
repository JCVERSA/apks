package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.i52;
import com.yandex.mobile.ads.impl.vw0;
import java.io.IOException;
import java.util.HashMap;

public abstract class fr<T> extends pk {
    private final HashMap<T, b<T>> h = new HashMap<>();

    @Nullable
    private Handler i;

    @Nullable
    private d72 j;

    public static final class b<T> {
        public final vw0 a;
        public final vw0.c b;
        public final fr<T>.a c;

        public b(vw0 vw0Var, vw0.c cVar, fr<T>.a aVar) {
            this.a = vw0Var;
            this.b = cVar;
            this.c = aVar;
        }
    }

    @Nullable
    public abstract vw0.b a(T t, vw0.b bVar);

    @Override
    @CallSuper
    public final void a() {
        for (b<T> bVar : this.h.values()) {
            bVar.a.b(bVar.b);
        }
    }

    @Override
    @CallSuper
    public final void b() {
        for (b<T> bVar : this.h.values()) {
            bVar.a.c(bVar.b);
        }
    }

    public abstract void a(T t, vw0 vw0Var, i52 i52Var);

    @Override
    @CallSuper
    public void e() {
        for (b<T> bVar : this.h.values()) {
            bVar.a.a(bVar.b);
            bVar.a.a((ww0) bVar.c);
            bVar.a.a((h40) bVar.c);
        }
        this.h.clear();
    }

    public final class a implements ww0, h40 {
        private final T a;
        private ww0.a b;
        private h40.a c;

        public a(T t) {
            this.b = fr.this.b((vw0.b) null);
            this.c = fr.this.a((vw0.b) null);
            this.a = t;
        }

        private lw0 a(lw0 lw0Var) {
            fr frVar = fr.this;
            long j = lw0Var.f;
            frVar.getClass();
            fr frVar2 = fr.this;
            long j2 = lw0Var.g;
            frVar2.getClass();
            return (j == lw0Var.f && j2 == lw0Var.g) ? lw0Var : new lw0(lw0Var.a, lw0Var.b, lw0Var.c, lw0Var.d, lw0Var.e, j, j2);
        }

        private boolean e(int i, @Nullable vw0.b bVar) {
            vw0.b bVarA;
            if (bVar != null) {
                bVarA = fr.this.a(this.a, bVar);
                if (bVarA == null) {
                    return false;
                }
            } else {
                bVarA = null;
            }
            fr.this.getClass();
            ww0.a aVar = this.b;
            if (aVar.a != i || !f92.a(aVar.b, bVarA)) {
                this.b = fr.this.b(i, bVarA);
            }
            h40.a aVar2 = this.c;
            if (aVar2.a == i && f92.a(aVar2.b, bVarA)) {
                return true;
            }
            this.c = fr.this.a(i, bVarA);
            return true;
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
        public final void b(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.b(es0Var, a(lw0Var));
            }
        }

        @Override
        public final void c(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.c(es0Var, a(lw0Var));
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, lw0 lw0Var) {
            if (e(i, bVar)) {
                this.b.a(a(lw0Var));
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar) {
            if (e(i, bVar)) {
                this.c.c();
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
                this.b.a(es0Var, a(lw0Var));
            }
        }

        @Override
        public final void a(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var, IOException iOException, boolean z) {
            if (e(i, bVar)) {
                this.b.a(es0Var, a(lw0Var), iOException, z);
            }
        }
    }

    public final void a(final T t, vw0 vw0Var) {
        if (!this.h.containsKey(t)) {
            vw0.c cVar = new vw0.c() {
                @Override
                public final void a(vw0 vw0Var2, i52 i52Var) {
                    this.a.a(t, vw0Var2, i52Var);
                }
            };
            a aVar = new a(t);
            this.h.put(t, new b<>(vw0Var, cVar, aVar));
            Handler handler = this.i;
            handler.getClass();
            vw0Var.a(handler, (ww0) aVar);
            Handler handler2 = this.i;
            handler2.getClass();
            vw0Var.a(handler2, (h40) aVar);
            vw0Var.a(cVar, this.j, c());
            if (d()) {
                return;
            }
            vw0Var.b(cVar);
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override
    @CallSuper
    public void a(@Nullable d72 d72Var) {
        this.j = d72Var;
        this.i = f92.a((Handler.Callback) null);
    }
}
