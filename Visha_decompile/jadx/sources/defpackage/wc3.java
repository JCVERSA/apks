package defpackage;

import com.yandex.div2.DivData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public class wc3 {
    public final Set a = new LinkedHashSet();
    public final List b = new ArrayList();
    public List c = y71.k();
    public List d = new ArrayList();
    public List e = new ArrayList();
    public boolean f = true;

    public static final void i(wc3 wc3Var, s74 s74Var) {
        y45.j(wc3Var, "this$0");
        y45.j(s74Var, "$observer");
        wc3Var.a.remove(s74Var);
    }

    public void b(DivData divData) {
        List listK;
        if (divData == null || (listK = divData.h) == null) {
            listK = y71.k();
        }
        this.c = listK;
        g();
    }

    public void c() {
        this.d.clear();
        this.b.clear();
        g();
    }

    public Iterator d() {
        return this.d.listIterator();
    }

    public void e(Throwable th) {
        y45.j(th, "e");
        this.b.add(th);
        g();
    }

    public void f(Throwable th) {
        y45.j(th, "warning");
        this.d.add(th);
        g();
    }

    public final void g() {
        this.f = false;
        if (this.a.isEmpty()) {
            return;
        }
        j();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((s74) it.next()).invoke(this.e, this.d);
        }
    }

    public qc2 h(final s74 s74Var) {
        y45.j(s74Var, "observer");
        this.a.add(s74Var);
        j();
        s74Var.invoke(this.e, this.d);
        return new qc2() {
            @Override
            public final void close() {
                wc3.i(this.b, s74Var);
            }
        };
    }

    public final void j() {
        if (this.f) {
            return;
        }
        this.e.clear();
        this.e.addAll(this.c);
        this.e.addAll(this.b);
        this.f = true;
    }
}
