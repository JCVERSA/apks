package freemarker.core;

import defpackage.nga;
import defpackage.zfa;

public class c0 implements nga {
    public final int b;
    public final int c;
    public final BuiltInsForSequences.a.b d;

    public c0(BuiltInsForSequences.a.b bVar, int i) {
        this.d = bVar;
        this.c = i;
        this.b = i * bVar.c;
    }

    @Override
    public zfa get(int i) {
        int i2 = this.b + i;
        if (i2 < this.d.b.size()) {
            return this.d.b.get(i2);
        }
        if (i2 < this.d.e * this.d.c) {
            return this.d.d;
        }
        return null;
    }

    @Override
    public int size() {
        return (this.d.d != null || this.c + 1 < this.d.e) ? this.d.c : this.d.b.size() - this.b;
    }
}
