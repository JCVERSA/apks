package defpackage;

import java.util.ArrayList;
import java.util.List;

public final class h9j implements p8j {
    public final wmj a;
    public int d;
    public boolean e;
    public final List c = new ArrayList();
    public final Object b = new Object();

    public h9j(knj knjVar, boolean z) {
        this.a = new wmj(knjVar, z);
    }

    public final void a(int i) {
        this.d = i;
        this.e = false;
        this.c.clear();
    }

    @Override
    public final w4f zza() {
        return this.a.F();
    }

    @Override
    public final Object zzb() {
        return this.b;
    }
}
