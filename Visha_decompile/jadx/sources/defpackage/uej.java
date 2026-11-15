package defpackage;

import com.google.android.gms.internal.ads.l7;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzfwz;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class uej {
    public final y2f a;
    public zzfww b = zzfww.zzn();
    public zzfwz c = zzfwz.zzd();
    public bnj d;
    public bnj e;
    public bnj f;

    public uej(y2f y2fVar) {
        this.a = y2fVar;
    }

    public static bnj j(l1f l1fVar, zzfww zzfwwVar, bnj bnjVar, y2f y2fVar) {
        w4f w4fVarZzo = l1fVar.zzo();
        int iZzf = l1fVar.zzf();
        Object objF = w4fVarZzo.o() ? null : w4fVarZzo.f(iZzf);
        int iC = (l1fVar.zzx() || w4fVarZzo.o()) ? -1 : w4fVarZzo.d(iZzf, y2fVar, false).c(kfh.N(l1fVar.zzl()));
        for (int i = 0; i < zzfwwVar.size(); i++) {
            bnj bnjVar2 = (bnj) zzfwwVar.get(i);
            if (m(bnjVar2, objF, l1fVar.zzx(), l1fVar.zzc(), l1fVar.zzd(), iC)) {
                return bnjVar2;
            }
        }
        if (zzfwwVar.isEmpty() && bnjVar != null) {
            if (m(bnjVar, objF, l1fVar.zzx(), l1fVar.zzc(), l1fVar.zzd(), iC)) {
                return bnjVar;
            }
        }
        return null;
    }

    public static boolean m(bnj bnjVar, Object obj, boolean z, int i, int i2, int i3) {
        if (!bnjVar.a.equals(obj)) {
            return false;
        }
        if (z) {
            if (bnjVar.b != i || bnjVar.c != i2) {
                return false;
            }
        } else if (bnjVar.b != -1 || bnjVar.e != i3) {
            return false;
        }
        return true;
    }

    public final w4f a(bnj bnjVar) {
        return (w4f) this.c.get(bnjVar);
    }

    public final bnj b() {
        return this.d;
    }

    public final bnj c() {
        Object next;
        Object obj;
        if (this.b.isEmpty()) {
            return null;
        }
        zzfww zzfwwVar = this.b;
        if (zzfwwVar == null) {
            Iterator<E> it = zzfwwVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        } else {
            if (zzfwwVar.isEmpty()) {
                throw new NoSuchElementException();
            }
            obj = zzfwwVar.get(zzfwwVar.size() - 1);
        }
        return (bnj) obj;
    }

    public final bnj d() {
        return this.e;
    }

    public final bnj e() {
        return this.f;
    }

    public final void g(l1f l1fVar) {
        this.d = j(l1fVar, this.b, this.e, this.a);
    }

    public final void h(List list, bnj bnjVar, l1f l1fVar) {
        this.b = zzfww.zzl(list);
        if (!list.isEmpty()) {
            this.e = (bnj) list.get(0);
            bnjVar.getClass();
            this.f = bnjVar;
        }
        if (this.d == null) {
            this.d = j(l1fVar, this.b, this.e, this.a);
        }
        l(l1fVar.zzo());
    }

    public final void i(l1f l1fVar) {
        this.d = j(l1fVar, this.b, this.e, this.a);
        l(l1fVar.zzo());
    }

    public final void k(l7 l7Var, bnj bnjVar, w4f w4fVar) {
        if (bnjVar == null) {
            return;
        }
        if (w4fVar.a(bnjVar.a) != -1) {
            l7Var.a(bnjVar, w4fVar);
            return;
        }
        w4f w4fVar2 = (w4f) this.c.get(bnjVar);
        if (w4fVar2 != null) {
            l7Var.a(bnjVar, w4fVar2);
        }
    }

    public final void l(w4f w4fVar) {
        l7 l7Var = new l7();
        if (this.b.isEmpty()) {
            k(l7Var, this.e, w4fVar);
            if (!Objects.equals(this.f, this.e)) {
                k(l7Var, this.f, w4fVar);
            }
            if (!Objects.equals(this.d, this.e) && !Objects.equals(this.d, this.f)) {
                k(l7Var, this.d, w4fVar);
            }
        } else {
            for (int i = 0; i < this.b.size(); i++) {
                k(l7Var, (bnj) this.b.get(i), w4fVar);
            }
            if (!this.b.contains(this.d)) {
                k(l7Var, this.d, w4fVar);
            }
        }
        this.c = l7Var.c();
    }
}
