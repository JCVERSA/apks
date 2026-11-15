package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public abstract class p4i implements v9i {
    public final boolean a;
    public final ArrayList b = new ArrayList(1);
    public int c;
    public cfi d;

    public p4i(boolean z) {
        this.a = z;
    }

    @Override
    public final void c(ixi ixiVar) {
        ixiVar.getClass();
        ArrayList arrayList = this.b;
        if (arrayList.contains(ixiVar)) {
            return;
        }
        arrayList.add(ixiVar);
        this.c++;
    }

    public final void k() {
        cfi cfiVar = this.d;
        int i = kfh.a;
        for (int i2 = 0; i2 < this.c; i2++) {
            ((ixi) this.b.get(i2)).q(this, cfiVar, this.a);
        }
        this.d = null;
    }

    public final void l(cfi cfiVar) {
        for (int i = 0; i < this.c; i++) {
            ((ixi) this.b.get(i)).p(this, cfiVar, this.a);
        }
    }

    public final void m(cfi cfiVar) {
        this.d = cfiVar;
        for (int i = 0; i < this.c; i++) {
            ((ixi) this.b.get(i)).j(this, cfiVar, this.a);
        }
    }

    @Override
    public Map zze() {
        return Collections.emptyMap();
    }

    public final void zzg(int i) {
        cfi cfiVar = this.d;
        int i2 = kfh.a;
        for (int i3 = 0; i3 < this.c; i3++) {
            ((ixi) this.b.get(i3)).f(this, cfiVar, this.a, i);
        }
    }
}
