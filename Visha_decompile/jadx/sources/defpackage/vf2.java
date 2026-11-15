package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivActionTyped;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class vf2 {
    public static final a b = new a(null);
    public final Set a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public vf2(Set set) {
        y45.j(set, "handlers");
        this.a = set;
    }

    public final boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        Object next;
        y45.j(divActionTyped, "action");
        y45.j(div2View, "div2View");
        y45.j(oj3Var, "resolver");
        Iterator it = this.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((uf2) next).a(str, divActionTyped, div2View, oj3Var));
        boolean z = next != null;
        if (!z) {
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.DEBUG)) {
                ne5Var.b(3, "DivTypedActionHandlerCombiner", "Unexpected " + divActionTyped.getClass() + " was not handled");
            }
        }
        return z;
    }
}
