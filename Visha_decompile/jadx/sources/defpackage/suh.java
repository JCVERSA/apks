package defpackage;

import android.view.View;
import com.google.android.gms.internal.ads.e6;
import com.google.android.gms.internal.ads.zzfjy;
import com.google.android.gms.internal.ads.zzfkc;
import java.util.Collection;
import java.util.List;

public final class suh extends puh {
    public final ruh a;
    public lwh c;
    public rvh d;
    public final String g;
    public final gvh b = new gvh();
    public boolean e = false;
    public boolean f = false;

    public suh(quh quhVar, ruh ruhVar, String str) {
        this.a = ruhVar;
        this.g = str;
        k(null);
        if (ruhVar.d() == zzfjy.HTML || ruhVar.d() == zzfjy.JAVASCRIPT) {
            this.d = new svh(str, ruhVar.a());
        } else {
            this.d = new e6(str, ruhVar.i(), null);
        }
        this.d.o();
        cvh.a().d(this);
        this.d.f(quhVar);
    }

    @Override
    public final void b(View view, zzfkc zzfkcVar, String str) {
        if (this.f) {
            return;
        }
        this.b.b(view, zzfkcVar, "Ad overlay");
    }

    @Override
    public final void c() {
        if (this.f) {
            return;
        }
        this.c.clear();
        if (!this.f) {
            this.b.c();
        }
        this.f = true;
        this.d.e();
        cvh.a().e(this);
        this.d.c();
        this.d = null;
    }

    @Override
    public final void d(View view) {
        if (this.f || f() == view) {
            return;
        }
        k(view);
        this.d.b();
        Collection<suh> collectionC = cvh.a().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (suh suhVar : collectionC) {
            if (suhVar != this && suhVar.f() == view) {
                suhVar.c.clear();
            }
        }
    }

    @Override
    public final void e() {
        if (this.e || this.d == null) {
            return;
        }
        this.e = true;
        cvh.a().f(this);
        this.d.l(ivh.b().a());
        this.d.g(avh.a().b());
        this.d.i(this, this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View f() {
        return (View) this.c.get();
    }

    public final rvh g() {
        return this.d;
    }

    public final String h() {
        return this.g;
    }

    public final List i() {
        return this.b.a();
    }

    public final boolean j() {
        return this.e && !this.f;
    }

    public final void k(View view) {
        this.c = new lwh(view);
    }
}
