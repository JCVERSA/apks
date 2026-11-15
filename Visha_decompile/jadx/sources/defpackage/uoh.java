package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.util.LinkedList;

public final class uoh {
    public final int b;
    public final int c;
    public final LinkedList a = new LinkedList();
    public final sph d = new sph();

    public uoh(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        return this.d.a();
    }

    public final int b() {
        i();
        return this.a.size();
    }

    public final long c() {
        return this.d.b();
    }

    public final long d() {
        return this.d.c();
    }

    public final bph e() {
        sph sphVar = this.d;
        sphVar.f();
        i();
        LinkedList linkedList = this.a;
        if (linkedList.isEmpty()) {
            return null;
        }
        bph bphVar = (bph) linkedList.remove();
        if (bphVar != null) {
            sphVar.h();
        }
        return bphVar;
    }

    public final pph f() {
        return this.d.d();
    }

    public final String g() {
        return this.d.e();
    }

    public final boolean h(bph bphVar) {
        this.d.f();
        i();
        LinkedList linkedList = this.a;
        if (linkedList.size() == this.b) {
            return false;
        }
        linkedList.add(bphVar);
        return true;
    }

    public final void i() {
        while (true) {
            LinkedList linkedList = this.a;
            if (linkedList.isEmpty()) {
                return;
            }
            if (zzv.zzC().currentTimeMillis() - ((bph) linkedList.getFirst()).d < this.c) {
                return;
            }
            this.d.g();
            linkedList.remove();
        }
    }
}
