package com.yandex.div.core.view2;

import android.view.View;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivDisappearAction;
import com.yandex.div2.DivVisibilityAction;
import defpackage.c74;
import defpackage.ce2;
import defpackage.cf2;
import defpackage.d81;
import defpackage.e74;
import defpackage.ei2;
import defpackage.gd2;
import defpackage.jd1;
import defpackage.ne5;
import defpackage.oj3;
import defpackage.ubc;
import defpackage.w71;
import defpackage.wp2;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class DivVisibilityActionDispatcher {
    public static final a g = new a(null);
    public final gd2 a;
    public final List b;
    public final cf2 c;
    public final ce2 d;
    public final Map e;
    public final Map f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivVisibilityActionDispatcher(gd2 gd2Var, List list, cf2 cf2Var, ce2 ce2Var) {
        y45.j(gd2Var, "logger");
        y45.j(list, "visibilityListeners");
        y45.j(cf2Var, "divActionHandler");
        y45.j(ce2Var, "divActionBeaconSender");
        this.a = gd2Var;
        this.b = list;
        this.c = cf2Var;
        this.d = ce2Var;
        this.e = w71.b();
        this.f = w71.b();
    }

    public final Map a(wp2 wp2Var) {
        return wp2Var instanceof DivVisibilityAction ? this.e : this.f;
    }

    public void b(Div2View div2View, oj3 oj3Var, View view, wp2 wp2Var) {
        y45.j(div2View, "scope");
        y45.j(oj3Var, "resolver");
        y45.j(view, "view");
        y45.j(wp2Var, "action");
        CompositeLogId compositeLogIdA = jd1.a(div2View, (String) wp2Var.b().b(oj3Var));
        Map mapA = a(wp2Var);
        Object obj = mapA.get(compositeLogIdA);
        if (obj == null) {
            obj = 0;
            mapA.put(compositeLogIdA, obj);
        }
        int iIntValue = ((Number) obj).intValue();
        ne5 ne5Var = ne5.a;
        Severity severity = Severity.INFO;
        if (ne5Var.a(severity)) {
            ne5Var.b(4, "DivVisibilityActionDispatcher", "visibility action dispatched: id=" + compositeLogIdA + ", counter=" + iIntValue);
        }
        long jLongValue = ((Number) wp2Var.c().b(oj3Var)).longValue();
        if (jLongValue == 0 || iIntValue < jLongValue) {
            if (this.c.getUseActionUid()) {
                String string = UUID.randomUUID().toString();
                y45.i(string, "randomUUID().toString()");
                cf2 actionHandler = div2View.getActionHandler();
                if (!(actionHandler != null ? actionHandler.handleAction(wp2Var, div2View, oj3Var, string) : false) && !this.c.handleAction(wp2Var, div2View, oj3Var, string)) {
                    f(div2View, oj3Var, view, wp2Var, string);
                }
            } else {
                cf2 actionHandler2 = div2View.getActionHandler();
                if (!(actionHandler2 != null ? actionHandler2.handleAction(wp2Var, div2View, oj3Var) : false) && !this.c.handleAction(wp2Var, div2View, oj3Var)) {
                    e(div2View, oj3Var, view, wp2Var);
                }
            }
            a(wp2Var).put(compositeLogIdA, Integer.valueOf(iIntValue + 1));
            if (ne5Var.a(severity)) {
                ne5Var.b(4, "DivVisibilityActionDispatcher", "visibility action logged: " + compositeLogIdA);
            }
        }
    }

    public void c(final Div2View div2View, final oj3 oj3Var, final View view, final wp2[] wp2VarArr) {
        y45.j(div2View, "scope");
        y45.j(oj3Var, "resolver");
        y45.j(view, "view");
        y45.j(wp2VarArr, "actions");
        div2View.bulkActions$div_release(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m147invoke();
                return zfb.a;
            }

            public final void m147invoke() {
                wp2[] wp2VarArr2 = wp2VarArr;
                DivVisibilityActionDispatcher divVisibilityActionDispatcher = this;
                Div2View div2View2 = div2View;
                oj3 oj3Var2 = oj3Var;
                View view2 = view;
                for (wp2 wp2Var : wp2VarArr2) {
                    divVisibilityActionDispatcher.b(div2View2, oj3Var2, view2, wp2Var);
                }
            }
        });
    }

    public void d(Map map) {
        y45.j(map, "visibleViews");
        Iterator it = this.b.iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
    }

    public final void e(Div2View div2View, oj3 oj3Var, View view, wp2 wp2Var) {
        if (wp2Var instanceof DivVisibilityAction) {
            this.a.m(div2View, oj3Var, view, (DivVisibilityAction) wp2Var);
        } else {
            gd2 gd2Var = this.a;
            y45.h(wp2Var, "null cannot be cast to non-null type com.yandex.div2.DivDisappearAction");
            gd2Var.n(div2View, oj3Var, view, (DivDisappearAction) wp2Var);
        }
        this.d.d(wp2Var, oj3Var);
    }

    public final void f(Div2View div2View, oj3 oj3Var, View view, wp2 wp2Var, String str) {
        if (wp2Var instanceof DivVisibilityAction) {
            this.a.g(div2View, oj3Var, view, (DivVisibilityAction) wp2Var, str);
        } else {
            gd2 gd2Var = this.a;
            y45.h(wp2Var, "null cannot be cast to non-null type com.yandex.div2.DivDisappearAction");
            gd2Var.f(div2View, oj3Var, view, (DivDisappearAction) wp2Var, str);
        }
        this.d.d(wp2Var, oj3Var);
    }

    public void g(List list) {
        y45.j(list, "tags");
        if (list.isEmpty()) {
            this.e.clear();
            this.f.clear();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final ei2 ei2Var = (ei2) it.next();
            d81.H(this.e.keySet(), new e74() {
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(CompositeLogId compositeLogId) {
                    y45.j(compositeLogId, "compositeLogId");
                    return Boolean.valueOf(y45.e(compositeLogId.d(), ei2Var.a()));
                }
            });
            d81.H(this.f.keySet(), new e74() {
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(CompositeLogId compositeLogId) {
                    y45.j(compositeLogId, "compositeLogId");
                    return Boolean.valueOf(y45.e(compositeLogId.d(), ei2Var.a()));
                }
            });
        }
    }
}
