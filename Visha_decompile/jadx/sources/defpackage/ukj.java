package defpackage;

import android.util.SparseBooleanArray;

public final class ukj {
    public final SparseBooleanArray a = new SparseBooleanArray();
    public boolean b;

    public final ukj a(int i) {
        n7g.f(!this.b);
        this.a.append(i, true);
        return this;
    }

    public final enj b() {
        n7g.f(!this.b);
        this.b = true;
        return new enj(this.a, null);
    }
}
