package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class i8d {
    public static i8d c = new i8d();
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();

    public static i8d e() {
        return c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.b);
    }

    public void b(e3d e3dVar) {
        this.a.add(e3dVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.a);
    }

    public void d(e3d e3dVar) {
        boolean zG = g();
        this.a.remove(e3dVar);
        this.b.remove(e3dVar);
        if (!zG || g()) {
            return;
        }
        wid.d().f();
    }

    public void f(e3d e3dVar) {
        boolean zG = g();
        this.b.add(e3dVar);
        if (zG) {
            return;
        }
        wid.d().e();
    }

    public boolean g() {
        return this.b.size() > 0;
    }
}
