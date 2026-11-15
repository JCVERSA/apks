package defpackage;

import android.util.Pair;
import defpackage.bnj;
import java.io.IOException;
import java.util.List;

public final class d9j implements snj, kjj {
    public final h9j a;
    public final m9j b;

    public d9j(m9j m9jVar, h9j h9jVar) {
        this.b = m9jVar;
        this.a = h9jVar;
    }

    @Override
    public final void G(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar, final int i2) {
        final Pair pairA = a(0, bnjVar);
        if (pairA != null) {
            this.b.i.f(new Runnable() {
                @Override
                public final void run() {
                    Pair pair = pairA;
                    this.zza.b.h.G(((Integer) pair.first).intValue(), (bnj) pair.second, smjVar, xmjVar, i2);
                }
            });
        }
    }

    @Override
    public final void L(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar) {
        final Pair pairA = a(0, bnjVar);
        if (pairA != null) {
            this.b.i.f(new Runnable() {
                @Override
                public final void run() {
                    Pair pair = pairA;
                    this.zza.b.h.L(((Integer) pair.first).intValue(), (bnj) pair.second, smjVar, xmjVar);
                }
            });
        }
    }

    @Override
    public final void O(int i, bnj bnjVar, final xmj xmjVar) {
        final Pair pairA = a(0, bnjVar);
        if (pairA != null) {
            this.b.i.f(new Runnable() {
                @Override
                public final void run() {
                    Pair pair = pairA;
                    this.zza.b.h.O(((Integer) pair.first).intValue(), (bnj) pair.second, xmjVar);
                }
            });
        }
    }

    @Override
    public final void Q(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar) {
        final Pair pairA = a(0, bnjVar);
        if (pairA != null) {
            this.b.i.f(new Runnable() {
                @Override
                public final void run() {
                    Pair pair = pairA;
                    this.zza.b.h.Q(((Integer) pair.first).intValue(), (bnj) pair.second, smjVar, xmjVar);
                }
            });
        }
    }

    public final Pair a(int i, bnj bnjVar) {
        bnj bnjVarA;
        bnj bnjVar2 = null;
        if (bnjVar != null) {
            h9j h9jVar = this.a;
            int i2 = 0;
            while (true) {
                List list = h9jVar.c;
                if (i2 >= list.size()) {
                    bnjVarA = null;
                    break;
                }
                if (((bnj) list.get(i2)).d == bnjVar.d) {
                    Object obj = bnjVar.a;
                    Object obj2 = h9jVar.b;
                    int i3 = v9j.k;
                    bnjVarA = bnjVar.a(Pair.create(obj2, obj));
                    break;
                }
                i2++;
            }
            if (bnjVarA == null) {
                return null;
            }
            bnjVar2 = bnjVarA;
        }
        return Pair.create(Integer.valueOf(this.a.d), bnjVar2);
    }

    @Override
    public final void t(int i, bnj bnjVar, final smj smjVar, final xmj xmjVar, final IOException iOException, final boolean z) {
        final Pair pairA = a(0, bnjVar);
        if (pairA != null) {
            this.b.i.f(new Runnable() {
                @Override
                public final void run() {
                    Pair pair = pairA;
                    this.zza.b.h.t(((Integer) pair.first).intValue(), (bnj) pair.second, smjVar, xmjVar, iOException, z);
                }
            });
        }
    }
}
