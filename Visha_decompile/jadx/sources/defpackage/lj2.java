package defpackage;

import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div2.DivBorder;
import java.util.List;

public class lj2 {
    public final DivActionBinder a;

    public final class a implements View.OnFocusChangeListener {
        public final com.yandex.div.core.view2.a b;
        public DivBorder c;
        public DivBorder d;
        public List e;
        public List f;
        public final lj2 g;

        public a(lj2 lj2Var, com.yandex.div.core.view2.a aVar) {
            y45.j(aVar, "context");
            this.g = lj2Var;
            this.b = aVar;
        }

        public final void a(View view, DivBorder divBorder) {
            this.g.c(view, this.b, divBorder);
        }

        public final List b() {
            return this.f;
        }

        public final DivBorder c() {
            return this.d;
        }

        public final List d() {
            return this.e;
        }

        public final DivBorder e() {
            return this.c;
        }

        public final void f(List list, View view, String str) {
            this.g.a.J(this.b, view, list, str);
        }

        public final void g(List list, List list2) {
            this.e = list;
            this.f = list2;
        }

        public final void h(DivBorder divBorder, DivBorder divBorder2) {
            this.c = divBorder;
            this.d = divBorder2;
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            y45.j(view, "v");
            if (z) {
                a(view, this.c);
                List list = this.e;
                if (list != null) {
                    f(list, view, "focus");
                    return;
                }
                return;
            }
            if (this.c != null) {
                a(view, this.d);
            }
            List list2 = this.f;
            if (list2 != null) {
                f(list2, view, "blur");
            }
        }
    }

    public lj2(DivActionBinder divActionBinder) {
        y45.j(divActionBinder, "actionBinder");
        this.a = divActionBinder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(View view, com.yandex.div.core.view2.a aVar, DivBorder divBorder) {
        if (view instanceof vg2) {
            ((vg2) view).setBorder(aVar, divBorder, view);
            return;
        }
        float dimension = 0.0f;
        if (divBorder != null && !BaseDivViewExtensionsKt.j0(divBorder) && ((Boolean) divBorder.c.b(aVar.b())).booleanValue() && divBorder.d == null) {
            dimension = view.getResources().getDimension(R.dimen.div_shadow_elevation);
        }
        view.setElevation(dimension);
    }

    public void d(View view, com.yandex.div.core.view2.a aVar, DivBorder divBorder, DivBorder divBorder2) {
        y45.j(view, "view");
        y45.j(aVar, "context");
        c(view, aVar, (divBorder == null || BaseDivViewExtensionsKt.j0(divBorder) || !view.isFocused()) ? divBorder2 : divBorder);
        View.OnFocusChangeListener onFocusChangeListener = view.getOnFocusChangeListener();
        a aVar2 = onFocusChangeListener instanceof a ? (a) onFocusChangeListener : null;
        if (aVar2 == null && BaseDivViewExtensionsKt.j0(divBorder)) {
            return;
        }
        if (aVar2 != null && aVar2.d() == null && aVar2.b() == null && BaseDivViewExtensionsKt.j0(divBorder)) {
            view.setOnFocusChangeListener(null);
            return;
        }
        a aVar3 = new a(this, aVar);
        aVar3.h(divBorder, divBorder2);
        if (aVar2 != null) {
            aVar3.g(aVar2.d(), aVar2.b());
        }
        view.setOnFocusChangeListener(aVar3);
    }

    public void e(View view, com.yandex.div.core.view2.a aVar, List list, List list2) {
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(aVar, "context");
        View.OnFocusChangeListener onFocusChangeListener = view.getOnFocusChangeListener();
        a aVar2 = onFocusChangeListener instanceof a ? (a) onFocusChangeListener : null;
        if (aVar2 == null && w71.a(list, list2)) {
            return;
        }
        if (aVar2 != null && aVar2.e() == null && w71.a(list, list2)) {
            view.setOnFocusChangeListener(null);
            return;
        }
        a aVar3 = new a(this, aVar);
        if (aVar2 != null) {
            aVar3.h(aVar2.e(), aVar2.c());
        }
        aVar3.g(list, list2);
        view.setOnFocusChangeListener(aVar3);
    }
}
