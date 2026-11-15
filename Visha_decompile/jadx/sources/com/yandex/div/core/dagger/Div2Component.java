package com.yandex.div.core.dagger;

import android.view.ContextThemeWrapper;
import com.yandex.div.core.d;
import com.yandex.div.core.expression.a;
import com.yandex.div.core.expression.storedvalues.StoredValuesController;
import com.yandex.div.core.expression.variables.DivVariableController;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.DivVisibilityActionDispatcher;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository;
import defpackage.bi2;
import defpackage.cf2;
import defpackage.co2;
import defpackage.ct2;
import defpackage.dd2;
import defpackage.gd2;
import defpackage.iu2;
import defpackage.jh2;
import defpackage.mq2;
import defpackage.oi2;
import defpackage.r08;
import defpackage.rg2;
import defpackage.rga;
import defpackage.rq4;
import defpackage.sh2;
import defpackage.sq2;
import defpackage.vf2;
import defpackage.wh2;
import defpackage.xc3;
import defpackage.xr8;
import defpackage.ze0;

public interface Div2Component {

    public interface Builder {
        Builder a(jh2 jh2Var);

        Builder b(DivVariableController divVariableController);

        Div2Component build();

        Builder c(int i);

        Builder d(sh2 sh2Var);

        Builder e(ContextThemeWrapper contextThemeWrapper);
    }

    sq2 A();

    bi2 B();

    rga C();

    co2 D();

    boolean E();

    rg2 F();

    cf2 G();

    DivVisibilityActionTracker H();

    xc3 a();

    iu2 b();

    DivVisibilityActionDispatcher c();

    sh2 d();

    DivViewCreator e();

    mq2 f();

    gd2 g();

    oi2 h();

    wh2 i();

    StoredValuesController j();

    rq4 k();

    ze0 l();

    vf2 m();

    DivActionBinder n();

    r08 o();

    a p();

    d q();

    Div2ViewComponent.Builder r();

    ViewPreCreationProfileRepository s();

    DivTooltipController t();

    boolean u();

    dd2 v();

    boolean w();

    ct2 x();

    DivVariableController y();

    xr8 z();
}
