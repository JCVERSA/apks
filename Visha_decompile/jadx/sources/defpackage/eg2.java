package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div2.DivTypedValue;
import kotlin.NoWhenBranchMatchedException;

public abstract class eg2 {
    public static final void a(View view) {
        y45.j(view, "<this>");
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
        }
    }

    public static final Integer b(DivTypedValue divTypedValue, oj3 oj3Var) {
        y45.j(divTypedValue, "<this>");
        y45.j(oj3Var, "expressionResolver");
        if (divTypedValue instanceof DivTypedValue.c) {
            return (Integer) ((DivTypedValue.c) divTypedValue).c().a.b(oj3Var);
        }
        return null;
    }

    public static final Double c(DivTypedValue divTypedValue, oj3 oj3Var) {
        y45.j(divTypedValue, "<this>");
        y45.j(oj3Var, "expressionResolver");
        if (divTypedValue instanceof DivTypedValue.f) {
            return Double.valueOf(((Number) ((DivTypedValue.f) divTypedValue).c().a.b(oj3Var)).longValue());
        }
        if (divTypedValue instanceof DivTypedValue.g) {
            return (Double) ((DivTypedValue.g) divTypedValue).c().a.b(oj3Var);
        }
        return null;
    }

    public static final Object d(DivTypedValue divTypedValue, oj3 oj3Var) {
        y45.j(divTypedValue, "<this>");
        y45.j(oj3Var, "expressionResolver");
        if (divTypedValue instanceof DivTypedValue.f) {
            return ((DivTypedValue.f) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.h) {
            return ((DivTypedValue.h) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.b) {
            return ((DivTypedValue.b) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.c) {
            return ((DivTypedValue.c) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.g) {
            return ((DivTypedValue.g) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.i) {
            return ((DivTypedValue.i) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.a) {
            return ((DivTypedValue.a) divTypedValue).c().a.b(oj3Var);
        }
        if (divTypedValue instanceof DivTypedValue.e) {
            return ((DivTypedValue.e) divTypedValue).c().a.b(oj3Var);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final void e(Div2View div2View, Throwable th) {
        y45.j(div2View, "<this>");
        y45.j(th, "throwable");
        div2View.getViewComponent().a().a(div2View.getDataTag(), div2View.getDivData()).e(th);
    }

    public static final void f(Div2View div2View, Throwable th) {
        y45.j(div2View, "<this>");
        y45.j(th, "throwable");
        div2View.getViewComponent().a().a(div2View.getDataTag(), div2View.getDivData()).f(th);
    }

    public static final Long g(DivTypedValue divTypedValue, oj3 oj3Var) {
        y45.j(divTypedValue, "<this>");
        y45.j(oj3Var, "expressionResolver");
        if (divTypedValue instanceof DivTypedValue.f) {
            return (Long) ((DivTypedValue.f) divTypedValue).c().a.b(oj3Var);
        }
        return null;
    }

    public static final void h(DivInputView divInputView) {
        y45.j(divInputView, "<this>");
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(divInputView.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(divInputView, 1);
        }
    }
}
