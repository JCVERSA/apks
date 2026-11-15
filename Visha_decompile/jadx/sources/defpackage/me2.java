package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class me2 {
    public static final void g(View view, Expression expression, a15 a15Var, oj3 oj3Var) {
        if (((Boolean) expression.b(oj3Var)).booleanValue()) {
            BaseDivViewExtensionsKt.G(view, a15Var);
            view.requestFocus();
        }
    }

    public static final boolean h(View view) {
        Object tag = view.getTag(R.id.div_penetrating_longtap_tag);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(View view, Expression expression, oj3 oj3Var, e74 e74Var) {
        if (view instanceof qj3) {
            ((qj3) view).addSubscription(expression.e(oj3Var, e74Var));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void j(View view, List list, oj3 oj3Var, e74 e74Var) {
        if ((view instanceof qj3) && list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((qj3) view).addSubscription(((DivAction) it.next()).b.e(oj3Var, e74Var));
            }
        }
    }

    public static final List k(List list, oj3 oj3Var) {
        if (list == null) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) ((DivAction) obj).b.b(oj3Var)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final boolean l(View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return false;
        }
        return h(viewGroup) || l(viewGroup);
    }

    public static final void m(View view, Boolean bool) {
        view.setTag(R.id.div_penetrating_longtap_tag, bool);
    }

    public static void n(View view, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = Boolean.TRUE;
        }
        m(view, bool);
    }
}
