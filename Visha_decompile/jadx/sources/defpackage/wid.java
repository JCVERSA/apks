package defpackage;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.hisavana.walking.TreeWalker;
import java.util.Iterator;

public class wid implements r9d.a, g8d {
    public static wid f;
    public float a = 0.0f;
    public final hbd b;
    public final t6d c;
    public q9d d;
    public i8d e;

    public wid(hbd hbdVar, t6d t6dVar) {
        this.b = hbdVar;
        this.c = t6dVar;
    }

    public static wid d() {
        if (f == null) {
            f = new wid(new hbd(), new t6d());
        }
        return f;
    }

    public final i8d a() {
        if (this.e == null) {
            this.e = i8d.e();
        }
        return this.e;
    }

    public void b(Context context) {
        this.d = this.b.a(new Handler(), context, this.c.a(), this);
    }

    public float c() {
        return this.a;
    }

    public void e() {
        u6d.k().b(this);
        u6d.k().i();
        TreeWalker.p().q();
        this.d.d();
    }

    public void f() {
        TreeWalker.p().s();
        u6d.k().j();
        this.d.e();
    }

    @Override
    public void a(float f2) {
        this.a = f2;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((e3d) it.next()).l().b(f2);
        }
    }

    @Override
    public void a(boolean z) {
        TreeWalker treeWalkerP = TreeWalker.p();
        if (z) {
            treeWalkerP.q();
        } else {
            treeWalkerP.o();
        }
    }
}
