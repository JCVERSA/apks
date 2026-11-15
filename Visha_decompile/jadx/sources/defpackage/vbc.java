package defpackage;

import com.lzy.okgo.model.Progress;
import com.yandex.div2.DivData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class vbc {
    public te0 a;
    public final List b;

    public vbc() {
        ei2 ei2Var = ei2.b;
        y45.i(ei2Var, "INVALID");
        this.a = new te0(ei2Var, null);
        this.b = new ArrayList();
    }

    public final void a(e74 e74Var) {
        y45.j(e74Var, "observer");
        e74Var.invoke(this.a);
        this.b.add(e74Var);
    }

    public final void b(ei2 ei2Var, DivData divData) {
        y45.j(ei2Var, Progress.TAG);
        if (y45.e(ei2Var, this.a.b()) && this.a.a() == divData) {
            return;
        }
        this.a = new te0(ei2Var, divData);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((e74) it.next()).invoke(this.a);
        }
    }
}
