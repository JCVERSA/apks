package defpackage;

import com.google.android.exoplayer2.upstream.a;
import com.google.android.exoplayer2.upstream.b;
import java.util.ArrayList;

public abstract class u90 implements a {
    public final boolean a;
    public final ArrayList b = new ArrayList(1);
    public int c;
    public b d;

    public u90(boolean z) {
        this.a = z;
    }

    @Override
    public final void b(u5b u5bVar) {
        zi.e(u5bVar);
        if (this.b.contains(u5bVar)) {
            return;
        }
        this.b.add(u5bVar);
        this.c++;
    }

    public final void c(int i) {
        b bVar = (b) blb.j(this.d);
        for (int i2 = 0; i2 < this.c; i2++) {
            ((u5b) this.b.get(i2)).b(this, bVar, this.a, i);
        }
    }

    public final void d() {
        b bVar = (b) blb.j(this.d);
        for (int i = 0; i < this.c; i++) {
            ((u5b) this.b.get(i)).a(this, bVar, this.a);
        }
        this.d = null;
    }

    public final void e(b bVar) {
        for (int i = 0; i < this.c; i++) {
            ((u5b) this.b.get(i)).f(this, bVar, this.a);
        }
    }

    public final void f(b bVar) {
        this.d = bVar;
        for (int i = 0; i < this.c; i++) {
            ((u5b) this.b.get(i)).c(this, bVar, this.a);
        }
    }
}
